module Fib : sig
  external fib : x8:int -> x7:int -> x6:int -> x4:int -> x3:int -> x2:int -> x1:int -> int = "caml_nios_fib_cc" [@@noalloc]
end
