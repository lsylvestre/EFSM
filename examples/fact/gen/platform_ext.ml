module Fact = struct
  external fact : dataa:int -> int = "caml_nios_fact_cc" [@@noalloc]
end
