module Fib : sig
  external fib : dataa:int -> int = "caml_nios_fib_cc" [@@noalloc]
end
