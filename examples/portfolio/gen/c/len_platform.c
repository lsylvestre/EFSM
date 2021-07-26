#define LEN_CC_CTL 0
#define LEN_CC_L 1
#define LEN_CC_RESULT 2
#define LEN_CC_CAML_HEAP_BASE 3

int nios_len_cc(uint32_t l){
  alt_u32 result;
  // Write arguments
  IOWR(LEN_CC_BASE, LEN_CC_L, l);
  IOWR(LEN_CC_BASE, LEN_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(LEN_CC_BASE, LEN_CC_CTL, 1);
  IOWR(LEN_CC_BASE, LEN_CC_CTL, 1); // to be improved
  
  while ( (result = IORD(LEN_CC_BASE, LEN_CC_CTL)) == 0 ); // Wait for rdy
  result = IORD(LEN_CC_BASE, LEN_CC_RESULT); // Read result
  return result;
}

