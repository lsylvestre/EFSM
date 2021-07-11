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

let rec c_automaton env theta = function
  | PSM.State (q,es) ->
      let xs = List.assoc q env in
      let s = Inst.Assign (List.combine xs es) in
      (s,HSM.State q)
  | PSM.Seq(s,a) ->
      let s1 = c_inst theta s in
      let (s2,a') = c_automaton env theta a in
      ((merge s1 s2),a')
  | PSM.LetRec (selects, a) ->
      let env' = List.map (fun (q,xs,_) -> (q,xs)) selects @ env in
      let (s,a') = c_automaton env' theta a in
      (s,HSM.LetRec (List.map (c_transition env' theta) selects, a'))

and c_transition env theta (q,xs,ts) =
  match ts with
  | [] -> (q,[])
  | _ ->
      let theta' =
        let fresh = Gensym.gensym "params" in
        (List.map (fun x -> (x,fresh^x)) xs) @ theta in
      let ts' = List.map (fun (e,a) ->
          let (s',a') = c_automaton env theta' a in
          (e,s',a')) ts in
      (q,ts')

let c_prog p =
  List.map (fun a ->
      let s,a' = c_automaton [] [] a in
      let q0 = Gensym.gensym "Q" in
      HSM.LetRec ([ (q0,[ (Atom.Prim(Bool true),s,a') ]) ],HSM.State q0)) p
