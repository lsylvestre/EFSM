module Fib : sig
  external fib : int -> int = "caml_nios_fib_cc" [@@noalloc]
end
