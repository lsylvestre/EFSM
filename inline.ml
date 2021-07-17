open Ast
open LI


let rec occur x e =
  match e with
  | Var x' -> x = x'
  | Prim (Std_logic _)
  | Prim (Bool _)
  | Prim (Int _) -> false
  | Prim (Binop (_,e1,e2)) -> 
      occur x e1 || occur x e2
  | Prim (Unop (_,e)) -> 
      occur x e
  | Seq (Inst.Assign s,e) -> 
      List.exists (fun (_,e) -> occur x e) s || occur x e
  | If(e1,e2,e3) -> 
      occur x e1 || occur x e2 || occur x e3
  | Let(bs,e) -> 
      List.exists (fun (_,e) -> occur x e) bs ||
      (List.for_all (fun (x',_) -> x <> x') bs 
       && occur x e)
  | LetRec(bs,e) -> 
     List.for_all (fun (x',xs,_) -> x <> x' && List.for_all ((<>) x) xs) bs && 
     (List.exists (fun (_,_,e) -> occur x e) bs || occur x e)
  | App(x',es) -> x' = x || List.exists (occur x) es


let rec inline extra_env env e = 
  let inline' e = 
    inline (env@extra_env) [] e 
  in 
  match e with
  | Var x -> Var x
  | Prim (Std_logic v) -> Prim (Std_logic v)
  | Prim (Bool b) -> Prim (Bool b)
  | Prim (Int n) -> Prim (Int n)
  | Prim (Binop (p,e1,e2)) -> Prim (Binop (p,inline' e1,inline' e2))
  | Prim (Unop (p,e)) -> Prim (Unop (p,inline' e))
(*  | Prim es -> Prim (List.map inline' es) *)
  | Seq _ -> failwith "todo inline"
  | If(e1,e2,e3) -> 
      let inline_exp e = inline extra_env env e in
      If(inline_exp e1, inline_exp e2, inline_exp e3)
  | Let(bs,e) ->
      let bs = List.map (fun (x,e) -> (x,inline' e)) bs in 
      let e = inline extra_env env e in
      Let(bs,e)
  | LetRec(bs,e) ->
      let env' = List.map (fun (x,xs,e) -> (x,(xs,e))) bs @ env in
      let inline'' e = inline extra_env env' e in
      let bs = List.map (fun (x,xs,e) -> (x,xs,inline'' e)) bs in
      let e = inline'' e in
      LetRec(bs,e)
  | App(x,es) -> 
      if List.mem_assoc x env 
      then let es = List.map inline' es in
           App(x,es)
      else let (xs,e') = List.assoc x extra_env in
           let e'' = inline (env@extra_env) [(x,([],Var "fake"))] e' in
           let es = List.map inline' es in
           LetRec([(x,xs,e'')],App(x,es))

module S = Set.Make(struct 
                     type t = (Atom.ident * Atom.ident list * exp) 
                     let compare = compare 
                    end) 

let rec dead_code_elim e =
  match e with
  | Var _
  | Prim (Std_logic _)
  | Prim (Bool _)
  | Prim (Int _) -> e
  | Prim (Binop (p,e1,e2)) -> Prim (Binop (p,dead_code_elim e1,dead_code_elim e2))
  | Prim (Unop (p,e)) -> Prim (Unop (p,dead_code_elim e))
  | If(e1,e2,e3) -> If(dead_code_elim e1,dead_code_elim e2,dead_code_elim e3)
  | Let(bs,e) -> 
     let bs = List.map (fun (x,e) -> (x,dead_code_elim e)) bs in
     Let(bs,dead_code_elim e)
  | LetRec(bs,e) ->
      let bss = List.fold_left (fun acc b -> S.add b acc) S.empty bs in
      let bss' = S.filter (fun (x,xs,_) -> 
                   occur x e
                   && List.for_all 
                        (fun (x',xs,e) -> 
                           List.for_all ((<>) x) xs
                           && if x = x' then true 
                              else occur x e) bs) bss in 
     let bs = S.elements bss' in
     (match bs with
     | [] -> dead_code_elim e
     | _ -> let bs' = List.map (fun (x,xs,e) -> (x,xs,dead_code_elim e)) bs in  
            LetRec(bs', dead_code_elim e))
  | App(x,es) -> App(x,List.map dead_code_elim es)
  | Seq (Assign(s),e) -> 
     let s' = List.map (fun (x,e) -> (x, dead_code_elim e)) s in
     Seq(Assign(s'),dead_code_elim e)

let inlining e = 
  let e' = inline [] [] e in
  let e' = dead_code_elim e' in
  (* Pprint_ast.PP_LI.print_exp Format.std_formatter e';
  exit 0;*)
  e'

