#define INC_REF_CC_CTL 0
#define INC_REF_CC_R 1
#define INC_REF_CC_RESULT 2
#define INC_REF_CC_CAML_HEAP_BASE 3

int nios_inc_ref_cc(uint32_t r){
  alt_u32 result;
  // Write arguments
  IOWR(INC_REF_CC_BASE, INC_REF_CC_R, r);
  IOWR(INC_REF_CC_BASE, INC_REF_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(INC_REF_CC_BASE, INC_REF_CC_CTL, 1);
  IOWR(INC_REF_CC_BASE, INC_REF_CC_CTL, 1); // to be improved
  while ( (result = IORD(INC_REF_CC_BASE, INC_REF_CC_CTL)) == 0 ); // Wait for rdy
    result = IORD(INC_REF_CC_BASE, INC_REF_CC_RESULT); // Read result
    return result;
}
