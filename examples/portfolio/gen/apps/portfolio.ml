open Platform   (*   ";;"  marque le début du code OCaml *)

let pp = Serial.write_string

let check b = 
  pp (if b then "ok" else "ko");
  pp "\n"

let a = Array.init 8 fib ;;

rev_array a ;;

check (a = [|21;13;8;5;3;2;1;1|]) ;;
check (sum_array a = 21-1)
;;


