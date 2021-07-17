module Add_42_fact = struct
  external add_42_fact : a:int -> int = "caml_nios_add_42_fact_cc" [@@noalloc]
end
