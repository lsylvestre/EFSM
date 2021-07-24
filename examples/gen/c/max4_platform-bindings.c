uint32_t caml_nios_max4_cc(uint32_t a,uint32_t b,uint32_t c,uint32_t d) {
  return Val_int(nios_max4_cc(Int_val(a),Int_val(b),Int_val(c),Int_val(d)));
}
