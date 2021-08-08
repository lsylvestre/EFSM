let inputs = ref ([] : string list) 

let add_file f = inputs := !inputs @ [f] 

let flag_print_ast = ref false

type lang = EFSM | FCF | LI | PLATFORM

let flag_lang = ref PLATFORM
let flag_gen_cc = ref false


let () =
 let set_lang c = 
   Arg.Unit (fun () -> flag_lang := c)
 in
 Arg.parse [
      ("-efsm", set_lang EFSM,"EFSM");
      ("-fcf",   set_lang FCF,"FCF");
      ("-li",   set_lang LI,"LI");
      ("-app",  set_lang PLATFORM,"PLATFORM");
      ("-gen-cc", Arg.Set flag_gen_cc,
       "generates source files needed to extend an O2B platform")] 
      add_file "Usage:\n  ./compile files" 

let mk_vhdl ?labels ?(with_cc=false) name efsm =

  let vars = Typing_efsm.typ_prog efsm in

  match !flag_gen_cc,!flag_lang with 
  | false,_ -> Efsm2vhdl.c_prog ~name vars Format.std_formatter efsm
  | true,(FCF|LI|PLATFORM) -> 
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
    | FCF ->
        Parser.fcf Lexer.token lexbuf
        |> Fcf_rename.rename_prog
        |> Fcf2efsm.compile_main
        |> (mk_vhdl name)
    | LI -> 
        Parser.li Lexer.token lexbuf
        |> Caml_interop.rw
        |> Distribute.distribute
        |> Li2fcf.c_prog
        |> Fcf_rename.rename_prog
        |> Fcf2efsm.compile_main
        |> (mk_vhdl name)
    | PLATFORM -> 
        let (fs,s) = Parser.platform Lexer.token lexbuf in    
        List.iter (fun (x,xs,e) -> 
                    
                    Efsm2vhdl.allow_heap_access := false;
                    Efsm2vhdl.allow_heap_assign := false;

                    e 

                    |> Caml_interop.rw
                    |> Distribute.distribute
                    |> Li2fcf.c_prog  
                    |> Fcf_rename.rename_prog
                    |> Fcf2efsm.compile_main

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