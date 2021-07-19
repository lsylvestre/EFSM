open Ast
open LI

let rec is_atom = function
| Var _ | Const _ -> true
| Prim (_,args) ->
    List.for_all is_atom args  
| _ -> false

exception Not_an_atom

(* [exp_to_atom e] raise [Not_an_atom] if [e] is not an atom *)
let rec exp_to_atom = function
| Var x -> Atom.Var x
| Const n -> Atom.Const n
| Prim (c,args) -> 
    Prim(c,List.map exp_to_atom args) 
| _ -> raise Not_an_atom

let rec c_exp e = 
  if is_atom e then CSM.Return (exp_to_atom e) else
  match e with
  | Var _ | Const _ -> assert false (* is an atom *)
  | Prim (c,es) ->
      c_exp @@  (* à factoriser avec le cas app, etc. *)
      let bs = List.map (fun e -> let x = Gensym.gensym "dsl" in (x,e)) es in
      let xs = List.map (fun (x,_) -> Var x) bs in
      Let (bs, Prim (c,xs))
  | Let(bs,e) ->
      let bs' = List.map (fun (x,e) -> (x,c_prog e)) bs in
      let a = c_exp e in
      CSM.Let(bs',a)
  | LetRec(bs,e) -> 
      let bs' = List.map (fun (f,ys,e) -> (f,ys,[(mk_bool' true,c_exp e)])) bs in
      let a = c_exp e in
      CSM.LetRec(bs',a)
  | If(e1,e2,e3) -> 
      if is_atom e1 
      then
        let e = exp_to_atom e1 in 
        let a2 = c_exp e2 in
        let a3 = c_exp e3 in
        let q = Gensym.gensym "dsl_q" in
        CSM.LetRec([(q,[],[(e,a2);(mk_unop' Atom.Not e,a3)])],CSM.State(q,[]))
      else 
        c_exp @@
        let x = Gensym.gensym "dsl_cond" in
        (Let([(x,e1)], If(Var x,e2,e3)))
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
         let bs' = List.map (fun ((x,o),e) -> 
                              let o' = Option.map exp_to_atom o in
                              ((x,o'), exp_to_atom e)) bs in
         let a = c_exp e in
         CSM.Seq(Assign(bs'),a)
       else failwith "todo li2csm seq") (**
        c_exp @@
        let bs2 = List.map (fun ((x,o),e) -> 
                    (* pour le moment, 
                       ne gère pas les indices-expressions complexes *)
                    let x' = Gensym.gensym "dsl" in (x',e)) bs in
         let l = List.map2 (fun ((x,o),_) (x',_) -> 
                    (x,Var x')) bs bs2 in (* à vérifier *)
        Let (bs,Seq(Assign(l),e))) *)

and c_prog e =
  c_exp e