
open Format
open Ast

module PP_atom = struct
  
  open Atom
  
  let pp_ident = pp_print_text

  let pp_std_logic fmt v = 
    pp_print_text fmt @@
    match v with
    | U -> "'U'"
    | X -> "'X'"
    | Zero -> "'0'"
    | One -> "'1'"
    | Z -> "'Z'"
    | W -> "'W'"
    | L -> "'L'"
    | H -> "'H'"
    | Whatever -> "'-'"

  let pp_binop fmt p =
    pp_print_text fmt @@
    match p with 
    | Add -> "+" 
    | Sub -> "-"
    | Mul -> "*" 
    | Le -> "<=" 
    | Ge -> ">=" 
    | Lt -> "<"
    | Gt -> ">" 
    | Eq -> "="
    | Neq -> "<>" 
    | And -> "&&" 
    | Or -> "||"

  let pp_unop fmt p = 
    pp_print_text fmt @@
    match p with 
    | Not -> "not" 
    | Uminus -> "-"

  let parenthesized ~paren fmt cb = 
    if paren then fprintf fmt "("; 
    cb (); 
    if paren then fprintf fmt ")" 

  let pp_atom fmt a = 
    let rec pp_atom_aux ~paren fmt a = 
    match a with
    | Var x -> pp_print_text fmt x
    | Prim c -> 
      (match c with
      | Std_logic v -> pp_std_logic fmt v
      | Bool b -> 
        fprintf fmt "%b" b
      | Int n -> 
        fprintf fmt "%d" n
      | Binop(p,a1,a2) ->
        parenthesized ~paren fmt @@ fun () ->
          fprintf fmt "%a %a %a"
            (pp_atom_aux ~paren:true) a1
            pp_binop p
            (pp_atom_aux ~paren:true) a2
      | Unop(p,a) -> 
        parenthesized ~paren fmt @@ fun () ->
          fprintf fmt "%a %a"
            pp_unop p
            (pp_atom_aux ~paren:true) a)
  in
  pp_atom_aux ~paren:false fmt a

end 


module PP_inst = struct
  open Inst
  
  open PP_atom

  let pp_inst fmt (Assign bs) = 
    let xs,es = List.split bs in
    fprintf fmt "@[<hov>(";
    pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",") 
        pp_print_text fmt xs;
    fprintf fmt ") := (";
    pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",") 
        pp_atom fmt es;
    fprintf fmt ")@]"

end

let pp_state = pp_print_text

module PP_EFSM = struct
  open PP_atom
  open PP_inst
  open EFSM

  let pp_transition fmt (a,s,q') = 
    fprintf fmt "if %a then %a; %a@,"
      pp_atom a
      pp_inst s
      pp_state q'

  let pp_automaton fmt (Automaton l) = 
  fprintf fmt "@[<v>automaton";
  List.iter (fun (q,ts) -> 
    fprintf fmt "@,@[<v 2>| %a ->@," pp_state q; 
    List.iter (pp_transition fmt) ts;
    fprintf fmt "@]") l;
  fprintf fmt "@,end@]"
  
  let pp_prog fmt p =
    fprintf fmt "@[<v>";
    pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "@,||@,") 
        pp_automaton fmt p;
    fprintf fmt "@]";
end

module PP_HSM = struct
  open PP_atom
  open PP_inst
  open HSM

  let rec pp_automaton fmt = function
  | State(q) -> pp_state fmt q
  | LetRec(l,a) ->
  fprintf fmt "@[<v 2>let rec ";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "and ") 
  (fun fmt (q,ts) -> 
    fprintf fmt "%a =@," pp_state q; 
    List.iter (pp_transition fmt) ts) fmt l;
  fprintf fmt "@]in ";
  pp_automaton fmt a;
  
  and pp_transition fmt (e,s,a') = 
  fprintf fmt "@[<v>if %a@,then %a;@,%a@]@,"
    pp_atom e
    pp_inst s
    pp_automaton a'

  let pp_prog fmt p =
    fprintf fmt "@[<v>";
    pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "@,||@,") 
        pp_automaton fmt p;
    fprintf fmt "@]";
end

module PP_PSM = struct
  open PP_atom
  open PP_inst
  open PSM

  let rec pp_automaton fmt = function
  | State(q,es) -> 
      fprintf fmt "%a(" pp_state q;
      pp_print_list
        ~pp_sep:(fun fmt () -> fprintf fmt ", ") 
        pp_atom fmt es;
      fprintf fmt ")";
    fprintf fmt "@]"
  | Seq(s,a) -> 
     fprintf fmt "%a;@,%a" 
       pp_inst s
       pp_automaton a
  | LetRec(l,a) ->
  fprintf fmt "@[<v 2>let rec ";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "and ") 
  (fun fmt (q,xs,ts) -> 
    fprintf fmt "%a(" pp_state q;
    pp_print_list
        ~pp_sep:(fun fmt () -> fprintf fmt ", ") 
        pp_ident fmt xs;
  fprintf fmt ") =@,@["; 
    pp_print_list 
      ~pp_sep:(fun fmt () -> fprintf fmt "@,") 
    (fun fmt t -> 
      fprintf fmt "@[<v>";
      pp_transition fmt t;
      fprintf fmt "@]") fmt ts) fmt l;
  fprintf fmt "@]@,@]in@,";
  pp_automaton fmt a;
  
  and pp_transition fmt (e,a') = 
  fprintf fmt "@[<v>if %a@,then %a"
    pp_atom e
    pp_automaton a';
   fprintf fmt "@]"

  let pp_prog fmt p =
    fprintf fmt "@[<v>";
    pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "@,||@,") 
        pp_automaton fmt p;
    fprintf fmt "@]";
end





(*
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

*)