
let mk_vhdl_with_cc vars entity_name efsm =
  let open Filename in
  let open Format in
  let open Efsm2vhdl in
  let dst = "gen" in
  let desc_name = concat dst (entity_name ^".vhdl")
  and cc_name = concat dst (entity_name ^"_cc.vhdl")
  and bindings_name = concat dst "bindings_ext.c"
  and platform_c_name = concat dst "platform_ext.c"
  and platform_h_name = concat dst "platform_ext.h"
  and simul_c_name = concat dst "simul_ext.c"
  and simul_h_name = concat dst "simul_ext.h" 
  and platform_ml_name = concat dst "platform_ext.ml"
  and platform_mli_name = concat dst "platform_ext.mli"
  in
  let fmt = std_formatter in
  let desc_oc = open_out desc_name
  and cc_oc = open_out cc_name
  and bindings_oc = open_out bindings_name
  and platform_c_oc = open_out platform_c_name
  and platform_h_oc = open_out platform_h_name
  and simul_c_oc = open_out simul_c_name
  and simul_h_oc = open_out simul_h_name 
  and platform_ml_oc = open_out platform_ml_name
  and platform_mli_oc = open_out platform_mli_name 
  in 

  set_formatter_out_channel desc_oc;
  c_prog ~entity_name vars fmt efsm;

  set_formatter_out_channel cc_oc;
  gen_cc fmt vars entity_name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel bindings_oc;
  mk_platform_bindings fmt vars entity_name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel platform_c_oc;
  mk_platform_c fmt vars entity_name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel platform_h_oc;
  mk_platform_h fmt vars entity_name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel simul_c_oc;
  mk_simul_c fmt vars entity_name;
  pp_print_flush fmt ();
  
  set_formatter_out_channel simul_h_oc;
  mk_simul_h fmt vars entity_name;
  pp_print_flush fmt ();

  set_formatter_out_channel simul_h_oc;
  mk_simul_h fmt vars entity_name;
  pp_print_flush fmt ();

  set_formatter_out_channel platform_ml_oc;
  mk_platform_ml fmt vars entity_name;
  pp_print_flush fmt ();

  set_formatter_out_channel platform_mli_oc;
  mk_platform_mli fmt vars entity_name;
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

  Printf.printf "info: platform generated in then folder gen/.\n";
