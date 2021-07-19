open Ast

module Vs = Set.Make(String);;

module FreeVariables = struct
  open Variables 
  
  let vars_atom ?(fv=Vs.empty) ?(bv=Vs.empty) e = 
    let open Atom in
    let rec aux acc = function
    | Var x -> 
        if Vs.mem x bv then acc 
        else Vs.add x acc
    | Const _ -> Vs.empty
    | Prim (_,es) ->
        List.fold_left aux acc es
    in
    aux fv e

  let vars_inst ?(fv=Vs.empty) ?(bv=Vs.empty) s =
    match s with
    | Inst.Assign bs ->  
    List.fold_left 
      (fun fv ((x,o),e) -> 
         if Vs.mem x bv then failwith "cannot assign a local variable"
         else let fv = match o with 
                       | None -> Vs.empty 
                       | Some a -> vars_atom ~fv ~bv a in
              vars_atom ~fv ~bv e) fv bs

  let rec vars_automaton ?(fv=Vs.empty) ?(bv=Vs.empty) a =
    let open PSM in
    match a with
    | State (_,es) -> 
       List.fold_left 
        (fun fv e -> vars_atom ~fv ~bv e) fv es
    | Seq(s,a) -> 
       let fv = vars_inst ~fv ~bv s in
       vars_automaton ~fv ~bv a 
    | LetRec (selects, a) ->
        List.fold_left 
         (fun fv select -> 
            vars_select ~fv ~bv select) fv selects

  and vars_select ?(fv=Vs.empty) ?(bv=Vs.empty) (_,xs,ts) =
    let bv = vs_of_list ~acc:bv xs in
    List.fold_left (fun fv t -> vars_transition ~fv ~bv t) fv ts
  and vars_transition ?(fv=Vs.empty) ?(bv=Vs.empty) (e,a) =
    let fv = vars_atom ~fv ~bv e in
    vars_automaton ~fv ~bv a

end

let substitute theta x =
  List.assoc x theta

let rec c_atom theta a = 
  let open Atom in
  match a with
  | Var x ->
      let x' = substitute theta x in
      Var x'
  | Const _ -> a
  | Prim (c,args) ->
      Prim (c,List.map (c_atom theta) args)

let c_inst theta = function
  | Inst.Assign bs ->
    Inst.Assign
      (List.map (fun ((x,o),a) ->
           let x' = substitute theta x in
           let o' = Option.map (c_atom theta) o in
           let a' = c_atom theta a in
           ((x',o'),a')) bs)

let (===) a1 a2 = mk_binop' Atom.Eq a1 a2
let (=/=) a1 a2 = mk_binop' Atom.Neq a1 a2
let (!!) = mk_var


let (<:=) x e = Inst.Assign([(x,e)])

let rec c_automaton q' d = function
  | CSM.State (q,es) ->
    ([],PSM.State(q,es))
  | CSM.Seq(s,a) ->
    let (p,a') = c_automaton q' d a in
    (p,PSM.Seq(s,a'))
  | CSM.LetRec (selects, a) ->
    let ps,selects' = List.split @@ List.map (c_transition q' d) selects in
    let ps' = List.concat ps in
    let ps,a' = c_automaton q' d a in
    ps'@ps,PSM.LetRec (selects', a')
  | CSM.Return e -> 
    ([],PSM.Seq(Inst.Assign [((d,None),e)], PSM.State (q',[])))
  | CSM.Let ([(x1,a1)],a2) -> 
    let tmp = Gensym.gensym "tmp" in
    let p1,a1' = c_automaton tmp x1 a1 in
    let p2,a2' = c_automaton q' d a2 in
    let p'' = p1@p2 in
    let a'' = PSM.LetRec([(tmp,[],[(mk_bool' true,a2')])],a1') in
    (p'',a'')
  | CSM.Let (bs,a) -> 
    let len = List.length bs in
    let xs,aa = List.split bs in
    let idle = Gensym.gensym "idle" in
    let start = Gensym.gensym "start" in
    let top = Gensym.gensym "top" in
    let wait = Gensym.gensym "wait" in
    let rdy = Gensym.gensym "rdy" in
    let r = Gensym.gensym "r" in
    let q = Gensym.gensym "q" in
    let ps,aa' = List.split @@
      List.mapi (fun i a -> 
          let s = string_of_int i in 
          c_automaton (idle^s) (r^s) a) aa in
    let p,a' =  c_automaton q' d a in
    let a'' =
      PSM.Seq((start,None) <:= mk_bool' true,
              PSM.LetRec
                ([(top,[],[(mk_bool' true,PSM.Seq((start,None) <:= mk_bool' false,
                                                 PSM.State(wait,[])))]);
                  (wait,[],[
                      (let rec aux acc = function
                          | 0 -> acc
                          | n -> aux (mk_binop' Atom.And (!! (rdy^string_of_int (n-1))) acc) (n - 1)
                       in aux (mk_bool' true) len,
                          PSM.Seq
                            (Inst.Assign (List.mapi
                                            (fun i x ->
                                               (x,None),!! (r^string_of_int i)) xs),
                             a'))])],
                 PSM.State(top,[])))
    in
    let aa'' = List.mapi (fun i ai' ->
        let idle_i = idle^string_of_int i in
        let rdy_i = rdy^string_of_int i in
        let wait_i = wait^string_of_int i in
        let q_i = q^string_of_int i in
        PSM.LetRec([(idle_i,[],[(mk_bool' true,
                                 PSM.Seq((rdy_i,None) <:= mk_bool' true,
                                         PSM.State(wait_i,[])))]);
                    (wait_i,[],[(!! start,
                                 PSM.Seq((rdy_i,None) <:= mk_bool' false,
                                         (* let fv = FreeVariables.vars_automaton ai' in *)
                                         let params = [] (* Vs.elements fv *) in
                                         (* y a t'il vraiment besoin de passer des copies des variables libres comme ici ? 
                                            Tout dépend de si on accepte les assignation (Seq) "sous" un [let and] *)
                                         PSM.LetRec
                                           ([(q_i,params,
                                              [(mk_bool' true,ai')])],
                                            PSM.State(q_i,List.map (!!) params))))])],
                   PSM.State(idle_i,[]))) aa'
    in
    let pi'' = p @ List.concat ps @ aa'' in
    (pi'',a'')

and c_transition q' d (q,xs,ts) =
  match ts with
  | [] -> ([],(q,xs,[]))
  | _ ->
    let ps,ts' = List.split @@
      List.map (fun (e,a) -> 
          let p,a' = c_automaton q' d a in
          (p,(e,a'))) ts in
    let ps' = List.concat ps in
    ps',(q,xs,ts')


let c_prog a =
  let idle = "idle" in
  let start = "start" in
  let rdy = "rdy" in
  let d = "result" in
  let p,a' = c_automaton idle d a in
  let a'' = PSM.LetRec([(idle,[],[(!! start =/= mk_std_logic' One, 
                  PSM.Seq((rdy,None) <:= mk_std_logic' One, PSM.State(idle,[])));
                  (!! start === mk_std_logic' One, 
                  PSM.Seq((rdy,None) <:= mk_std_logic' Zero, a'))])],PSM.State(idle,[])) in
  p@[a'']
