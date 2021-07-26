#define SUM_LIST_CC_CTL 0
#define SUM_LIST_CC_L 1
#define SUM_LIST_CC_RESULT 2
#define SUM_LIST_CC_CAML_HEAP_BASE 3

int nios_sum_list_cc(uint32_t l){
  alt_u32 result;
  // Write arguments
  IOWR(SUM_LIST_CC_BASE, SUM_LIST_CC_L, l);
  IOWR(SUM_LIST_CC_BASE, SUM_LIST_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(SUM_LIST_CC_BASE, SUM_LIST_CC_CTL, 1);
  IOWR(SUM_LIST_CC_BASE, SUM_LIST_CC_CTL, 1); // to be improved
  
  while ( (result = IORD(SUM_LIST_CC_BASE, SUM_LIST_CC_CTL)) == 0 ); // Wait for rdy
  result = IORD(SUM_LIST_CC_BASE, SUM_LIST_CC_RESULT); // Read result
  return result;
}

