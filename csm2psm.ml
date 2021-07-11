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
      | Bool _ | Int _ -> c
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

let merge s s' =
  Inst.(match s,s' with
      | Assign l, Assign l' -> Assign (l@l'))

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
  | CSM.Return e -> ([],PSM.Seq(Inst.Assign [(d,e)], PSM.State (q',[])))
  | CSM.Let ([(x1,a1)],a2) -> 
      let tmp = Gensym.gensym "tmp" in
      let p1,a1' = c_automaton tmp x1 a1 in
      let p2,a2' = c_automaton q' d a2 in
      let p'' = p1@p2 in
      let a'' = PSM.LetRec([(tmp,[],[(Atom.Prim (Atom.Bool true),a2')])],a1') in
      (p'',a'')
  | CSM.Let (bs,a2) -> failwith "todo"

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
  p@[a']
