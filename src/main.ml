let inputs = ref ([] : string list) 

let add_file f = inputs := !inputs @ [f] 

let flag_print_ast = ref false

type lang = EFSM | HSM | PSM | CSM | LI | PLATFORM

let flag_lang = ref PLATFORM
let flag_gen_cc = ref true


let () =
 let set_lang c = 
   Arg.Unit (fun () -> flag_lang := c)
 in
 Arg.parse [
      ("-efsm", set_lang EFSM,"EFSM");
      ("-hsm",  set_lang HSM,"HSM");
      ("-psm",  set_lang PSM,"PSM");
      ("-csm",  set_lang CSM,"PSM");
      ("-li",   set_lang LI,"LI");
      ("-app",  set_lang PLATFORM,"PLATFORM");
      ("-gen-cc", Arg.Set flag_gen_cc,
       "generates source files needed to extend an O2B platform")] 
      add_file "Usage:\n  ./compile files" 

let mk_vhdl ?labels ?(with_cc=false) name efsm =

  let vars = Typing_efsm.typ_prog efsm in

  match !flag_gen_cc,!flag_lang with 
  | false,_ -> Efsm2vhdl.c_prog ~name vars Format.std_formatter efsm
  | true,(CSM|LI|PLATFORM) -> 
      Gen_platform.mk_vhdl_with_cc ?labels vars name efsm
  | true,_ -> 
     Printf.printf "*** warning: platform generation ignored.\n";
     Printf.printf "To generate a platform, please give a CSM description"

let parse filename = 
  let ic = open_in filename in

  let name = Filename.(remove_extension @@ basename filename) in

  Efsm2vhdl.allow_heap_access := false;
  Efsm2vhdl.allow_heap_assign := false;

  try 
    let lexbuf = Lexing.from_channel ic in
    (match !flag_lang with
    | EFSM ->
        Parser.efsm Lexer.token lexbuf
        |> (mk_vhdl name)
    | HSM -> 
        Parser.hsm Lexer.token lexbuf
        |> Hsm2efsm.c_prog
        |> (mk_vhdl name)
    | PSM ->  
        Parser.psm Lexer.token lexbuf
        |> Psm2hsm.c_prog
        |> Hsm2efsm.c_prog
        |> (mk_vhdl name)
    | CSM -> 
        Parser.csm Lexer.token lexbuf
        |> Csm2psm.c_prog
        |> Psm2hsm.c_prog
        |> Hsm2efsm.c_prog
        |> (mk_vhdl name)
    | LI -> 
        Parser.li Lexer.token lexbuf
        |> Caml_interop.rw
        |> Inline.inlining
        |> Li2csm.c_prog
        |> Csm2psm.c_prog
        (* |> (fun p -> Pprint_ast.PP_PSM.pp_prog Format.std_formatter p; p) *)
        |> Psm2hsm.c_prog
        |> Hsm2efsm.c_prog
        |> (mk_vhdl name)
    | PLATFORM -> 
        let (fs,s) = Parser.platform Lexer.token lexbuf in    
        List.iter (fun (x,xs,e) -> 
                    
                    Efsm2vhdl.allow_heap_access := false;
                    Efsm2vhdl.allow_heap_assign := false;

                    e 
                    |> Caml_interop.rw
                    |> Inline.inlining
                    |> Li2csm.c_prog
                    |> Csm2psm.c_prog
                    |> Psm2hsm.c_prog
                    |> Hsm2efsm.c_prog
                    |> (mk_vhdl ~labels:false x)
        ) fs;
        let open Format in
        let dst = "gen" in
        let app_name  = Filename.(concat dst (concat "apps" (name ^".ml"))) in
        let fmt = std_formatter in
        let app_oc = open_out app_name in
        set_formatter_out_channel app_oc;
        fprintf fmt "open Platform@,@,";
        pp_print_text fmt s;
        pp_print_flush fmt ();
        close_out app_oc
    );
     close_in ic
  with e -> 
    close_in ic; raise e ;;


let () =
  List.iter parse !inputs