#define INC_CC_CTL 0
#define INC_CC_R 1
#define INC_CC_RESULT 2
#define INC_CC_CAML_HEAP_BASE 3

int nios_inc_cc(uint32_t r){
  alt_u32 result;
  // Write arguments
  IOWR(INC_CC_BASE, INC_CC_R, r);
  IOWR(INC_CC_BASE, INC_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(INC_CC_BASE, INC_CC_CTL, 1);
  IOWR(INC_CC_BASE, INC_CC_CTL, 1); // to be improved
  
  while ( (result = IORD(INC_CC_BASE, INC_CC_CTL)) == 0 ); // Wait for rdy
  result = IORD(INC_CC_BASE, INC_CC_RESULT); // Read result
  return result;
}

