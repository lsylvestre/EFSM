open Ast
open Format

let rec list_iter3 f l1 l2 l3 =
  match (l1, l2,l3) with
    ([], [],[]) -> ()
  | (a1::l1, a2::l2, a3::l3) -> f a1 a2 a3; list_iter3 f l1 l2 l3
  | (_, _, _) -> invalid_arg "list_iter3"


let c_binop fmt p = 
  let open Atom in
  pp_print_text fmt @@
  match p with
  | Add -> "+"
  | Sub -> "-"
  | Mul -> "*"
  | Lt -> "<"
  | Le -> "<="
  | Gt -> ">"
  | Ge -> ">="
  | Eq -> "="
  | Neq -> "/="
  | And -> "and"
  | Or -> "or"

let c_unop fmt p = 
  let open Atom in
  pp_print_text fmt @@
  match p with
  | Not -> "not"
  | Uminus -> "-"

let c_state fmt q = 
  pp_print_text fmt (String.uppercase_ascii q)

let pp_std_logic fmt v = 
  let open Atom in
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

let parenthesized ~paren fmt cb = 
  if paren then fprintf fmt "("; 
  cb (); 
  if paren then fprintf fmt ")" 

let c_atom fmt a = 
  let rec pp_atom ~paren fmt a =
    match a with 
    | Atom.Var x -> 
        pp_print_text fmt x
    | Atom.Prim c -> 
        (match c with
         | Std_logic v -> 
             pp_std_logic fmt v
         | Bool b -> 
            fprintf fmt "%b" b
         | Int n -> 
            fprintf fmt "%d" n
         | Binop(p,a1,a2) ->
            parenthesized ~paren fmt @@ fun () ->
              fprintf fmt "%a %a %a"
                (pp_atom ~paren:true) a1
                c_binop p
                (pp_atom ~paren:true) a2
         | Unop(p,a) -> 
            parenthesized ~paren fmt @@ fun () ->
              fprintf fmt "%a %a"
                c_unop p
                (pp_atom ~paren:true) a)
  in
  pp_atom ~paren:false fmt a

let c_next_state state_var fmt q = 
  fprintf fmt "%s <= %a;" state_var c_state q

let c_assign fmt s = 
  match s with
  | Inst.Assign bs ->
      pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "@,") 
        (fun fmt (x,a) -> fprintf fmt "%s <= %a;" x c_atom a) fmt bs

let c_transitions state_var fmt (q,ts) =
  match ts with 
  | [] -> fprintf fmt "@,when %a => NULL;" c_state q;
  | (a,s,q')::ts' -> 
    fprintf fmt "@,@[<v 2>when %a =>@," c_state q;
    
    fprintf fmt "@[<v 2>if %a then@,%a@,%a@]@,"
        c_atom a 
        c_assign s
        (c_next_state state_var) q';

    List.iter (fun (a,s,q') -> 
      fprintf fmt "@[<v 2>elsif %a then@,%a@,%a@]@,"
        c_atom a 
        c_assign s
        (c_next_state state_var) q'
    ) ts';
    fprintf fmt "else NULL;@,end if;@]"


let rec default_value fmt ty = 
  let open Typing_efsm in
  match ty with
  | TStd_logic -> pp_print_text fmt "-"
  | TBool -> pp_print_text fmt "false"
  | TInt -> pp_print_text fmt "0"
  | TVar {contents=Ty t} -> default_value fmt t
  | _ -> assert false (* todo *)
  


let c_automaton ~reset ~clock state_var locals fmt (EFSM.Automaton l) =
  let q0 = 
    match l with 
    | [] -> assert false (* les FSM doivent être non vide *)
    | (q0,_)::_ -> q0 
  in
  fprintf fmt "@[<v 2>process(%s,%s) begin@," reset clock;
  fprintf fmt "@[<v 2>if %s = '1' then@," reset;
  fprintf fmt "@[<v 2>%s <= %a;" state_var c_state q0;
  List.iter (fun (x,ty) -> 
              fprintf fmt "@,%s <= %a;" x default_value ty) 
           locals;
  fprintf fmt "@]@]@,";
  fprintf fmt "@[<v 2>elsif rising_edge(%s) then@," clock;
  fprintf fmt "@[<v 2>case %s is" state_var;
  List.iter (c_transitions state_var fmt) l;
  fprintf fmt "@]@,end case;@]@,";
  fprintf fmt "@]end if;@,";
  fprintf fmt "@]end process;@," (* fix indent *)


let rec c_ty fmt ty = 
  let open Typing_efsm in
  match ty with
  | TStd_logic -> pp_print_text fmt "std_logic"
  | TBool -> pp_print_text fmt "boolean"
  | TInt -> pp_print_text fmt "integer"
  | TVar {contents=Ty t} -> c_ty fmt t
  | _ -> assert false (* todo *)



let c_prog ?(reset="reset") ?(clock="clock") ?(entity_name="Main") (envi,envo,l_locals) fmt automata = 
  fprintf fmt "@[<v>library ieee;@,";
  fprintf fmt "use ieee.std_logic_1164.all;@,";
  fprintf fmt "use ieee.numeric_std.all;@,@,";
  fprintf fmt "@[<v 2>entity %s is@," entity_name;
  fprintf fmt "port(@[< v 0>signal %s : in std_logic;@," clock;
  fprintf fmt "signal %s : in std_logic" reset;
  
  List.iter (fun (x,ty) ->
      fprintf fmt ";@,signal %s : in %a" x 
        c_ty ty) envi;

  List.iter (fun (x,ty) ->
      fprintf fmt ";@,signal %s : out %a" x 
        c_ty ty) envo;
  
  fprintf fmt ");@]@]@,";
  fprintf fmt "end entity;@,";
  fprintf fmt "@[<v 2>architecture RTL of %s is@," entity_name;

  List.iter (fun l ->
    List.iter (fun (x,ty) ->
      fprintf fmt "signal %s : %a;@," x 
        c_ty ty) l) l_locals;

  let state_vars = List.map (fun _ -> Gensym.gensym "state") automata in
  List.iter2 (fun sv (EFSM.Automaton l) ->
    let qs = List.map fst l in
    fprintf fmt "@,type %s_T is (@[<hov>" sv;
    pp_print_list ~pp_sep:(fun fmt () -> fprintf fmt ", @,") c_state fmt qs;
    fprintf fmt ");@]@,";
    fprintf fmt "signal %s : %s_T;" sv sv;
  )
    state_vars automata;
  fprintf fmt "@]@,";
  fprintf fmt "@[<v 2>begin@,";

  list_iter3 (fun st_reg locals a -> 
               c_automaton ~reset ~clock st_reg locals fmt a) 
    state_vars 
    l_locals 
    automata;
  
  fprintf fmt "@]end architecture;@]"
