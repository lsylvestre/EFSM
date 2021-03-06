open Format
open Efsm2vhdl

  (* ***************************************** *)

let mk_package name fmt = 
  fprintf fmt "@[<v>library ieee;@,";
  fprintf fmt "use ieee.std_logic_1164.all;@,";
  fprintf fmt "use ieee.numeric_std.all;@,@,";
  fprintf fmt "@[<v 2>package misc_%s is@," name;
  fprintf fmt "type UNIT is (UNIT_VALUE);@,";
  fprintf fmt "subtype caml_value is std_logic_vector(31 downto 0);@,";
  fprintf fmt "subtype caml_ptr is std_logic_vector(31 downto 0);@,";
  fprintf fmt "subtype caml_int is signed(30 downto 0);@,";

  let l = Typing_efsm.sort_array_type_decl () in
  List.iter Types.(function
  | TArray{ty;size=TSize n} as ta ->  
    fprintf fmt "type %a is array (%a range 0 to %d) of caml_int;@,"
      c_ty ta
      c_ty ty
      (n-1)
  | _ -> assert false) l;

  fprintf fmt "@]@,end;@,";
  fprintf fmt "package body misc_%s is@," name;
  fprintf fmt "end;@,@."

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

let conversion_from_vect ty fmt x =
  let open Types in
  match ty with
  | TStd_logic -> 
      fprintf fmt "%s(0)" x
  | TBool ->
      fprintf fmt "(%s(0)) = '1'" x
  | TInt ->
      fprintf fmt "signed(%s(30 downto 0))" x
  | TUnit ->
      pp_print_text fmt "UNIT_VALUE"
  | (TCamlRef _ | TCamlArray _ | TCamlList _ | TVar _) -> 
      pp_print_text fmt x
  | TArray _ -> failwith "todo conversion_from_vect array" (* nécessaire ? *)
  | TSize _ -> assert false
  | TPtr -> assert false

let set_result dst ty fmt x =
  let open Types in
  match ty with
  | TStd_logic -> 
      fprintf fmt "%s <= X\"0000000\" & \"000\" & %s" dst x
  | TBool -> 
      fprintf fmt "@[<v 2>if %s then@," x;
      fprintf fmt "%s <= X\"00000001\";@]@," dst;
      fprintf fmt "@[<v 2>else@,%s <= X\"00000000\";@]@,end if" dst;
  | TInt -> 
      fprintf fmt "%s <= \"0\" & std_logic_vector(%s)" dst x
  | TUnit -> 
      fprintf fmt "%s <= X\"00000001\"" dst
  | (TCamlRef _ | TCamlArray _ | TCamlList _ | TVar _) -> fprintf fmt "%s <= %s" dst x
  | TPtr -> assert false
  | TArray _ -> pp_print_text fmt "TODO!!!!!!!!!!!!!?"
  | TSize _ -> assert false



let gen_cc fmt (envi,envo,_) (envi',envo',_) name =
  (* assume : ("start",_) in envi && ("rdy",_) in envo *)
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  let envo = List.filter (fun (x,_) -> x <> "rdy") envo in
  fprintf fmt "@[<v>-- AVALON MM-slave wrapper around the core %s IP@," name;
  fprintf fmt "library IEEE;@,";
  fprintf fmt "use IEEE.std_logic_1164.all;@,";
  fprintf fmt "use IEEE.numeric_std.all;@,";
  fprintf fmt "use work.misc_%s.all;@,@," name;
  fprintf fmt "@[<v 2>entity avs_%s is@," name;
  fprintf fmt "port (@[< v>";
  fprintf fmt "@[<v 2>avs_s0_address : in std_logic_vector(3 downto 0)  := (others => '0');@,"; 
  fprintf fmt "-- 0000  : control/status register (b1=start, b0=rdy)@,";
  let regs = envi'@envo' in
  let len = List.length regs in
  List.iteri (fun i (x,t) ->
    fprintf fmt "-- %s  : %s register@," (bin_of_int (i+1)) x) regs;

  (if !allow_heap_access || !allow_heap_assign then 
    fprintf fmt "-- %s  : caml_heap_base register@," (bin_of_int (len+1)));

  fprintf fmt "@]@,avs_s0_read        : in  std_logic                     := '0';@,";
  fprintf fmt "avs_s0_readdata    : out std_logic_vector(31 downto 0);@,";
  fprintf fmt "avs_s0_write       : in  std_logic                     := '0';@,";           
  fprintf fmt "avs_s0_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');@,";
  fprintf fmt "clock_clk          : in  std_logic                     := '0';@,";         
  fprintf fmt "reset_reset        : in  std_logic                     := '0'";
  
  if !allow_heap_access then begin
    fprintf fmt ";@,@,-- READ MASTER INTERFACE@,";
    fprintf fmt "avm_rm_address   : out std_logic_vector(31 downto 0);@,";                 
    fprintf fmt "avm_rm_read      : out std_logic;@,";                                    
    fprintf fmt "avm_rm_readdata  : in std_logic_vector(31 downto 0);@,";
    fprintf fmt "avm_rm_waitrequest : in std_logic@,";
  end;

  if !allow_heap_assign then begin
    fprintf fmt ";@,@,-- WRITE MASTER INTERFACE@,";
    fprintf fmt "avm_wm_address   : out std_logic_vector(31 downto 0);@,";                 
    fprintf fmt "avm_wm_write      : out std_logic;@,";                                    
    fprintf fmt "avm_wm_writedata  : out std_logic_vector(31 downto 0);@,";
    fprintf fmt "avm_wm_waitrequest : in std_logic@,";
  end;

  fprintf fmt ");@]@]@,";
  fprintf fmt "end entity;@,@,";
  fprintf fmt "@[<v 2>architecture rtl of avs_%s is@," name;
  fprintf fmt "@[<v 2>component %s is@," name;
  fprintf fmt "port (@[< v>";
  fprintf fmt "signal clk : in std_logic;@,";
  fprintf fmt "signal reset : in std_logic;@,";
  fprintf fmt "signal start : in std_logic;@,";
  fprintf fmt "signal rdy : out std_logic;@,";
  
  if !allow_heap_access || !allow_heap_assign then begin
    fprintf fmt "signal caml_heap_base   : in std_logic_vector(31 downto 0);@,";
  end;

  if !allow_heap_access then begin
    fprintf fmt "signal avm_rm_address   : out std_logic_vector(31 downto 0);@,";
    fprintf fmt "signal avm_rm_read      : out std_logic;@,";                                    
    fprintf fmt "signal avm_rm_readdata  : in std_logic_vector(31 downto 0);@,";
    fprintf fmt "signal avm_rm_waitrequest : in std_logic;@,";
  end;

  if !allow_heap_assign then begin
    fprintf fmt "signal avm_wm_address   : out std_logic_vector(31 downto 0);@,";
    fprintf fmt "signal avm_wm_write      : out std_logic;@,";                                    
    fprintf fmt "signal avm_wm_writedata  : out std_logic_vector(31 downto 0);@,";
    fprintf fmt "signal avm_wm_waitrequest : in std_logic;@,";
  end;

  List.iter (fun (x,t) -> fprintf fmt "signal %s: in %a;@," x c_ty t) envi';
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ";@,") 
        (fun fmt (x,t) -> fprintf fmt "signal %s: out %a" x c_ty t) fmt envo';
  fprintf fmt ");@]@]@,";
  fprintf fmt "end component;@,@,";
  
  List.iter (fun (x,t) -> fprintf fmt "signal %s: %a;@," x c_ty t) envi';
  List.iter (fun (x,t) -> fprintf fmt "signal %s: %a;@," x c_ty t) envo';

  fprintf fmt "signal start: std_logic;@]@,";
  fprintf fmt "signal rdy: std_logic;@]@,";
  fprintf fmt "type write_state_t is (Idle, StartAsserted);@,";
  fprintf fmt "signal write_state: write_state_t;@]@,";
  
  if !allow_heap_access || !allow_heap_assign then 
    fprintf fmt "signal caml_heap_base : std_logic_vector(31 downto 0);@,";

  fprintf fmt "@[<v 2>begin@,";
  fprintf fmt "@[<v 2>%s_CC : component %s@," name name;
  fprintf fmt "port map (@[< v>";
  fprintf fmt "clk => clock_clk,@,";
  fprintf fmt "reset => reset_reset,@,";
  fprintf fmt "start => start,@,";
  fprintf fmt "rdy => rdy,@,";
(*
  fprintf fmt "avm_rm_address => avm_rm_address,@,";
  fprintf fmt "avm_rm_read => avm_rm_read,@,";
  fprintf fmt "avm_rm_readdata => avm_rm_readdata,@,";
  fprintf fmt "avm_rm_waitrequest => avm_rm_waitrequest,@,";
  *)
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
       (bin_of_int (i+1)) x (conversion_from_vect ty) "avs_s0_writedata") envi';
  
  (if !allow_heap_access || !allow_heap_assign then
    fprintf fmt "@[<v 2>when \"%s\" => caml_heap_base <= avs_s0_writedata;@]@," 
             (bin_of_int (len+1)));

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
  fprintf fmt "when \"%s\" => @[<v>avs_s0_readdata <= X\"0000000\" & \"000\" & rdy;@," (bin_of_int 0);
  fprintf fmt "-- when reading CSR, bit 0 is rdy@]@,";
  
  List.iteri (fun i (x,ty) -> 
   fprintf fmt "@[<v 2>when \"%s\" => %a;@]@,"
       (bin_of_int (i+1)) (set_result "avs_s0_readdata" ty) x) (envi'@envo');

  fprintf fmt "when others => null;@,";
  fprintf fmt "end case;@]@,";
  fprintf fmt "end if;@]@,";
  fprintf fmt "end if;@]@,";
  fprintf fmt "end process;@]@,";
  fprintf fmt "end architecture;@]@,"

let t_val ty fmt x =
 let open Types in
  match ty with
  | TStd_logic
  | TBool -> fprintf fmt "Bool_val(%s)" x
  | TInt -> fprintf fmt "Int_val(%s)" x
  | TUnit -> fprintf fmt "Bool_val(%s)" x (* I use Bool_val to construct unit value *)
  | (TCamlRef _ | TCamlArray _ | TCamlList _ | TVar _) -> pp_print_text fmt x
  | TArray _ -> pp_print_text fmt "TODO!!!!!!!!!!!!?"
  | TPtr -> assert false
  | TSize _ -> assert false

let val_t ty fmt cb =
  let open Types in
  fprintf fmt "return ";
  match ty with 
  | TInt | TBool -> (* immediate *)
      pp_print_text fmt "Val_int(";
      cb fmt;
      pp_print_text fmt ")"
  | _ -> (* already a value *) 
      cb fmt

let mk_platform_bindings fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  (* ne gère pas les sorties multiples *)
  fprintf fmt "@[<v>@[<v 2>uint32_t caml_nios_%s_cc(" name;
  fprintf fmt "@[<hov>";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,_) -> fprintf fmt "uint32_t %s" x) fmt envi;
  fprintf fmt "@]) {@,";
  val_t (List.assoc "result" envo) fmt (fun fmt ->  
    fprintf fmt "nios_%s_cc(" name;
    fprintf fmt "@[<hov>";
    pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,ty) -> t_val ty fmt x) fmt envi; 
    fprintf fmt "@]");
  fprintf fmt ");";
  fprintf fmt "@]@,}@,@]"


let t_C ty =
 let open Types in
  match ty with
  | TStd_logic
  | TBool
  | TInt
  | TUnit -> "int"
  | (TCamlRef _ | TCamlArray _ | TCamlList _ | TVar _) -> "uint32_t"
  | TPtr -> assert false
  | TArray _ -> "TODO!!!!!!!!!!!!?"
  | TSize _ -> assert false

let up = String.uppercase_ascii
let low = String.lowercase_ascii

let mk_platform_c fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  let envo = List.filter (fun (x,_) -> x <> "rdy") envo in
  (* rdy : Control/status register for the custom component *)
  let upName = up name in
  fprintf fmt "@[<v>";
  fprintf fmt "#define %s_CC_CTL 0@," upName;
  
  let regs = envi@envo in
  List.iteri (fun i (x,_) -> 
    fprintf fmt "#define %s_CC_%s %d@," upName (up x) (i+1)) regs;
  
  if !allow_heap_access || !allow_heap_assign then
    fprintf fmt "#define %s_CC_CAML_HEAP_BASE %d@," upName (List.length regs + 1);

  fprintf fmt "@,@[<v 2>int nios_%s_cc(" (low name);
  fprintf fmt "@[<hov>";
  pp_print_list 
        ~pp_sep:(fun fmt () -> fprintf fmt ",@,") 
        (fun fmt (x,t) -> fprintf fmt "%s %s" (t_C t) (low x)) fmt envi;
  fprintf fmt "@]){@,";
  fprintf fmt "alt_u32 result;@,";
  (* fprintf fmt "@[<v 2>while (!IORD(%s_CC_BASE, %s_CC_CTL))@," upName upName;
  fprintf fmt "; // Get RDY status by reading control/status reg@]@,";  *)
  fprintf fmt "// Write arguments@,";
  List.iter (fun (x,_) -> 
    fprintf fmt "IOWR(%s_CC_BASE, %s_CC_%s, %s);@," upName upName (up x) (low x)) envi;  
  
  if !allow_heap_access || !allow_heap_assign then 
    fprintf fmt "IOWR(%s_CC_BASE, %s_CC_CAML_HEAP_BASE, ocaml_ram_heap);@," upName upName;

  fprintf fmt "@,IOWR(%s_CC_BASE, %s_CC_CTL, 1);" upName upName;

  fprintf fmt "@,IOWR(%s_CC_BASE, %s_CC_CTL, 1); // to be improved" upName upName; 
  (* pas très heureux, besoin d'écrire deux fois start, 
     sinon à l'instruction suivante, le rdy est potentiellement toujours à 0 *)

  fprintf fmt "@,@,while ( (result = IORD(%s_CC_BASE, %s_CC_CTL)) == 0 ); // Wait for rdy@," upName upName;
  fprintf fmt "result = IORD(%s_CC_BASE, %s_CC_RESULT); // Read result@," upName upName;
  fprintf fmt "return result;@]";
  fprintf fmt "@,@]}@,@]@."

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
  
  if !allow_heap_access || !allow_heap_assign then 
    fprintf fmt ", caml_heap_base";      (* todo : cf. O2B list2 : printf("nios_list_reduce_cc(%x)\n", (unsigned int)v); *)

  pp_print_text fmt ")\\n\"";
  List.iter (fun (x,t) -> fprintf fmt ", %s" (low x)) envi;
  fprintf fmt ");@]@,";
  fprintf fmt "return 1;@]";
  fprintf fmt "@,@]}@,@]@."

let mk_simul_h = mk_platform_h


let rec t_ML fmt ty =
  let parenthesized b cb = 
    if b then (fprintf fmt "("; cb (); fprintf fmt ")") 
    else cb ()
  in
  let open Types in
  let rec aux ~paren = function
  | TStd_logic
  | TBool -> fprintf fmt "bool"
  | TInt -> fprintf fmt "int"
  | TUnit -> fprintf fmt "unit"
  | TCamlRef t -> 
      parenthesized paren @@ fun () -> 
      aux ~paren:true t; fprintf fmt " ref"
  | TCamlArray t -> 
      parenthesized paren @@ fun () -> 
      aux ~paren:true t; fprintf fmt " array"
  | TCamlList t -> 
      parenthesized paren @@ fun () -> 
      aux ~paren:true t; fprintf fmt " list"
  | TArray{ty;_} -> 
      parenthesized paren @@ fun () -> 
      aux ~paren:true ty; fprintf fmt " nativ_array"
  | TVar v ->
      assert (is_type_variable v);
      fprintf fmt "'a%d" (as_type_variable v)
  | TPtr -> assert false (* todo *)
  | TSize _ -> assert false in
  aux ~paren:false ty


(* pour le moment, on ignore les résultats multiples. 
   Les entrées du circuits appraissent dans la signature ml 
   sous-forme d'arguments étiquettés (labels).
   S'il n'y a aucune entrée, l'externals est de type [unit -> t],
   i.e. on rajoute un argument unit pour obtenir un type effectivement fonctionnel. *)

let mk_platform_ml ?(labels=true) fmt (envi,envo,_) name = 
  let envi = List.filter (fun (x,_) -> x <> "start") envi in
  let tres = List.assoc "result" envo in
  fprintf fmt "@[<hov>external %s : " (low name);
  List.iter (fun (x,t) ->
                if labels then (fprintf fmt "%s:" (low x));
                fprintf fmt "%a -> " t_ML t) envi;
  if envi = [] then fprintf fmt "unit -> ";
  fprintf fmt "%a = \"caml_nios_%s_cc\" %s" t_ML tres  (low name) "[@@noalloc]";
  fprintf fmt "@]@."

let mk_platform_mli = mk_platform_ml




let mk_vhdl_with_cc ?labels ?xs_opt vars name efsm =
  let open Filename in
  let (^^) = Filename.concat in
  let open Format in
  let open Efsm2vhdl in

  let name = String.lowercase_ascii name in

  let dst = "gen"
  and rtl_dir = "rtl"
  and qsys_dir = "qsys"
  and c_dir   = "c" 
  and ml_dir  = "ml" in
  let desc_name         = dst ^^ rtl_dir ^^  (name ^".vhd")
  and cc_name           = dst ^^ rtl_dir ^^  (name ^"_cc.vhd")
  and misc_name         = dst ^^ rtl_dir ^^ "misc" ^^ (name ^ "_misc.vhd")
  and bindings_name     = dst ^^ c_dir   ^^  (name ^ "_platform-bindings.c")
  and platform_c_name   = dst ^^ c_dir   ^^  (name ^ "_platform.c")
  and platform_h_name   = dst ^^ c_dir   ^^  (name ^ "_platform.h")
  and simul_c_name      = dst ^^ c_dir   ^^  (name ^ "_simul.c")
  and simul_h_name      = dst ^^ c_dir   ^^  (name ^ "_simul.h")
  and platform_ml_name  = dst ^^ ml_dir  ^^  (name ^ "_platform.ml")
  and platform_mli_name = dst ^^ ml_dir  ^^  (name ^ "_platform.mli")
  and hw_tcl_name       = dst ^^ qsys_dir ^^  (name ^ "_cc_hw.tcl")
  and ext_tcl_name      = dst ^^ qsys_dir ^^  (name ^ "_cc_ext.tcl")
  in
  let fmt = std_formatter in
  let desc_oc = open_out desc_name
  and cc_oc = open_out cc_name
  and misc_cc = open_out misc_name
  and bindings_oc = open_out bindings_name
  and platform_c_oc = open_out platform_c_name
  and platform_h_oc = open_out platform_h_name
  and simul_c_oc = open_out simul_c_name
  and simul_h_oc = open_out simul_h_name 
  and platform_ml_oc = open_out platform_ml_name
  and platform_mli_oc = open_out platform_mli_name
  and hw_tcl_oc = open_out hw_tcl_name
  and ext_tcl_oc = open_out ext_tcl_name
  in 
  set_formatter_out_channel desc_oc;
  c_prog ~name vars fmt efsm;

  set_formatter_out_channel misc_cc;
  mk_package name fmt;
  pp_print_flush fmt ();

  let vars' =
    let (envi,envo,l) = vars in
    let f = List.filter (fun (x,t) -> 
      match x with 
      | "start" 
      | "rdy" 
      | "avm_rm_read" 
      | "avm_rm_waitrequest" 
      | "avm_rm_readdata" 
      | "avm_rm_address"
      | "avm_wm_writedata" 
      | "avm_wm_address"
      | "avm_wm_write"
      | "avm_wm_waitrequest"
      | "caml_heap_base"
        -> false 
      | _ -> true) in
    let envi = f envi in
    let envo = f envo in
    let envi = match xs_opt with
               | None -> envi 
               | Some xs -> List.map (fun x -> (x,List.assoc x envi)) xs in 
    (envi,envo,l)
  in

  set_formatter_out_channel cc_oc;
  gen_cc fmt vars vars' name;
  pp_print_flush fmt ();

  set_formatter_out_channel bindings_oc;
  mk_platform_bindings fmt vars' name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel platform_c_oc;
  mk_platform_c fmt vars' name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel platform_h_oc;
  mk_platform_h fmt vars' name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel simul_c_oc;
  mk_simul_c fmt vars' name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel simul_h_oc;
  mk_simul_h fmt vars' name;
  pp_print_flush fmt ();

  set_formatter_out_channel platform_ml_oc;
  mk_platform_ml ?labels fmt vars' name;
  pp_print_flush fmt ();

  set_formatter_out_channel platform_mli_oc;
  mk_platform_mli ?labels fmt vars' name;
  pp_print_flush fmt ();

  set_formatter_out_channel hw_tcl_oc;
  Gen_hw_tcl.mk_hw_tcl name fmt;
  pp_print_flush fmt ();

  set_formatter_out_channel ext_tcl_oc;
  Gen_hw_tcl.mk_ext_gen_qsys name fmt;
  pp_print_flush fmt ();
  
  close_out desc_oc;
  close_out cc_oc;
  close_out bindings_oc;
  close_out platform_c_oc;
  close_out platform_h_oc;
  close_out simul_c_oc;
  close_out simul_h_oc;
  close_out platform_ml_oc;
  close_out platform_mli_oc;
  close_out hw_tcl_oc;
  close_out ext_tcl_oc;

  Printf.printf "info: circuit  \"%s\"  generated in folder gen/.\n" name
