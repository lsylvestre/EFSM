#define LIST_SUM_CC_CTL 0
#define LIST_SUM_CC_DATAA 1
#define LIST_SUM_CC_RESULT 2
#define LIST_SUM_CC_CAML_HEAP_BASE 3

int nios_list_sum_cc(uint32_t dataa){
  alt_u32 result;
  // Write arguments
  IOWR(LIST_SUM_CC_BASE, LIST_SUM_CC_DATAA, dataa);
  IOWR(LIST_SUM_CC_BASE, LIST_SUM_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(LIST_SUM_CC_BASE, LIST_SUM_CC_CTL, 1);
  IOWR(LIST_SUM_CC_BASE, LIST_SUM_CC_CTL, 1); // to be improved
  while ( (result = IORD(LIST_SUM_CC_BASE, LIST_SUM_CC_CTL)) == 0 ); // Wait for rdy
    result = IORD(LIST_SUM_CC_BASE, LIST_SUM_CC_RESULT); // Read result
    return result;
}
