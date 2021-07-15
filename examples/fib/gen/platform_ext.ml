module Fib = struct
  external fib : dataa:int -> int = "caml_nios_fib_cc" [@@noalloc]
end
