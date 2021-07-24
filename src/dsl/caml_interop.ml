open Ast
open LI

let access ?(tt=Types.newvar ()) p args ~callbk = 
  Efsm2vhdl.allow_heap_access := true;
  let get = Gensym.gensym "get" in
  let read = Gensym.gensym "read" in
  let xs = List.map (fun _ -> Gensym.gensym "tmp") args in
  let v = Gensym.gensym "v" in  
  LetRec([get,xs,
    Seq(Assign [(("avm_rm_address",None),
                 Prim(p, (Var "caml_heap_base")::List.map (fun x -> Var x) xs));
                (("avm_rm_read",None),
                  Const (Std_logic One))],
         LetRec([read,[],
            If (Prim(Binop Eq,[Var "avm_rm_waitrequest";Const (Std_logic Zero)]),
                Seq(Assign [(("avm_rm_read",None),Const (Std_logic Zero));
                            ((v,None),Prim(FromCaml tt, [Prim(Call "%magic_ptr", [Var "avm_rm_readdata"])]))],
                    callbk (Var v)),
                    App(read,[]))], App(read,[])))],
       App(get,args))


let rec rw e =
  match e with
  | Var _ | Const _ -> e
  | Prim (p,es) -> Prim(p,List.map rw es)
  | Seq (Assign s,e) -> 
     let s' = List.map (fun (y,e) -> (y,rw e)) s in
     Seq(Assign s',rw e)
  | Let(bs,e) ->
     let bs' = List.map (fun (y,e) -> (y,rw e)) bs in 
     Let(bs',rw e)
  | LetRec(bs,e) ->
     let bs' = List.map (fun (x,ys,e) -> (x,ys,rw e)) bs in 
     LetRec(bs',rw e)
  | App(x,es) -> 
     let es' = List.map rw es in
     App(x,es')
  | If(e1,e2,e3) -> 
      If(rw e1,rw e2,rw e3)
  | RefAccess e ->
      let e = rw e in
      let w = Types.newvar () in
      access ~tt:w (Call "%ref_contents") [Prim(TyAnnot (TCamlRef w),[e])] 
        ~callbk:(fun x -> x)
  | ArrayAccess{arr;idx} ->
      let arr = rw arr in
      let idx = rw idx in
      let w = Types.newvar () in
      access ~tt:w (Call "%array_get") [Prim(TyAnnot (TCamlArray w),[arr]);idx] 
        ~callbk:(fun x -> x)
  | ArrayLength e -> 
      let e = rw e in
      let w = Types.newvar () in
      access (Call "%array_hd") [Prim(TyAnnot (TCamlArray w),[e])] 
        ~callbk:(fun v -> Prim(Call "%wosize_hd",[Var "caml_heap_base"; v]))
  | ListHd e -> 
      let e = rw e in
      let w = Types.newvar () in
      access ~tt:w (Call "%list_head") [Prim(TyAnnot (TCamlList w),[e])] 
        ~callbk:(fun v -> v)
  | ListTl e -> 
      let e = rw e in
      let t = Types.TCamlList (Types.newvar ()) in
      access ~tt:t (Call "%list_tail") [Prim(TyAnnot t,[e])]
        ~callbk:(fun v -> v)
