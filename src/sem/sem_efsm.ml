open Ast

type value = 
| VInt of int 
| VBool of bool 
| VStdLogic of Atom.std_logic 
| VEmptyList 
| VArray of value list
| VUnit

module Env = Map.Make(String) 

let sem_var x env =
  match Env.find_opt x env with
  | None -> failwith "eval: unknown variable"
  | Some v -> v

let sem_const c env =
  let open Atom in
  match c with
  | Std_logic v -> VStdLogic v
  | Bool b -> VBool b
  | Int n -> VInt n
  | EmptyList -> VEmptyList
  | Unit -> VUnit

let binop_int_int f = function
| [VInt n1;VInt n2] -> VInt (f n1 n2) 
| _ -> assert false

let binop_int_bool f = function
| [VInt n1;VInt n2] -> VBool (f n1 n2) 
| _ -> assert false

let binop_bool_bool f = function
| [VBool b1;VBool b2] -> VBool (f b1 b2) 
| _ -> assert false

let binop_v_bool f = function
| [v1;v2] -> VBool (f v1 v2) 
| _ -> assert false

let unop_int_int f l =
match l with 
| [VInt n] -> VInt (f n) 
| _ -> assert false

let unop_bool_bool f l = 
match l with 
| [VBool b] -> VBool (f b) 
| _ -> assert false

let sem_binop p =
  let open Atom in
  match p with 
  | Add -> binop_int_int (+)
  | Sub -> binop_int_int (-)
  | Mul -> binop_int_int ( * )
  | Le -> binop_int_bool (<=)
  | Ge -> binop_int_bool (>=)
  | Lt -> binop_int_bool (<)
  | Gt -> binop_int_bool (>)
  | Eq -> binop_v_bool (=)
  | Neq -> binop_v_bool (<>)
  | And -> binop_bool_bool (&&)
  | Or -> binop_bool_bool (||)

let sem_unop p =
  let open Atom in
  match p with 
  | Not -> unop_bool_bool not 
  | Uminus -> unop_int_int ((-) 0)

let sem_ty_annot _ = function
| [v] -> v
| _ -> assert false

let sem_array_get x env = function
| [VInt i] -> 
  (match sem_var x env with
   | VArray l -> List.nth l i
   | _ -> assert false)
| _ -> assert false

let sem_array_make n = function
| [v] -> 
    let l = List.init n (fun _ -> v) in
    VArray l
| _ -> assert false

let sem_prim p env = 
  let open Atom in
  match p with 
  | Binop p -> sem_binop p
  | Unop p -> sem_unop p
  | TyAnnot t -> sem_ty_annot t
  | ArrayGet x -> sem_array_get x env
  | ArrayMake n -> sem_array_make n
  | _ -> failwith "todo"

let rec sem_atom e env =
  let open Atom in
  match e with
  | Var x -> sem_var x env
  | Const c -> sem_const c env
  | Prim(p,es) -> 
     (sem_prim p env) @@ 
     List.map (fun a -> sem_atom a env) es

let sem_inst s env =
  match s with
  | Inst.Assign bs -> 
     let update env ((x,o),e) =
       match o with
       | None -> Env.add x (sem_atom e env) env 
       | Some _ -> failwith "todo"
     in
     List.fold_left update env bs

    
let sem_trans (e,s,q') env =
  match sem_atom e env with
  | VBool true -> Some (sem_inst s env, q')
  | _ -> None

let rec react_automaton a q env =
  let open EFSM in
  match a with
  | Automaton l ->
     (match List.assoc_opt q l with
      | None -> assert false
      | Some ts -> 
          let rec next ts env =
          match ts with 
          | [] -> assert false
          | t::ts -> match sem_trans t env with
                     | None -> next ts env
                     | Some (env,q') -> (env,q')
          in
          next ts env)
(*
let sem_prod automata cur_states env =


react_automaton a q' env 


let run m env =
  let rec step trace m env =
    let m', env' = react m env in
    if m.q=m'.q && equal_env env env'
    then List.rev trace
    else step ((m.q, env)::trace) m' env' in
  step [] m env
  
let _ = run m_fact ["n", Int 5]

*)