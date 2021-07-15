value caml_nios_gcd_cc(value b,value a) {
  return Val_int(nios_gcd_cc(Int_val(b),Int_val(a)));
}
