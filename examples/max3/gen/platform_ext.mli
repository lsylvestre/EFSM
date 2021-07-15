module Max3 : sig
  external max3 : c:int -> b:int -> a:int -> int = "caml_nios_max3_cc" [@@noalloc]
end
