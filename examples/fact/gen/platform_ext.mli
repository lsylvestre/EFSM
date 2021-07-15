module Fact : sig
  external fact : dataa:int -> int = "caml_nios_fact_cc" [@@noalloc]
end
