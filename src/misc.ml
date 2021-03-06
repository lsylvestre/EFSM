
let list_split3 l = 
  let rec aux l1 l2 l3 = function
  | [] -> (l1,l2,l3)
  | (x1,x2,x3)::l -> aux (x1::l1) (x2::l2) (x3::l3) l
in aux [] [] [] (List.rev l)

let list_map3 f l1 l2 l3 = 
  let rec aux acc l1 l2 l3 =
  match l1,l2,l3 with
  | [],[],[] -> List.rev acc
  | (x1::l1,x2::l2,x3::l3) -> 
      let v = f x1 x2 x3 in
      aux (v::acc) l1 l2 l3
  | _ -> invalid_arg "list_map3"
  in aux [] l1 l2 l3


let rec list_iter3 f l1 l2 l3 =
  match (l1, l2,l3) with
    ([], [],[]) -> ()
  | (a1::l1, a2::l2, a3::l3) -> f a1 a2 a3; list_iter3 f l1 l2 l3
  | (_, _, _) -> invalid_arg "list_iter3"

let load_file f =
  let ic = open_in f in
  let n = in_channel_length ic in
  let b = Bytes.create n in
  really_input ic b 0 n;
  close_in ic;
  b

let copy_file f f' =
  let b = load_file f in
  let oc = open_out f' in
  output_bytes oc b;
  close_out oc
