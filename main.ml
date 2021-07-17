let inputs = ref ([] : string list) 

let add_file f = inputs := !inputs @ [f] 

let flag_print_ast = ref false

type lang = EFSM | HSM | PSM | CSM | LI

let flag_lang = ref EFSM
let flag_gen_cc = ref false


let () =
 let set_lang c = 
   Arg.Unit (fun () -> flag_lang := c)
 in
 Arg.parse [
      ("-efsm", set_lang EFSM,"EFSM");
      ("-hsm",  set_lang HSM,"HSM");
      ("-psm",  set_lang PSM,"PSM");
      ("-csm",  set_lang CSM,"PSM");
      ("-li",  set_lang LI,"LI");
      ("-gen-cc", Arg.Set flag_gen_cc,
       "generates source files needed to extend an O2B platform")] 
      add_file "Usage:\n  ./compile files" 

let mk_vhdl ?(with_cc=false) filename efsm =
  let vars = Typing_efsm.typ_prog efsm in
  let entity_name = Filename.(remove_extension @@ basename filename) in
  let open Efsm2vhdl in
  match !flag_gen_cc,!flag_lang with 
  | false,_ -> c_prog ~entity_name vars Format.std_formatter efsm
  | true,(CSM|LI) -> 
      Gen_platform.mk_vhdl_with_cc vars entity_name efsm
  | true,_ -> 
     Printf.printf "*** warning: platform generation ignored.\n";
     Printf.printf "To generate a platform, please give a CSM description"

let parse filename = 
  let ic = open_in filename in
  try 
    let lexbuf = Lexing.from_channel ic in
    (match !flag_lang with
    | EFSM ->
        Parser.efsm Lexer.token lexbuf
        |> (mk_vhdl filename)
    | HSM -> 
        Parser.hsm Lexer.token lexbuf
        |> Hsm2efsm.c_prog
        |> (mk_vhdl filename)
    | PSM ->  
        Parser.psm Lexer.token lexbuf
        |> Psm2hsm.c_prog
        |> Hsm2efsm.c_prog
        |> (mk_vhdl filename)
    | CSM -> 
        Parser.csm Lexer.token lexbuf
        |> Csm2psm.c_prog
        |> Psm2hsm.c_prog
        |> Hsm2efsm.c_prog
        |> (mk_vhdl filename)
    | LI -> 
        Parser.li Lexer.token lexbuf
        |> Inline.inlining
        |> Li2csm.c_prog
        |> Csm2psm.c_prog
        |> Psm2hsm.c_prog
        |> Hsm2efsm.c_prog
        |> (mk_vhdl filename)
  );
     close_in ic
  with e -> 
    close_in ic; raise e ;;


let () =
  List.iter parse !inputs