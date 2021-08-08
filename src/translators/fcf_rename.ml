open Ast
    
let gensym (x:ident) : ident = 
  Gensym.gensym x
    
let rename_state env x = 
  match List.assoc_opt x env with
  | None -> assert false
  | Some x' -> x'
    
let rename_ident env x = 
  match List.assoc_opt x env with
  | None -> x (* variable globale *)
  | Some x' -> x'
    
let rec rename_atom env a =
  let open Atom in
  match a with
  | Var x ->
      Var (rename_ident env x)
  | Const _ ->
      a
  | Prim(p,args) ->
      Prim(p,List.map (rename_atom env) args)
      
let rec rename env e =
  match e with
  | FCF.Atom a -> 
      FCF.Atom (rename_atom env a)
  | FCF.If (a,e1,e2) ->
      FCF.If (rename_atom env a,
              rename env e1,
              rename env e2)
  | FCF.Assign(x,a,e) ->
      FCF.Assign(x,rename_atom env a,rename env e)
  | FCF.State(q,args) ->
      FCF.State(rename_state env q,
                List.map (rename_atom env) args)
  | FCF.Let(x,e,e') -> 
      let x' = gensym x in
      FCF.Let(x',
              rename env e,
              rename ((x,x')::env) e')
  | FCF.LetAutomaton(bs,e) ->
      let env' = (List.map (fun (x,_,_) -> (x,gensym x)) bs) @ env in
      let bs' = List.map (fun (x,xs,e) ->
                            let x' = rename_state env' x in
                            let xs' = List.map gensym xs in
                            let env'' = List.combine xs xs' @ env' in
                            (x',xs',rename env'' e)) bs in
      let e' = rename env' e in
      FCF.LetAutomaton(bs',e')
  | FCF.LetPar(bs,e) ->
      let env' = (List.map (fun (x,_) -> (x,gensym x)) bs) @ env in
      FCF.LetPar(List.map (fun (x,e) ->
                             (rename_ident env' x,rename env e)) bs,
                 rename env' e)

let rename_prog e = 
  rename [] e
