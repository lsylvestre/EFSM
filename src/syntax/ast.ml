type ident = string

module Gensym = struct
  
  let gensym =
  let c = ref 0 in
  fun prefix -> incr c; Printf.sprintf "%s_%04d" prefix !c
end

module Atom = struct

  type std_logic =  (* pas exposé dans le parser *)
  | U
  | X
  | Zero
  | One
  | Z
  | W
  | L
  | H
  | Whatever

  type binop = 
  | Add | Sub | Mul 
  | Le | Ge | Lt | Gt 
  | Eq | Neq 
  | And | Or

  type unop = 
  | Not | Uminus
  
  type const = 
  | Std_logic of std_logic
  | Bool of bool 
  | Int of int
  | EmptyList
  | Unit

  type op =   
  | Binop of binop
  | Unop of unop
  | ArrayGet of ident
  | ArrayMake of int
  | TyAnnot of Types.ty
  | Call of string       (* usage interne, pas exposé dans le parser *)
  | FromCaml of Types.ty  (* usage interne, pas exposé dans le parser *)
  | ToCaml of Types.ty
  
  type atom = 
  | Var of ident 
  | Const of const
  | Prim of atom prim
  and 'a prim = (op * 'a list)

  let ill_formed_constant_application () = 
    Printf.printf "*** ill formed constant application\n"

end 

open Atom

(* smart constructors *)
let mk_bool (b:bool) = Bool b
let mk_int (n:int) = Int n
let mk_std_logic (v:std_logic) = Std_logic v
let mk_binop (p:binop) (a1:'a) (a2:'a) = (Binop p,[a1;a2])
let mk_unop (p:unop) (a:'a) = (Unop p,[a]) 
let mk_array_get (x:ident) (idx:'a) = (ArrayGet x,[idx]) 
let mk_array_make (size:int) (a:'a) = (ArrayMake size,[a]) 
let mk_ty_annot (a:'a) (t:Types.ty) = (TyAnnot t,[a])
let mk_call x (args:'a list) = (Call x,args)

let mk_prim p = Prim p
let mk_const c = Const c

let mk_not a =
  match a with 
  | Const(Bool b) -> Const(Bool (not b)) 
  | _ -> Prim (Unop Not,[a])

let mk_fold_binop p l =
  let op = Binop p in
  match l with
  | [] -> invalid_arg "mk_fold_binop"
  | [a] -> a
  | a::l -> List.fold_left (fun acc a -> Prim(op,[acc;a])) a l 

let mk_and a a' =
  match a,a' with 
  | Const(Bool true),a'' 
  | a'',Const(Bool true) 
      -> a''
  | (Const(Bool false) as f),_ 
  | _,(Const(Bool false) as f) -> f
  | _ -> Prim (Binop And,[a;a'])

let mk_bool' b         = mk_const @@ mk_bool b
let mk_int' n          = mk_const @@ mk_int n
let mk_std_logic' v    = mk_const @@ mk_std_logic v

let mk_binop' p a1 a2  = mk_prim @@ mk_binop p a1 a2
let mk_unop' p a       = mk_prim @@ mk_unop p a
let mk_array_get' a idx = mk_prim @@ mk_array_get a idx
let mk_array_make' size a = mk_prim @@ mk_array_make size a
let mk_ty_annot' a t = mk_prim @@ mk_ty_annot a t
let mk_call' x args = mk_prim @@ mk_call x args

let mk_var x = Var x 


module Inst = struct
  type 'a inst = 
  | Assign of ('a lvalue * 'a) list
  and 'a lvalue = (ident * 'a option)
end

let mk_assign1 x ?idx e = 
  Inst.Assign [((x,idx),e)]

let mk_assign lvs args = 
  if List.length lvs <> List.length args then invalid_arg "mk_assign";
  let bs = List.combine lvs args in
  Inst.Assign bs

let mk_lvalue ?idx x = (x,idx)

;;


open Inst

type state = ident

module EFSM = struct

  type prog = automaton list
  and automaton = Automaton of selector list
  and selector = state * transition list
  and transition = atom * atom inst * state

  let init (Automaton l) = 
    match l with
    | (q,_)::_ -> q
    | [] -> assert false
end

module FCF = struct

  type prog = exp
  and exp = 
  | State of (state * atom list)
  | Atom of atom
  | If of atom * exp * exp
  | Assign of ident * atom * exp
  | LetAutomaton of handler list * exp
  | Let of ident * exp * exp
  | LetPar of (ident * exp) list * exp
  (* | Let of (ident * automaton) list * automaton *)
  and handler = state * ident list * exp
  
end

module LI = struct

  type prog = exp
  and exp = 
  | Var of ident
  | Const of const
  | Prim of exp prim
  | Seq of exp inst * exp
  | Let of (ident * exp) list * exp
  | LetRec of (ident * ident list * exp) list * exp
  | App of ident * exp list
  | If of exp * exp * exp
  | CamlPrim of interop
  and interop =
  | RefAccess of exp
  | RefAssign of  { r:exp ; e:exp }
  | ArrayAccess of { arr:exp ; idx:exp }
  | ArrayAssign of { arr:exp ; idx:exp ; e:exp}
  | ArrayLength of exp
  | ListHd of exp
  | ListTl of exp

  (* | Case of exp * (const * exp) list
  | Map of {x : ident ; trt : prog ; arr : prog}
  | Fold of {acc : ident ; x : ident ; trt : prog ; init : prog ; arr : prog} *)
  
end

module PLATFORM = struct
  
  type prog = func list * ocaml_prog
  and func = (ident * ident list * LI.exp)
  and ocaml_prog = string
end
