open Ast


module Vs = Set.Make(String);;

let accum f l = 
  List.fold_left (fun acc x -> Vs.union acc (f x)) Vs.empty l

let vs_of_list ?(acc=Vs.empty) l = 
  List.fold_left (fun acc x -> Vs.add x acc) acc l

(* variables lues *)

let rec rv_atom = function
| Atom.Var x -> Vs.singleton x
| Atom.Const _ -> Vs.empty
| Atom.Prim (c,l) -> 
  let vs = accum rv_atom l in
  match c with
  | ArrayGet x -> Vs.add x vs
  | _ -> vs

let rv_inst = function
| Inst.Assign bs -> 
    accum (fun ((_,o),e) -> 
      Vs.union (rv_atom e) 
               (match o with 
                | None -> Vs.empty 
                | Some a -> rv_atom a)) bs

(* variables écrites *)

let wv_inst = function
| Inst.Assign bs -> 
    accum (fun ((x,_),_) -> Vs.singleton x) bs

let wrv_inst s = 
  Vs.union (wv_inst s) (rv_inst s)