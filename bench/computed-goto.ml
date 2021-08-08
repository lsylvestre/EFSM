(* fonctions simples *)

circuit f(x) =
  let rec s(n,z) = z() in
  let rec x() = 4 
  and y() = 5 in
  s(2,x)

;;   (*   ";;"  marque le début du code OCaml *)

let p_string = Serial.write_string
let p_int = Serial.write_int

let check b = 
  p_string (if b then "ok" else "ko");
  p_string "\n"


