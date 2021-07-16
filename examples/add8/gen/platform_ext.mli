module Add8 : sig
  external add8 : g:int -> f:int -> e:int -> d:int -> c:int -> b:int -> a:int -> int = "caml_nios_add8_cc" [@@noalloc]
end
