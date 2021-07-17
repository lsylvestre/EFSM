open Ast

module Vs = Set.Make(String);;

module FreeVariables = struct
  open Variables 
  
  let vars_atom ?(fv=Vs.empty) ?(bv=Vs.empty) e = 
    let rec aux acc = function
    | Atom.Var x -> 
        if Vs.mem x bv then acc 
        else Vs.add x acc
    | Atom.Prim c ->
      match c with
      | Std_logic _ 
      | Bool _ 
      | Int _ -> acc
      | Binop (_,e1,e2) -> 
         let acc' = aux acc e1 in
         aux acc' e2
      | Unop (_,e) -> 
         aux acc e
    in
    aux fv e

  let vars_inst ?(fv=Vs.empty) ?(bv=Vs.empty) s =
    match s with
    | Inst.Assign bs ->  
    List.fold_left 
      (fun fv (x,e) -> 
         if Vs.mem x bv then failwith "cannot assign a local variable"
         else vars_atom ~fv ~bv e) fv bs

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

let rec c_atom theta = function
  | Atom.Var x ->
    let x' = substitute theta x in
    Atom.Var x'
  | Atom.Prim c ->
    let c' =
      match c with
      | Std_logic _ | Bool _ | Int _ -> c
      | Binop(op,a1,a2) ->
        Binop(op,c_atom theta a1,c_atom theta a2)
      | Unop(op,a) ->
        Unop(op,c_atom theta a)
    in Atom.Prim c'

let c_inst theta = function
  | Inst.Assign bs ->
    Inst.Assign
      (List.map (fun (x,a) ->
           let x' = substitute theta x in
           let a' = c_atom theta a in
           (x',a')) bs)

let bool b = 
  Atom.Prim (Atom.Bool b)

let std_logic v = 
  Atom.Prim (Atom.Std_logic v)

let (=/=) a1 a2 = Atom.Prim(Binop(Neq,a1,a2))
let (===) a1 a2 = Atom.Prim(Binop(Eq,a1,a2))
let (&&&) a1 a2 = Atom.Prim(Binop(And,a1,a2))
let (!!) x = Atom.Var x
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
    ([],PSM.Seq(Inst.Assign [(d,e)], PSM.State (q',[])))
  | CSM.Let ([(x1,a1)],a2) -> 
    let tmp = Gensym.gensym "tmp" in
    let p1,a1' = c_automaton tmp x1 a1 in
    let p2,a2' = c_automaton q' d a2 in
    let p'' = p1@p2 in
    let a'' = PSM.LetRec([(tmp,[],[(bool true,a2')])],a1') in
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
      PSM.Seq(start <:= bool true,
              PSM.LetRec
                ([(top,[],[(bool true,PSM.Seq(start <:= bool false,
                                              PSM.State(wait,[])))]);
                  (wait,[],[
                      (let rec aux acc = function
                          | 0 -> acc
                          | n -> aux (!!(rdy^string_of_int (n-1)) &&& acc) (n - 1)
                       in aux (bool true) len,
                          PSM.Seq
                            (Inst.Assign (List.mapi
                                            (fun i x ->
                                               x,!!(r^string_of_int i)) xs),
                             a'))])],
                 PSM.State(top,[])))
    in
    let aa'' = List.mapi (fun i ai' ->
        let idle_i = idle^string_of_int i in
        let rdy_i = rdy^string_of_int i in
        let wait_i = wait^string_of_int i in
        let q_i = q^string_of_int i in
        PSM.LetRec([(idle_i,[],[(bool true,
                                 PSM.Seq(rdy_i <:= bool true,
                                         PSM.State(wait_i,[])))]);
                    (wait_i,[],[(!!start,
                                 PSM.Seq(rdy_i <:= bool false,
                                         (* let fv = FreeVariables.vars_automaton ai' in *)
                                         let params = [] (* Vs.elements fv *) in
                                         (* y a t'il vraiment besoin de passer des copies des variables libres comme ici ? 
                                            Tout dépend de si on accepte les assignation (Seq) "sous" un [let and] *)
                                         PSM.LetRec
                                           ([(q_i,params,
                                              [(bool true,ai')])],
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
  let a'' = PSM.LetRec([(idle,[],[(!! start =/= std_logic One, 
                  PSM.Seq(rdy <:= std_logic One, PSM.State(idle,[])));
                  (!! start === std_logic One, 
                  PSM.Seq(rdy <:= std_logic Zero, a'))])],PSM.State(idle,[])) in
  p@[a'']
