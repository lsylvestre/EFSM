open Ast

let substitute theta x =
  match List.assoc_opt x theta with
  | None -> x (* failwith (Printf.sprintf "psm: unbound variable %s\n" x) *)
  | Some y -> y

let grab_args q env = 
  match List.assoc_opt q env with
  | None -> failwith (Printf.sprintf "psm: unbound state %s\n" q)
  | Some xs -> xs

let rec c_atom theta a =
  let open Atom in
  match a with 
  | Var x ->
      let x' = substitute theta x in
      Var x'
  | Const _ -> a
  | Prim (c,l) ->
      Prim (c,List.map (c_atom theta) l)

let c_inst theta = function
  | Inst.Assign bs ->
      Inst.Assign
        (List.map (fun ((x,o),a) ->
           let x' = substitute theta x in
           let o' = Option.map (c_atom theta) o in
           let a' = c_atom theta a in
           ((x',o'),a')) bs)

let merge s s' =
  let open Inst in
  match s,s' with
  | Assign l, Assign l' -> 
      if Variables.(Vs.disjoint (wrv_inst s) (wrv_inst s')) 
      then Some (Assign (l@l'))
      else None


let rec c_automaton env theta = function
  | PSM.State (q,es) ->
      let xs = grab_args q env in
      assert (List.length xs = List.length es);
      let s = Inst.Assign (List.map2 (fun x e -> 
                             ((substitute theta x,None), c_atom theta e)) xs es) in
      (s,HSM.State q)
  | PSM.Seq(s,a) ->
      let s1 = c_inst theta s in
      let (s2,a') = c_automaton env theta a in
       (match merge s1 s2 with
      | Some s -> (s,a')
      | None -> (* revoir le schéma papier *)
        let q = Gensym.gensym "seq" in
        (s1, HSM.LetRec ([(q,[(mk_bool' true, s2,a')])],HSM.State q)))
  | PSM.LetRec (selects, a) -> (* revoir le schéma papier *)
      
      let l_theta = List.map (fun (_,xs,_) -> 
                       let fresh = Gensym.gensym "params" in
                       (List.map (fun x -> (x,fresh^x)) xs) @ theta) selects 
      in
      let env' = (List.map2 (fun (q,xs,_) theta -> 
        (q,List.map (substitute theta) xs)) selects l_theta) @ env 
      in
      let (s,a') = c_automaton env' theta a in
      let selects' = List.map2 (fun theta psi -> c_transition env' theta psi) l_theta selects in
      (s,HSM.LetRec (selects', a'))

and c_transition env theta (q,xs,ts) =
  match ts with
  | [] -> (q,[])
  | _ ->
      let ts' = List.map (fun (e,a) ->
          let e' = c_atom theta e in
          let (s',a') = c_automaton env theta a in
          (e',s',a')) ts in
      (q,ts')

let c_prog ?(env=[]) p =(* Printf.printf "foo\n"; *)
  let theta = [] in
  List.map (fun a ->
      let s,a' = c_automaton env theta a in
      let q0 = Gensym.gensym "Q" in
      HSM.LetRec ([ (q0,[ (mk_bool' true,s,a') ]) ],HSM.State q0)) p

