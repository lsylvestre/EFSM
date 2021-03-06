
open Format

type ty = 
| TStd_logic 
| TBool 
| TInt
| TUnit
| TSize of int
| TArray of {ty:ty ; size:ty}   (*  (elements type * size)  *)
| TCamlRef of ty
| TCamlArray of ty
| TCamlList of ty
| TPtr               (* pointeur *)
| TVar of tvar ref
and tvar = V of int | Ty of ty

module Tenv = Hashtbl;;

let rec print_ty fmt ty = 
  let open Format in 
  match ty with
  | TStd_logic -> 
      pp_print_text fmt "std_logic"
  | TBool -> 
      pp_print_text fmt "bool"
  | TInt -> 
      pp_print_text fmt "int"
  | TUnit -> 
      pp_print_text fmt "unit"
  | TArray {ty ; size} -> 
      fprintf fmt "nativ_array(%a,%a)"
         print_ty ty 
         print_ty size
  | TSize(n) -> 
      fprintf fmt "%d" n
  | TCamlRef ty ->
     fprintf fmt "(%a) ref"
         print_ty ty
  | TCamlArray ty ->
     fprintf fmt "(%a) array"
         print_ty ty
  | TCamlList ty ->
     fprintf fmt "(%a) list"
         print_ty ty
  | TPtr ->
     pp_print_text fmt "ptr"
  | TVar{contents=V n} -> 
      fprintf fmt "'a%d" n
  | TVar{contents=Ty t} -> 
      print_ty fmt t

let is_type_variable {contents=t} =
  match t with
  | V _ -> true
  | _ -> false

let as_type_variable {contents=t} =
  match t with
  | V n -> n
  | _ -> invalid_arg "Types.as_type_variable"

let print_env fmt env = 
  Format.fprintf fmt "\n\n[";
  Tenv.iter (fun x t -> Format.fprintf fmt "(%s, %a);" x print_ty t) env;
  Format.fprintf fmt "]\n"

let newvar = 
  let c = ref 0 in
  fun () -> TVar (ref (V (!c)))

let rec canon t = 
  match t with 
  | TVar{contents=Ty t} -> 
      canon t
  | TVar{contents=V n} -> 
      (* Printf.printf "info: [Typing_efsm.canon] uninstantiated type variable detected\n"; *)
      t
  | TCamlRef t -> TCamlRef (canon t)
  | TCamlArray t -> TCamlArray (canon t)
  | TCamlList t -> TCamlList (canon t)
  | TArray{ty;size} -> TArray{ty=canon ty;size=canon size}
  | t -> t

