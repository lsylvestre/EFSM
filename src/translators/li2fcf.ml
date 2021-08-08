open Ast
open LI

(* TODO: transformer [let ... seq() ... and ...] 
   en [let ... seq () ... in let ...] *)

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

(* csm *)
let rec contain_seq e =
  let open FCF in
  match e with
  | (State _ | Atom _) -> false
  | Assign _ -> true
  | LetAutomaton (bs,e) -> 
      List.exists (fun (_,_,e) -> contain_seq e) bs || contain_seq e
  | If(a,e1,e2) ->
      contain_seq e1 || contain_seq e2
  | Let (_,_,e) -> 
      contain_seq e 
  | LetPar (bs,e) -> 
      (* on pourrait optimiser: 
         en supposant que les Let(bs,a) ont déjà été traité 
         et ne contiennent dont aucune séquence *)
      List.exists (fun (_,e) -> contain_seq e) bs || contain_seq e

let csm_mk_let bs e =
  match bs with 
  | [] -> e
  | [(x,e0)] -> FCF.Let(x,e0,e)
  | _ -> FCF.LetPar(bs,e)

let pause e = 
  let x = Gensym.gensym "pause" in
  FCF.LetAutomaton([(x,[],e)],FCF.State(x,[]))

let rec c_exp e = 
  if is_atom e then FCF.Atom (exp_to_atom e) else
  match e with
  | Var _ | Const _ -> assert false (* is an atom *)
  | CamlPrim _ -> assert false (* already encoded *)
  | Prim (c,es) ->
      c_exp 
      @@
      let rec aux bs es' = function
      | [] -> let e = Prim(c,List.rev es') in
              assert (is_atom e);
              (match bs with 
               | [] -> e
               | _ -> Let(List.rev bs,e))
      | e::es -> 
          if is_atom e then aux bs (e::es') es
          else let x = Gensym.gensym "dsl" in
               aux ((x,e)::bs) ((Var x)::es') es in
      aux [] [] es
  | Let(bs,e) -> 
      (* TODO: attention capture ! *)
      let bsa,bse = List.partition (fun (x,e) -> is_atom e) bs in
      let q = Gensym.gensym "dsl_q" in
      let a' = 
        let a = c_exp e in
        match List.map (fun (x,e) -> (x,c_prog e)) bse with
        | [] -> a
        | bs' -> let bs_seq,bs_noseq = 
                    List.partition (fun (_,e) -> contain_seq e) bs'
                 in
                 List.fold_left (fun acc (x,e) -> FCF.Let(x,e,acc))
                        (csm_mk_let bs_noseq a) bs_seq
      in
      (match bsa with 
      | [] -> a'
      | _ -> let xs,args = List.split bsa in
             FCF.LetAutomaton([(q,xs,a')], FCF.State(q,List.map exp_to_atom args)))
  | LetRec(bs,e) -> 
      let bs' = List.map (fun (f,ys,e) -> (f,ys,c_exp e)) bs in
      let a = c_exp e in
      FCF.LetAutomaton(bs',a)
  | If(e1,e2,e3) -> 
      if is_atom e1 
      then FCF.If(exp_to_atom e1,c_exp e2,c_exp e3)
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
      FCF.State(x,es')
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
           List.fold_right (fun (x,ea) e -> 
                              let x = match x with 
                                      | (y,None) -> y
                                      | (_,Some _) -> failwith "todo" 
                              in
                              FCF.Assign(x,ea,e)) bs' (pause (c_exp e))
         else 
           failwith "todo li2csm seq") (**
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