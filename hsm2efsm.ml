open Ast

let substitute_state q theta = 
  match List.assoc_opt q theta with
  | None -> failwith (Printf.sprintf "psm: unbound state %s\n" q)
  | Some xs -> xs

let rec c_automaton theta = function
| HSM.State q -> 
    let q' = substitute_state q theta in 
    ([],q')
| HSM.LetRec (selects, a) -> 
  let theta' = 
    let fresh = Gensym.gensym "level" in
    (List.map (fun (q,_) -> (q,fresh^q)) selects) @ theta
  in
  let ps = List.map (c_transition theta') selects in
  let auts,selects' = List.split ps in
  let aut,q0 = c_automaton theta' a in
  aut@selects'@List.concat auts, q0

and c_transition theta (q,ss) = 
  let q' = substitute_state q theta in
  match ss with
  | [] -> ([],(q',[]))
  | _ ->
  let ps = List.map (fun (_,_,a) -> c_automaton theta a) ss in
  let l,qs = List.split ps in
  let s = List.map2 (fun (e,s,a) q -> (e,s,q)) ss qs in
  (List.concat l, (q',s))

let c_prog ?(theta=[]) p = 
  List.map (fun a -> 
             let l,q = c_automaton theta a in
             match l with
             | (q',_)::_ -> (* assert (q' = q);  ?*) EFSM.Automaton l
             | [] -> assert false
           ) p