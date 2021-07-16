value caml_nios_add8_cc(value g,value f,value e,value d,value c,value b,
                        value a) {
  return Val_int(nios_add8_cc(Int_val(g),Int_val(f),Int_val(e),Int_val(d),
                              Int_val(c),Int_val(b),Int_val(a)));
}
