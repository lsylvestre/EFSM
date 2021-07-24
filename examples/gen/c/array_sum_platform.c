#define ARRAY_SUM_CC_CTL 0
#define ARRAY_SUM_CC_A 1
#define ARRAY_SUM_CC_RESULT 2
#define ARRAY_SUM_CC_CAML_HEAP_BASE 3

int nios_array_sum_cc(uint32_t a){
  alt_u32 result;
  // Write arguments
  IOWR(ARRAY_SUM_CC_BASE, ARRAY_SUM_CC_A, a);
  IOWR(ARRAY_SUM_CC_BASE, ARRAY_SUM_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(ARRAY_SUM_CC_BASE, ARRAY_SUM_CC_CTL, 1);
  IOWR(ARRAY_SUM_CC_BASE, ARRAY_SUM_CC_CTL, 1); // to be improved
  while ( (result = IORD(ARRAY_SUM_CC_BASE, ARRAY_SUM_CC_CTL)) == 0 ); // Wait for rdy
    result = IORD(ARRAY_SUM_CC_BASE, ARRAY_SUM_CC_RESULT); // Read result
    return result;
}
