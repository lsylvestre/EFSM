open Ast


module Vs = Set.Make(String);;

let accum f l = 
  List.fold_left (fun acc x -> Vs.union acc (f x)) Vs.empty l

let vs_of_list ?(acc=Vs.empty) l = 
  List.fold_left (fun acc x -> Vs.add x acc) acc l

(* variables lues *)

let rec rv_atom = function
| Atom.Var x -> Vs.singleton x
| Atom.Prim c -> 
    match c with
    | Std_logic _ | Bool _ | Int _ -> Vs.empty
    | Binop (_,a1,a2) -> Vs.union (rv_atom a1) (rv_atom a2)
    | Unop (_,a) -> rv_atom a

let rv_inst = function
| Inst.Assign bs -> 
    accum (fun (_,e) -> rv_atom e) bs

(* variables écrites *)

let wv_inst = function
| Inst.Assign bs -> 
    accum (fun (x,_) -> Vs.singleton x) bs
