value caml_nios_max3_cc(value c,value b,value a) {
  return Val_int(nios_max3_cc(Int_val(c),Int_val(b),Int_val(a)));
}
