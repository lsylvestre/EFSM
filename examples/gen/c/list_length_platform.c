#define LIST_LENGTH_CC_CTL 0
#define LIST_LENGTH_CC_DATAA 1
#define LIST_LENGTH_CC_RESULT 2
#define LIST_LENGTH_CC_CAML_HEAP_BASE 3

int nios_list_length_cc(uint32_t dataa){
  alt_u32 result;
  // Write arguments
  IOWR(LIST_LENGTH_CC_BASE, LIST_LENGTH_CC_DATAA, dataa);
  IOWR(LIST_LENGTH_CC_BASE, LIST_LENGTH_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(LIST_LENGTH_CC_BASE, LIST_LENGTH_CC_CTL, 1);
  IOWR(LIST_LENGTH_CC_BASE, LIST_LENGTH_CC_CTL, 1); // to be improved
  while ( (result = IORD(LIST_LENGTH_CC_BASE, LIST_LENGTH_CC_CTL)) == 0 ); // Wait for rdy
    result = IORD(LIST_LENGTH_CC_BASE, LIST_LENGTH_CC_RESULT); // Read result
    return result;
}
