module Gensym = struct
  
  let gensym =
  let c = ref 0 in
  fun prefix -> incr c; prefix ^ "_" ^ string_of_int !c
end

module Atom = struct

  type ident = string

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
  | Not | Uminus | Bool_of_std_logic

  type atom = 
  | Var of ident 
  | Prim of const
  and const = 
  | Std_logic of std_logic
  | Bool of bool 
  | Int of int
  | Binop of binop * atom * atom
  | Unop of unop * atom


end 

open Atom

module Inst = struct
  type inst = Assign of (ident * atom) list
end

;;


open Inst

type state = ident

module EFSM = struct

  type prog = automaton list
  and automaton = Automaton of selector list
  and selector = state * transition list
  and transition = atom * inst * state

  let init (Automaton l) = 
    match l with
    | (q,_)::_ -> q
    | [] -> assert false
end

module HSM = struct

  type prog = automaton list
  and automaton = 
  | State of state 
  | LetRec of selector list * automaton
  and selector = state * transition list
  and transition = atom * inst * automaton
  
end


module PSM = struct

  type prog = automaton list
  and automaton = 
  | State of state * atom list
  | Seq of inst * automaton
  | LetRec of selector list * automaton
  and selector = state * ident list * transition list
  and transition = atom * automaton
  
end

module CSM = struct

  type prog = automaton
  and automaton = 
  | State of state * atom list
  | Seq of inst * automaton
  | LetRec of selector list * automaton
  | Return of atom
  | Let of (ident * automaton) list * automaton
  and selector = state * ident list * transition list
  and transition = atom * automaton
  
end

module EDSL = struct

  type prog = exp
  and exp = 
  | Var of ident
  | Prim of prog list
  | Let of (ident * prog) list * exp
  | LetRec of (ident * ident list * exp) list * exp
  | App of ident * prog list
  | If of exp * exp * exp
  | Case of exp * (const * exp) list
  | Map of {x : ident ; trt : prog ; arr : prog}
  | Fold of {acc : ident ; x : ident ; trt : prog ; init : prog ; arr : prog}
  
end
