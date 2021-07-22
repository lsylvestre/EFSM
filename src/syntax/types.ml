
open Format

type ty = 
| TStd_logic 
| TBool 
| TInt
| TIdent of string
| TSize of int
| TArray of {ty:ty ; size:ty}   (*  (elements type * size)  *)
| TCamlRef of ty
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
  | TArray {ty ; size} -> 
      fprintf fmt "array(%a,%a)"
         print_ty ty 
         print_ty size
  | TSize(n) -> 
      fprintf fmt "%d" n
  | TCamlRef ty ->
     fprintf fmt "ref(%a)"
         print_ty ty
  | TPtr ->
     pp_print_text fmt "ptr"
  | TIdent x -> 
     pp_print_text fmt x
  | TVar{contents=V n} -> 
      fprintf fmt "'a%d" n
  | TVar{contents=Ty t} -> 
      print_ty fmt t

let print_env fmt env = 
  Tenv.iter (fun x t -> Format.fprintf fmt "(%s, %a);" x print_ty t) env

let newvar = 
  let c = ref 0 in
  fun () -> TVar (ref (V (!c)))

let rec canon t = 
  (* Si des variables de types ne sont pas instantiées dans [t],
     une exception est lancée *)
  match t with 
  | TVar{contents=Ty t} -> 
      canon t
  | TVar{contents=V n} -> 
      failwith "Typing_efsm.canon: uninstantiated type variable"
  | t -> t

