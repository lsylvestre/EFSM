value caml_nios_fib_cc(value x8,value x7,value x6,value x4,value x3,value x2,
                       value x1) {
  return Val_int(nios_fib_cc(Int_val(x8),Int_val(x7),Int_val(x6),Int_val(x4),
                             Int_val(x3),Int_val(x2),Int_val(x1)));
}
