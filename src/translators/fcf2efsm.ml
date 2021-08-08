open Ast


let merge s ts =
  match s with
  | Inst.Assign l -> 
      List.map (fun (a,Inst.Assign l',q) -> (a,Inst.Assign (l@l'),q)) ts

let plug_condition a psi =
  List.map (fun (a',s,q) -> (mk_and a a',s,q)) psi

let plug_instruction psi s =
  match s with
  | Inst.Assign l -> 
    List.map (fun (a,Inst.Assign l',q) -> (a,Inst.Assign (l@l'),q)) psi

let result = "result"

let idle y = "idle_"^y

let start x = 
  if x = result then "start" else "start_"^x

let rdy x = 
  if x = result then "rdy" else "rdy"^x

let rec compile e x r =
  match e with
  | FCF.Atom a -> 
     let psi = 
       let t = (mk_bool' true,mk_assign1 x a,idle x) in
       [t]
      in
      (psi,[],[])
  | FCF.If (a,e1,e2) ->
      let (psi1,a1,pi1) = compile e1 x r in
      let (psi2,a2,pi2) = compile e2 x r in
      let psi = plug_condition a psi1 @ plug_condition (mk_not a) psi2 in
      (psi,a1@a2,pi1@pi2)
  | FCF.Assign(y,av,e) ->
      let (psi,a,pi) = compile e x r in
      let s = mk_assign1 y av in
      let psi' = merge s psi in
      (psi',a,pi)
  | FCF.State(q,args) ->
      let xs = match List.assoc_opt q r with
               | None -> assert false (* cf. typeur *)
               | Some xs -> xs in
      assert (List.length xs = List.length args); (* cf. typeur *)
      let s = mk_assign (List.map (fun x -> mk_lvalue x) xs) args in
      let psi = [(mk_bool' true,s,q)] in
      (psi,[],[])
  | FCF.Let(y,e,e') -> 
      let (psi,a,pi) = compile e y r in
      let (psi',a',pi') = compile e' x r in
      (psi,(idle y,psi')::a@a',pi@pi')
  | FCF.LetAutomaton(bs,e) ->
      let r' = (List.map (fun (x,xs,_) -> (x,xs)) bs) @ r in
      let psi_l,a_l,pi_l = (List.map (fun (_,_,e) -> compile e x r') bs)
                           |> Misc.list_split3 in
      let (psi,a,pi) = compile e x r' in
      let a'_l = Misc.list_map3 (fun (q,_,_) psi a -> 
                                   (q,psi)::a) bs psi_l a_l 
      in
      (psi,a@(List.concat a'_l),pi@(List.concat pi_l))
  | FCF.LetPar(bs,e) ->
      let q = Gensym.gensym "Q" in
      let xs,es = List.split bs in
      let psi_start = 
        let s = Inst.Assign (List.map (fun x -> 
                               mk_lvalue (start x),mk_std_logic' One) xs) 
        in
        [(mk_bool' true,s,q)]
      in
      let pi_l = List.map (fun e -> compile_prog e x) es in
      let (psi,a,pi) = compile e x r in
      let c = mk_fold_binop Atom.And (List.map (fun x -> mk_binop' Atom.Eq 
                                                                   (mk_var (rdy x)) 
                                                                   (mk_std_logic' One)) xs) in
      let psi' = plug_condition c psi @ [mk_not c,Inst.Assign [],q] in
      let a' = (q,psi')::a in
      (psi_start,a',pi@(List.concat pi_l))

and compile_prog e x =
  let (psi,a,pi) = compile e x [] in
  let c = mk_binop' Atom.Eq (mk_var (start x)) (mk_std_logic' One) in
  let psi' = plug_instruction (plug_condition c psi)
                              (mk_assign1 (rdy x) (mk_std_logic' Zero)) @ 
            [mk_not c,(mk_assign1 (rdy x) (mk_std_logic' One)),idle x] in
  let a' = EFSM.Automaton ((idle x,psi')::a) in
  (a'::pi)

let compile_main e = 
  compile_prog e result