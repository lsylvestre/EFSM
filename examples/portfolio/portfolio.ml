(* fonctions simples *)

circuit id(x) = x

circuit fib(n) =
  let rec aux(n,a,b) =
    if n <= 0 then a
    else aux(n-1,b,a+b)
  in
    aux(n,1,1)

circuit fact(n) =
  let rec aux(n,acc) =
    if n <= 0 then acc
    else aux(n - 1, n * acc) 
  in
  aux(n,1)

circuit gcd(a,b) =
  let rec aux(n,acc) =
    if a > b then aux(a-b,b) else 
    if a < b then aux(a,b-a) else a
  in 
  aux(a,b)

(* fonctions sur tableaux *)

circuit rev_array(a) =
  let rec aux(i,j) =
    if i >= j then () else 
      let v = a.(i) in
      let _ = a.(i) <- a.(j) in
      let _ = a.(j) <- v in
      aux(i+1,j-1)
  in
  aux(0,array_length a-1)

circuit sum_array(a) =
  let n = array_length a in
  let rec aux(acc,i) =
    if i >= n then acc else 
    aux(acc + a.(i), i+1) 
  in
  aux(0,0)

(* fonctions sur références *)

circuit inc(r) = 
  r := !r + 1

(* fonctions sur références *)

circuit len(l) =
  let rec aux(l,acc) =
    if l = [] then acc
    else aux(tl l, 1 + acc) 
  in
  aux(l,0)

circuit sum_list(l) =
  let rec aux(l,acc) =
    if l = [] then acc
    else aux(tl l, acc + hd l) 
  in
  aux(l,0)



;;   (*   ";;"  marque le début du code OCaml *)

let pp = Serial.write_string

let check b = 
  pp (if b then "ok" else "ko");
  pp "\n"

let a = Array.init 8 fib ;;

rev_array a ;;

check (a = [|21;13;8;5;3;2;1;1|]) ;;

pp (sum_array a) ;;


