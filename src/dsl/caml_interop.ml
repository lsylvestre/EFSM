open Ast
open LI

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
      Efsm2vhdl.allow_heap_access := true;
      let e = rw e in
      let open Atom in
      let get = Gensym.gensym "get" in
      let read = Gensym.gensym "read" in
      let r = Gensym.gensym "r" in
      let v = Gensym.gensym "v" in  
      LetRec([get,[r],
        Seq(Assign [(("avm_rm_address",None),
                     Prim(Call "ref_contents",
                          [Var "caml_heap_base";Var r]));
                    (("avm_rm_read",None),
                      Const (Std_logic One))],
             LetRec([read,[],
                If (Prim(Binop Eq,[Var "avm_rm_waitrequest";Const (Std_logic Zero)]),
                    Seq(Assign [(("avm_rm_read",None),Const (Std_logic Zero));((v,None),Var "avm_rm_readdata")],
                        Prim(Call "int_val",[Prim(TyAnnot TPtr,[Var v])])),
                        App(read,[]))], App(read,[])))],
           App(get,[Prim(TyAnnot (TCamlRef TInt),[e])]))

  | ArrayAccess{arr;idx} ->
      Efsm2vhdl.allow_heap_access := true;
      let arr = rw arr in
      let idx = rw idx in
      let open Atom in
      let get = Gensym.gensym "get" in
      let read = Gensym.gensym "read" in
      let a = Gensym.gensym "a" in
      let i = Gensym.gensym "i" in
      let v = Gensym.gensym "v" in
      LetRec([get,[a;i],
        Seq(Assign [(("avm_rm_address",None),
                     Prim(Call "array_get_field",
                          [Var "caml_heap_base";Var a;Var i]));
                    (("avm_rm_read",None),
                      Const (Std_logic One))],
             LetRec([read,[],
                If (Prim(Binop Eq,[Var "avm_rm_waitrequest";Const (Std_logic Zero)]),
                    Seq(Assign [(("avm_rm_read",None),Const (Std_logic Zero));((v,None),Var "avm_rm_readdata")],
                        Prim(Call "int_val",[Prim(TyAnnot TPtr,[Var v])])),
                        App(read,[]))], App(read,[])))],
           App(get,[Prim(TyAnnot (TCamlArray TInt),[arr]);idx]))
  | ArrayLength e -> 
      Efsm2vhdl.allow_heap_access := true;
      let e = rw e in
      let open Atom in
      let length = Gensym.gensym "length" in
      let read = Gensym.gensym "read" in
      let a = Gensym.gensym "a" in
      let v = Gensym.gensym "v" in
      LetRec([length,[a],
        Seq(Assign [(("avm_rm_address",None),
                     Prim(Call "array_hd",
                          [Var "caml_heap_base";Var a]));
                    (("avm_rm_read",None),
                      Const (Std_logic One))],
             LetRec([read,[],
                If (Prim(Binop Eq,[Var "avm_rm_waitrequest";Const (Std_logic Zero)]),
                    Seq(Assign [(("avm_rm_read",None),Const (Std_logic Zero));((v,None),Var "avm_rm_readdata")],
                        Prim(Call "wosize_hd",[Var "caml_heap_base"; Prim(TyAnnot TPtr,[Var v])])),
                        App(read,[]))], App(read,[])))],
           App(length,[Prim(TyAnnot (TCamlArray TInt),[e])]))


