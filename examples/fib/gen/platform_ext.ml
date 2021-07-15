module Fib = struct
  external fib : int -> int = "caml_nios_fib_cc" [@@noalloc]
end
