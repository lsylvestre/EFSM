let inputs = ref ([] : string list) 

let add_file f = inputs := !inputs @ [f] 

let flag_print_ast = ref false

type lang = EFSM | HSM | PSM | CSM | DSL

let flag_lang = ref EFSM



let () =
 let set_lang c = 
   Arg.Unit (fun () -> flag_lang := c)
 in
 Arg.parse [
      ("-efsm", set_lang EFSM,"EFSM");
      ("-hsm",  set_lang HSM,"HSM");
      ("-psm",  set_lang PSM,"PSM");
      ("-csm",  set_lang CSM,"PSM")] add_file "Usage:\n  ./compile files" 


let parse filename = 
  let ic = open_in filename in
  try 
    let lexbuf = Lexing.from_channel ic in
    (match !flag_lang with
    | EFSM ->
        let efsm = Parser.efsm Lexer.token lexbuf in
        let vars = Typing_efsm.typ_prog efsm in
        Efsm2vhdl.c_prog vars Format.std_formatter efsm
    | HSM -> 
        let l = Parser.hsm Lexer.token lexbuf in 
        let efsm = Hsm2efsm.c_prog l in
        let vars = Typing_efsm.typ_prog efsm in
        Efsm2vhdl.c_prog vars Format.std_formatter efsm
    | PSM -> 
        let l = Parser.psm Lexer.token lexbuf in 
        let hsm = Psm2hsm.c_prog l in
        let efsm = Hsm2efsm.c_prog hsm in
        let vars = Typing_efsm.typ_prog efsm in
        Efsm2vhdl.c_prog vars Format.std_formatter efsm
    | CSM -> 
        let a = Parser.csm Lexer.token lexbuf in 
        let psm = Csm2psm.c_prog a in
        let hsm = Psm2hsm.c_prog ~env:[("control_sink",[])] psm in
        let efsm = Hsm2efsm.c_prog ~theta:[("control_sink","control_sink")] hsm in
        let vars = Typing_efsm.typ_prog ~glob_states:["control_sink"]  efsm in
        Efsm2vhdl.c_prog vars Format.std_formatter efsm
    | DSL -> failwith "todo"
  );
     close_in ic
  with e -> 
    close_in ic; raise e ;;


let () =
  List.iter parse !inputs