open Ast
open KER

let rec is_atom = function
| Var x -> true
| Prim c ->  
  (match c with
  | Std_logic _ | Bool _ | Int _ -> true
  | Binop(_,e1,e2) ->
    is_atom e1 && is_atom e2
  | Unop(_,e) -> is_atom e)
| _ -> false

exception Not_an_atom

(* [exp_to_atom e] raise [Not_an_atom] if [e] is not an atom *)
let rec exp_to_atom = function
| Var x -> Atom.Var x
| Prim c ->  
  let c' =
    match c with
    | Std_logic v -> Atom.Std_logic v
    | Bool b -> Bool b
    | Int n -> Int n
    | Binop(op,e1,e2) ->
      Atom.Binop(op,exp_to_atom e1,exp_to_atom e2)
    | Unop(op,e) ->
      Atom.Unop(op,exp_to_atom e)
  in Atom.Prim c'
| _ -> raise Not_an_atom

let rec c_exp e = 
  if is_atom e then CSM.Return (exp_to_atom e) else
  match e with
  | Var x -> assert false (* is an atom *)
  | Prim c -> 
    (* is not an atom *)
      (match c with
      | Std_logic _ | Bool _| Int _ -> assert false (* is an atom *)
      | Binop(op,e1,e2) ->
        let x1 = Gensym.gensym "dsl" in
        let x2 = Gensym.gensym "dsl" in
        Let ([(x1,c_prog e1);(x2,c_prog e2)], 
              CSM.Return (Atom.Prim (Binop(op,Atom.Var x1,Atom.Var x2))))
     | Unop(op,e) ->
        let x = Gensym.gensym "dsl" in
        Let ([(x,c_prog e)], 
              CSM.Return (Atom.Prim (Unop(op,Atom.Var x)))))
  | Let(bs,e) ->
      let bs' = List.map (fun (x,e) -> (x,c_prog e)) bs in
      let a = c_exp e in
      CSM.Let(bs',a)
  | LetRec(bs,e) -> 
      let bs' = List.map (fun (f,ys,e) -> (f,ys,[(Atom.Prim (Bool true),c_exp e)])) bs in
      let a = c_exp e in
      CSM.LetRec(bs',a)
  | If(e1,e2,e3) -> 
      if is_atom e1 
      then
        let e = exp_to_atom e1 in 
        let a2 = c_exp e2 in
        let a3 = c_exp e3 in
        let q = Gensym.gensym "dsl_q" in
        CSM.LetRec([(q,[],[(e,a2);(Atom.Prim (Unop(Not,e)),a3)])],CSM.State(q,[]))
      else 
        c_exp @@
        let x = Gensym.gensym "dsl_cond" in
        (KER.Let([(x,e1)], If(Var x,e2,e3)))
  | App(x,es) -> 
    if List.for_all is_atom es   
    (* on pourrait raffiner en partitionnant les atomes 
       et les expressions plus complexes (lesquelles requièrent un [let]) *)
    then
      let es' = List.map exp_to_atom es in
      CSM.State(x,es')
    else 
      c_exp @@
      let bs = List.map (fun e -> let x = Gensym.gensym "dsl" in (x,e)) es in
       let xs = List.map (fun (x,_) -> Var x) bs in
      Let (bs,App(x,xs))
  | Seq(s,e) ->
     (match s with
     | Assign bs ->
       let es = List.map snd bs in
       if List.for_all is_atom es 
       then
         let bs' = List.map (fun (x,e) -> (x, exp_to_atom e)) bs in
         let a = c_exp e in
         CSM.Seq(Assign(bs'),a)
       else 
        c_exp @@
        let bs2 = List.map (fun (x,e) -> 
                    let x = Gensym.gensym "dsl" in (x,e)) bs in
         let l = List.map2 (fun (x,_) (x',_) -> (x,Var x')) bs bs2 in
        Let (bs,Seq(Assign(l),e)))

and c_prog e =
  c_exp e