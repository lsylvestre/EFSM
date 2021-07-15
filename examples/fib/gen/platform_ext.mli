module Fib : sig
  external fib : Int_val -> int = "caml_nios_fib_cc" [@@noalloc]
end
