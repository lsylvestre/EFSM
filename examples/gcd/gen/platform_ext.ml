module Gcd = struct
  external gcd : b:int -> a:int -> int = "caml_nios_gcd_cc" [@@noalloc]
end
