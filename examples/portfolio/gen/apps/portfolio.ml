open Platform   (*   ";;"  marque le début du code OCaml *)

let p_string = Serial.write_string
let p_int = Serial.write_int

let check b = 
  p_string (if b then "ok" else "ko");
  p_string "\n"

let a = Array.init 8 fib ;;

rev_array a ;;

check (a = [|21;13;8;5;3;2;1;1|]) ;;

p_int (sum_array a)
;;


