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

  let pp_const fmt c =
    match c with 
    | Std_logic v -> 
        pp_std_logic fmt v
    | Bool b ->
        fprintf fmt "%b" b
    | Int n ->
        fprintf fmt "%d" n


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
    | Var x -> 
        pp_print_text fmt x
    | Const c -> 
        pp_const fmt c
    | Prim (Binop p,[a1;a2]) ->
        parenthesized ~paren fmt @@ fun () ->
          fprintf fmt "%a %a %a"
            (pp_atom_aux ~paren:true) a1
            pp_binop p
            (pp_atom_aux ~paren:true) a2
    | Prim (Unop p,[a]) -> 
        parenthesized ~paren fmt @@ fun () ->
          fprintf fmt "%a %a"
            pp_unop p
            (pp_atom_aux ~paren:true) a
    | Prim (Call s,args) ->
       fprintf fmt "call %s(%a)" s
       (pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",") 
         (pp_atom_aux ~paren:false)) args;
    | Prim (TyAnnot t,[a]) ->
       fprintf fmt "(%a : %a)" 
          (pp_atom_aux ~paren:false) a 
          Types.print_ty t
    | Prim(ArrayGet x,[idx]) ->
       fprintf fmt "%s[%a]" x
          (pp_atom_aux ~paren:false) idx
    | Prim(ArrayMake n,[a]) ->
       fprintf fmt "(%a)^%d"
          (pp_atom_aux ~paren:false) a n
    | _ -> ill_formed_constant_application ();
           assert false
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
        (fun fmt (x,idx_opt) ->
            match idx_opt with
            | None -> 
               pp_print_text fmt x
            | Some a -> 
               fprintf fmt "%s[%a]" x PP_atom.pp_atom a) fmt xs;
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

module PP_LI = struct
  
  open LI
  

let rec print_exp fmt e = 
  match e with
  | Var x -> 
      PP_atom.pp_ident fmt x
  | Const c -> 
      PP_atom.pp_const fmt c
  | Prim (Binop p,[e1;e2]) ->
      fprintf fmt "(%a %a @[<v>%a@])"
        print_exp e1
        PP_atom.pp_binop p
        print_exp e2
  | Prim (Unop p,[e]) ->
          fprintf fmt "(%a %a)"
            PP_atom.pp_unop p
            print_exp e
  | Prim _ -> 
      Atom.ill_formed_constant_application ();
      assert false
  | Seq(Assign(s),e) -> failwith "todo pprint_ast seq"
  | Let(bs,e) ->
      fprintf fmt "@[<v>let ";
      pp_print_list 
          ~pp_sep:(fun fmt () -> fprintf fmt "and ") 
           (fun fmt (x,e) -> 
               fprintf fmt "%s = %a" x print_exp e) fmt bs;
       fprintf fmt "@,@]@,in %a" print_exp e

   | LetRec(bs,e) ->
      fprintf fmt "@[<v 2>let rec ";
      pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "and ") 
        (fun fmt (x,xs,e) -> 
           fprintf fmt "%s(%s) =@,%a" x (String.concat "," xs) print_exp e) fmt bs;
       fprintf fmt "@,@]in %a" print_exp e
  | App(x,es) -> fprintf fmt "%s (%a)" x
                    (pp_print_list 
                       ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
                        print_exp) es
  | If(e1,e2,e3) -> 
     fprintf fmt "if %a@,then %a@,else %a@,"
       print_exp e1
       print_exp e2
       print_exp e3
  | RefAccess e -> 
      fprintf fmt "!(%a)"
        print_exp e
  | ArrayAccess{arr;idx} -> 
      fprintf fmt "(%a).(%a)"
        print_exp arr
        print_exp idx
end
