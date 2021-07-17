module Add_42_fact : sig
  external add_42_fact : a:int -> int = "caml_nios_add_42_fact_cc" [@@noalloc]
end
