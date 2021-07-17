
open Format

type ty = 
| TStd_logic 
| TBool 
| TInt 
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
  | TVar{contents=V n} -> 
      fprintf fmt "'a%d" n
  | TVar{contents=Ty t} -> 
      print_ty fmt t

let print_env fmt env = 
  Tenv.iter (fun x t -> Format.fprintf fmt "(%s, %a);" x print_ty t) env

let newvar = 
  let c = ref 0 in
  fun () -> TVar (ref (V (!c)))
