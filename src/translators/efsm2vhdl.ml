open Ast
open Format

let allow_heap_access = ref false
let allow_heap_assign = ref false

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

let is_ptr t = 
  match Types.canon t with
  | TCamlArray _ | TCamlRef _ | TCamlList _ | TPtr | TVar _ -> true
  | _ (* immediate value *) -> false

let c_atom fmt a = 
  let open Atom in
  let rec pp_atom ~paren fmt a =
    match a with 
    | Var x -> 
        pp_print_text fmt x
    | Const c -> 
        (match c with
         | Std_logic v -> 
             pp_std_logic fmt v
         | Bool b -> 
            fprintf fmt "%b" b
         | Int n -> 
            fprintf fmt "to_signed(%d,31)" n
         | Unit -> 
            pp_print_text fmt "UNIT_VALUE"
         | EmptyList -> 
            pp_print_text 
              fmt 
              "X\"00000001\"" (* constant 0 as immediate OCaml value *)
          )
    | Prim p -> 
     (match p with
      | (Binop p,[a1;a2]) ->
        parenthesized ~paren fmt @@ fun () ->
          let f = function Mul -> true | _ -> false in  
          fprintf fmt (if f p 
                       then "RESIZE((%a %a %a),31)" 
                       else "%a %a %a")
            (pp_atom ~paren:true) a1
            c_binop p
            (pp_atom ~paren:true) a2
     | (Unop p,[a]) -> 
        parenthesized ~paren fmt @@ fun () ->
          fprintf fmt "%a %a"
            c_unop p
            (pp_atom ~paren:true) a
     | (ArrayGet x,[idx]) ->
         fprintf fmt "%s(%a)" x (pp_atom ~paren:false) idx
     | (ArrayMake _,[init]) ->
         fprintf fmt "(others => %a)" (pp_atom ~paren:false) init
     | (TyAnnot _,[a]) -> 
         pp_atom ~paren fmt a 
     | (FromCaml t,[a]) -> 
          if is_ptr t 
          then pp_atom ~paren fmt a 
          else fprintf fmt "signed(%a(31 downto 1))" (pp_atom ~paren:true) a
     | (ToCaml t,[a]) -> 
          if is_ptr t 
          then pp_atom ~paren fmt a 
          else fprintf fmt "std_logic_vector(%a)& \"1\"" (pp_atom ~paren:true) a
     | (Call s,args) ->
         (match s,args with
         | ("%ref_contents" | "%list_head" | "%ref_addr"),[heap_base;addr] ->
              fprintf fmt "std_logic_vector(unsigned(%a) + unsigned(%a(19 downto 0)))"
                 (pp_atom ~paren:true) heap_base
                 (pp_atom ~paren:true) addr    (* !!! que faire si addr n'est pas une variable *)
         | ("%array_get" | "%array_addr_ofs"),[heap_base;addr;ofs] ->
              fprintf fmt "std_logic_vector(unsigned(%a) + unsigned(%a(19 downto 0)) + RESIZE(unsigned(%a(19 downto 0)) * 4,32))"
                 (pp_atom ~paren:true) heap_base
                 (pp_atom ~paren:true) addr       (* !!! idem ... *)
                 (pp_atom ~paren:true) ofs
         | "%array_hd",[heap_base;addr] ->
              fprintf fmt "std_logic_vector(unsigned(%a) + unsigned(%a(19 downto 0)) - 4)"
                 (pp_atom ~paren:true) heap_base
                 (pp_atom ~paren:true) addr       (* !!! idem ... *)
         | "%wosize_hd",[heap_base;addr] ->
              fprintf fmt "signed(\"00000000000\"&%a(21 downto 2))" (* "std_logic_vector(%a)(21 downto 2)) ...??" *)
                 (pp_atom ~paren:true) addr       (* !!! idem ... *)
         | "%list_tail",[heap_base;addr]  -> 
         fprintf fmt "std_logic_vector(unsigned(%a) + unsigned(%a(19 downto 0)) + 4)"
                 (pp_atom ~paren:true) heap_base
                 (pp_atom ~paren:true) addr
         | ("%magic_ptr"|"%ptr_magic"),[a] -> 
            pp_atom ~paren:true fmt a
         | _ -> assert false)
     | _ -> assert false) (* ill-formed primitive application *)
  in
  pp_atom ~paren:false fmt a

let c_next_state state_var fmt q = 
  fprintf fmt "%s <= %a;" state_var c_state q

let c_assign fmt s = 
  match s with
  | Inst.Assign bs ->
      pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "@,")
        (fun fmt ((x,o),a) -> 
            fprintf fmt "%s%a <= %a;" 
                  x (fun fmt o -> 
                       match o with 
                       | None -> ()
                       | Some a -> fprintf fmt "(%a)" c_atom a) o
                  c_atom a) fmt bs

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
    fprintf fmt "end if;@]"  (* else NULL; *)


let rec default_value fmt ty =
  let open Types in
  match ty with
  | TStd_logic -> pp_print_text fmt "-"
  | TBool -> pp_print_text fmt "false"
  | TInt -> pp_print_text fmt "to_signed(0,31)"
  | TUnit -> pp_print_text fmt "UNIT_VALUE"
  | TArray{ty;_} -> 
      fprintf fmt "(others => %a)" default_value ty 
  | TPtr | TCamlRef _ | TCamlArray _ | TCamlList _ | TVar _ -> 
      pp_print_text fmt "\"00000000000000000000000000000000\""
  | TSize n -> assert false
  (* | TVar _ -> assert false *)


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
  fprintf fmt "end if;";
  fprintf fmt "@]@,end process;@," (* fix indent *)

let rec c_ty fmt ty = 
  let open Types in
  match ty with
  | TStd_logic -> pp_print_text fmt "std_logic"
  | TBool -> pp_print_text fmt "boolean"
  | TUnit -> pp_print_text fmt "unit"
  | TInt -> fprintf fmt "@[<h>caml_int@]"
  | (TCamlRef _ | TCamlArray _ | TCamlList _ | TPtr | TVar _) -> 
       pp_print_text fmt "caml_value"
  | TArray{ty;size} -> (* 
    pp_print_text fmt "todo_array" *)
      fprintf fmt "array_%a_%a" c_ty ty c_ty size
  | TSize n -> fprintf fmt "%d" n


(* à mettre en argument de c_prog *)
let outputs_initial_values = 
  Atom.[("rdy",Std_logic Zero);("avm_rm_read",Std_logic Zero)]


let c_prog ?(reset="reset") ?(clock="clk") 
           ?(name="Main") (envi,envo,l_locals) fmt automata = 
  fprintf fmt "@[<v>library ieee;@,";
  fprintf fmt "use ieee.std_logic_1164.all;@,";
  fprintf fmt "use ieee.numeric_std.all;@,";
  fprintf fmt "use work.misc_%s.all;@,@," name;
  fprintf fmt "@[<v 2>entity %s is@," name;
  fprintf fmt "port(@[<v>signal %s : in std_logic;@," clock;
  fprintf fmt "signal %s : in std_logic" reset;
  
  List.iter (fun (x,ty) ->
      fprintf fmt ";@,signal %s : in %a" x 
        c_ty ty) envi;

  List.iter (fun (x,ty) ->
      fprintf fmt ";@,signal %s : out %a" x 
        c_ty ty;
      match List.assoc_opt x outputs_initial_values with
      | None -> ()
      | Some c -> fprintf fmt " := %a" c_atom (Const c)) envo;
  
  fprintf fmt ");@]@]@,";
  fprintf fmt "end entity;@,";
  fprintf fmt "@[<v 2>architecture RTL of %s is@," name;

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

  Misc.list_iter3 (fun st_reg locals a -> 
               c_automaton ~reset ~clock st_reg locals fmt a) 
    state_vars 
    l_locals 
    automata;
  


  fprintf fmt "@]@,end architecture;@]@."

