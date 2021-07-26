#define SUM_ARRAY_CC_CTL 0
#define SUM_ARRAY_CC_A 1
#define SUM_ARRAY_CC_RESULT 2
#define SUM_ARRAY_CC_CAML_HEAP_BASE 3

int nios_sum_array_cc(uint32_t a){
  alt_u32 result;
  // Write arguments
  IOWR(SUM_ARRAY_CC_BASE, SUM_ARRAY_CC_A, a);
  IOWR(SUM_ARRAY_CC_BASE, SUM_ARRAY_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(SUM_ARRAY_CC_BASE, SUM_ARRAY_CC_CTL, 1);
  IOWR(SUM_ARRAY_CC_BASE, SUM_ARRAY_CC_CTL, 1); // to be improved
  
  while ( (result = IORD(SUM_ARRAY_CC_BASE, SUM_ARRAY_CC_CTL)) == 0 ); // Wait for rdy
  result = IORD(SUM_ARRAY_CC_BASE, SUM_ARRAY_CC_RESULT); // Read result
  return result;
}

