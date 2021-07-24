uint32_t caml_nios_fib_cc(uint32_t n) {
  return Val_int(nios_fib_cc(Int_val(n)));
}
