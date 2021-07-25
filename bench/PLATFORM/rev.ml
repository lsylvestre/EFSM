circuit rev(a) =
  let rec aux(i,j) =
    if i >= j then () else 
      let v = a.(i) in
      let _ = a.(i) <- a.(j) in
      let _ = a.(j) <- v in
      aux(i+1,j-1)
  in
  aux(0,array_length a-1)

circuit sum(a) =
  let n = array_length a in
  let rec aux(acc,i) =
    if i >= n then acc else 
    aux(acc + a.(i), i+1) 
  in
  aux(0,0)

;;

let a = [|1;2;3|] ;;

rev a ;;

Serial.write_string @@
  if (a = [|3;2;1|]) then "ok" else "ko";;

Serial.write_int @@
  sum a
