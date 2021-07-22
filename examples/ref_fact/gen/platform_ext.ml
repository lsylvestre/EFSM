module Ref_fact = struct
  external ref_fact : r:(int) ref -> int = "caml_nios_ref_fact_cc" [@@noalloc]
end
