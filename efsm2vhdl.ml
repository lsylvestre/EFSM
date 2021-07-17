open Ast
open Format

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
      let bs' = List.filter 
                  (function 
                   | (x,Atom.Var x') -> x <> x'
                   | _ -> true) bs 
      in
      pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt "@,") 
        (fun fmt (x,a) -> fprintf fmt "%s <= %a;" x c_atom a) fmt bs'

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


let default_value fmt ty =
  let open Types_efsm in
  match ty with
  | TStd_logic -> pp_print_text fmt "-"
  | TBool -> pp_print_text fmt "false"
  | TInt -> pp_print_text fmt "0"
  | TVar _ -> assert false


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


let c_ty fmt ty = 
  let open Types_efsm in
  match ty with
  | TStd_logic -> pp_print_text fmt "std_logic"
  | TBool -> pp_print_text fmt "boolean"
  | TInt -> pp_print_text fmt "integer"
  | TVar _ -> assert false

let c_prog ?(reset="reset") ?(clock="clk") 
           ?(entity_name="Main") (envi,envo,l_locals) fmt automata = 
  fprintf fmt "@[<v>library ieee;@,";
  fprintf fmt "use ieee.std_logic_1164.all;@,";
  fprintf fmt "use ieee.numeric_std.all;@,@,";
  fprintf fmt "@[<v 2>entity %s is@," entity_name;
  fprintf fmt "port(@[< v>signal %s : in std_logic;@," clock;
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

  Misc.list_iter3 (fun st_reg locals a -> 
               c_automaton ~reset ~clock st_reg locals fmt a) 
    state_vars 
    l_locals 
    automata;
  
  fprintf fmt "@]@,end architecture;@]@."


  (* ***************************************** *)


let bin_of_int ?(pad=4) d =
  if d < 0 || pad < 1 then invalid_arg "bin_of_int" else
  let open Bytes in
  let b = make pad '0' in
  let rec aux d i =
    if d >= 0 && i >= 0 then 
      (set b i (Char.chr ((d land 1) + Char.code '0'));
       aux (d lsr 1) (i-1))
    else ()
  in
  aux d (pad-1);
  to_string b

let conversion_from_vect ty fmt data =
  let open Types_efsm in
  match ty with
  | TStd_logic -> 
      fprintf fmt "%s(0)" data
  | TBool -> 
      fprintf fmt "(%s(0)) = '1'" data
  | TInt -> 
      fprintf fmt "to_integer(unsigned(%s))" data
  | TVar _ -> assert false

let set_result dst ty fmt data =
  let open Types_efsm in
  match ty with
  | TStd_logic -> 
      fprintf fmt "%s <= \"0000000000000000000000000000000\" & %s" dst data
  | TBool -> 
      fprintf fmt "@[<v 2>if %s then@," data;
      fprintf fmt "%s <= \"00000000000000000000000000000001\";@]@," dst;
      fprintf fmt "@[<v 2>else@,%s <= \"00000000000000000000000000000000\";@]@," dst;
  | TInt -> 
      fprintf fmt "%s <= std_logic_vector(to_unsigned(%s,%s'length))" dst data dst
  | TVar _ -> assert false



let gen_cc fmt (envi,envo,_) name =
  (* assume : ("start",_) in envi && ("rdy",_) in envo *)
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  let envo = List.filter (fun (x,_) -> x <> "rdy") envo in
  fprintf fmt "@[<v>-- AVALON MM-slave wrapper around the core %s IP@," name;
  fprintf fmt "library IEEE;@,";
  fprintf fmt "use IEEE.std_logic_1164.all;@,";
  fprintf fmt "use IEEE.numeric_std.all;@,@,";

  fprintf fmt "@[<v 2>entity avs_%s is@," name;
  fprintf fmt "port (@[< v>";
  fprintf fmt "@[<v 2>avs_s0_address : in std_logic_vector(3 downto 0)  := (others => '0');@,"; 
  fprintf fmt "-- 0000  : control/status register (b1=start, b0=rdy)@,";
  List.iteri (fun i (x,_) ->
    fprintf fmt "-- %s  : %s register@," (bin_of_int (i+1)) x) (envi@envo);
  fprintf fmt "@]@,avs_s0_read        : in  std_logic                     := '0';@,";
  fprintf fmt "avs_s0_readdata    : out std_logic_vector(31 downto 0);@,";
  fprintf fmt "avs_s0_write       : in  std_logic                     := '0';@,";           
  fprintf fmt "avs_s0_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');@,";
  fprintf fmt "clock_clk          : in  std_logic                     := '0';@,";         
  fprintf fmt "reset_reset        : in  std_logic                     := '0');@]@]@,";       
  fprintf fmt "end entity;@,@,";
  fprintf fmt "@[<v 2>architecture rtl of avs_%s is@," name;
  fprintf fmt "@[<v 2>component %s is@," name;
  fprintf fmt "port (@[< v>";
  fprintf fmt "signal clk : in std_logic;@,";
  fprintf fmt "signal reset : in std_logic;@,";
  fprintf fmt "signal start : in std_logic;@,";
  fprintf fmt "signal rdy : out std_logic;@,";
  List.iter (fun (x,t) -> fprintf fmt "signal %s: in %a;@," x c_ty t) envi;
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ";@,") 
        (fun fmt (x,t) -> fprintf fmt "signal %s: out %a" x c_ty t) fmt envo;
  fprintf fmt ");@]@]@,";
  fprintf fmt "end component;@,@,";
  List.iter (fun (x,t) -> fprintf fmt "signal %s: %a;@," x c_ty t) envi;
  List.iter (fun (x,t) -> fprintf fmt "signal %s: %a;@," x c_ty t) envo;
  fprintf fmt "signal start: std_logic;@]@,";
  fprintf fmt "signal rdy: std_logic;@]@,";
  fprintf fmt "type write_state_t is (Idle, StartAsserted);@,";
  fprintf fmt "signal write_state: write_state_t;@]@,";
  fprintf fmt "@[<v 2>begin@,";
  fprintf fmt "@[<v 2>%s_CC : component %s@," name name;
  fprintf fmt "port map (@[< v>";
  fprintf fmt "clk => clock_clk,@,";
  fprintf fmt "reset => reset_reset,@,";
  fprintf fmt "start => start,@,";
  fprintf fmt "rdy => rdy,@,";
  List.iter (fun (x,_) -> fprintf fmt "%s => %s,@," x x) envi;
    pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,_) -> fprintf fmt "%s => %s" x x) fmt envo;
  fprintf fmt "@]);@]@,@,";
  fprintf fmt "WRITE: process (clock_clk, reset_reset)@,";
  fprintf fmt "@[<v 2>begin@,";
  fprintf fmt "@[<v 2>if reset_reset = '1' then@,";
  fprintf fmt "write_state <= Idle;@]@,";
  fprintf fmt "@[<v 2>elsif rising_edge(clock_clk) then@,";
  fprintf fmt "@[<v 2>case write_state is@,";
  fprintf fmt "@[<v 2>when StartAsserted =>@,";
  fprintf fmt "start <= '0';@,";      
  fprintf fmt "write_state <= Idle;@]@,";
  fprintf fmt "@[<v 2>when Idle =>@,";
  fprintf fmt "@[<v 2>if avs_s0_write = '1' then@,";
  fprintf fmt "@[<v 2>case avs_s0_address is@,";
  fprintf fmt "@[<v 2>when \"0000\" => -- writing CSR asserts start  for one clock period@,";
  fprintf fmt "start <= '1';@,";  
  fprintf fmt "write_state <= StartAsserted;@]@,";
  
  List.iteri (fun i (x,ty) -> 
   fprintf fmt "@[<v 2>when \"%s\" => %s <= %a;@]@,"
       (bin_of_int (i+1)) x (conversion_from_vect ty) "avs_s0_writedata") envi;

  fprintf fmt "when others => NULL;@]@,";
  fprintf fmt "end case;@]@,";
  fprintf fmt "end if;@]@,";
  fprintf fmt "end case;@]@,";
  fprintf fmt "end if;@]@,";
  fprintf fmt "end process;@]@,";
  fprintf fmt "READ: process (clock_clk)@,";
  fprintf fmt "@[<v 2>begin@,";
  fprintf fmt "@[<v 2>if rising_edge(clock_clk) then@,";
  fprintf fmt "@[<v 2>if avs_s0_read = '1' then@,";
  fprintf fmt "@[<v 2>case avs_s0_address is@,";
  fprintf fmt "when \"%s\" => @[<v>avs_s0_readdata <= \"0000000000000000000000000000000\" & rdy;@," (bin_of_int 0);
  fprintf fmt "-- when reading CSR, bit 0 is rdy@]@,";
  
  List.iteri (fun i (x,ty) -> 
   fprintf fmt "@[<v 2>when \"%s\" => %a;@]@,"
       (bin_of_int (i+1)) (set_result "avs_s0_readdata" ty) x) (envi@envo);

  fprintf fmt "when others => null;@,";
  fprintf fmt "end case;@]@,";
  fprintf fmt "end if;@]@,";
  fprintf fmt "end if;@]@,";
  fprintf fmt "end process;@]@,";
  fprintf fmt "end architecture;@]@,"

let t_val ty =
 let open Types_efsm in
  match ty with
  | TStd_logic
  | TBool -> "Bool_val" 
  | TInt -> "Int_val"
  | TVar _ -> assert false

let mk_platform_bindings fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  (* ne gère pas les sorties multiples *)
  fprintf fmt "@[<v>@[<v 2>value caml_nios_%s_cc(" name;
  fprintf fmt "@[<hov>";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,_) -> fprintf fmt "value %s" x) fmt envi;
  fprintf fmt "@]) {@,";
  fprintf fmt "return Val_int(nios_%s_cc(" name;
  fprintf fmt "@[<hov>";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,ty) -> fprintf fmt "%s(%s)" (t_val ty) x) fmt envi; 
  fprintf fmt "@]));";
  fprintf fmt "@]@,}@,@]"


let t_C ty =
 let open Types_efsm in
  match ty with
  | TStd_logic
  | TBool
  | TInt -> "int"
  | TVar _ -> assert false

let up = String.uppercase_ascii
let low = String.lowercase_ascii

let mk_platform_c fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  let envo = List.filter (fun (x,_) -> x <> "rdy") envo in
  (* rdy : Control/status register for the custom component *)
  let upName = up name in
  fprintf fmt "@[<v>";
  fprintf fmt "#define %s_CC_CTL 0@," upName;
  List.iteri (fun i (x,_) -> 
    fprintf fmt "#define %s_CC_%s %d@," upName (up x) (i+1)) (envi@envo);

  fprintf fmt "@,@[<v 2>int nios_%s_cc(" (low name);
  fprintf fmt "@[<hov>";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,t) -> fprintf fmt "%s %s" (t_C t) (low x)) fmt envi;
  fprintf fmt "@]){@,";
  fprintf fmt "alt_u32 r;@,";
  fprintf fmt "r = IORD(%s_CC_BASE, %s_CC_CTL); // Get RDY status by reading control/status reg@,"
         upName upName;
  fprintf fmt "if ( !r ) return 0;";
  fprintf fmt "// Write arguments@,";
  List.iter (fun (x,_) -> 
    fprintf fmt "IOWR(%s_CC_BASE, %s_CC_%s, %s);@," upName upName (up x) (low x)) envi;  
  fprintf fmt "@,IOWR(%s_CC_BASE, %s_CC_CTL, 1);" upName upName;
  fprintf fmt "@,@[<v 2>while ( (r = IORD(%s_CC_BASE, %s_CC_CTL)) == 0 ); // Wait for rdy@," upName upName;
  fprintf fmt "r = IORD(%s_CC_BASE, %s_CC_RESULT); // Read result@," upName upName;
  fprintf fmt "return r;@]";
  fprintf fmt "@]@,}@,@]"

let mk_platform_h fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  fprintf fmt "@[<hov>int nios_%s_cc(" (low name);
  fprintf fmt "@[<hov>";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,t) -> fprintf fmt "%s %s" (t_C t) (low x)) fmt envi;
  fprintf fmt "@]);@]@,"

let mk_simul_c fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  fprintf fmt "@[<v>@[<v 2>int nios_%s_cc(" (low name);
  fprintf fmt "@[<hov>";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,t) -> fprintf fmt "%s %s" (t_C t) (low x)) fmt envi;
  fprintf fmt "@]){@,";
  fprintf fmt "@[<hov>printf(\"nios_gcd_cc(";
  pp_print_list 
    ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
    (fun fmt _ -> fprintf fmt "%s" "%d") fmt envi;
  fprintf fmt "%s" ")\\n\"";
  List.iter (fun (x,t) -> fprintf fmt ", %s" (low x)) envi;
  fprintf fmt ");@]@,";
  fprintf fmt "return 1;@,@]";
  fprintf fmt "@]@,}@,@]"

let mk_simul_h = mk_platform_h

let t_ML ty =
  let open Types_efsm in
  match ty with
  | TStd_logic
  | TBool -> "bool"
  | TInt -> "int"
  | TVar _ -> assert false


(* pour le moment, on ignore les résultats multiples. 
   Les entrées du circuits appraissent dans la signature ml 
   sous-forme d'arguments étiquettés (labels).
   S'il n'y a aucune entrée, l'externals est de type [unit -> t],
   i.e. on rajoute un argument unit pour obtenir un type effectivement fonctionnel. *)

let mk_platform_ml fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  let tres = List.assoc "result" envo in
  fprintf fmt "@[<v>@[<v 2>module %s = struct@," (String.capitalize_ascii name);
  fprintf fmt "@[<hov>external %s : " (low name);
  List.iter (fun (x,t) -> fprintf fmt "%s:%s -> " (low x) (t_ML t)) envi;
  if envi = [] then fprintf fmt "unit -> ";
  fprintf fmt "%s = \"caml_nios_%s_cc\" %s@]" (t_ML tres)  (low name) "[@@noalloc]";
  fprintf fmt "@]@,end@,@]"

let mk_platform_mli fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  let tres = List.assoc "result" envo in
  fprintf fmt "@[<v>@[<v 2>module %s : sig@," (String.capitalize_ascii name);
  fprintf fmt "@[<hov>external %s : " (low name);
  List.iter (fun (x,t) -> fprintf fmt "%s:%s -> " (low x)  (t_ML t)) envi;
  if envi = [] then fprintf fmt "unit -> ";
  fprintf fmt "%s = \"caml_nios_%s_cc\" %s@]" (t_ML tres)  (low name) "[@@noalloc]";
  fprintf fmt "@]@,end@,@]"

