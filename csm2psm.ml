open Ast

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
                          | n -> aux (!!(rdy^string_of_int n) &&& acc) (n - 1)
                       in aux (bool true) len,
                          PSM.Seq
                            (Inst.Assign (List.mapi
                                            (fun i x ->
                                               x,!!(r^string_of_int(i+1))) xs),
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
                                         PSM.LetRec
                                           ([(q_i,[(* variables libres *)],
                                              [(bool true,ai')])],
                                            PSM.State(q_i,[(* variables libres *)]))))])],
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
  let q' = "control_sink" in
  let d = "result" in
  let p,a' = c_automaton q' d a in
  let a'' = PSM.LetRec([q',[],[]],a') in
  p@[a'']

