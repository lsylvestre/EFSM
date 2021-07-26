#define REV_ARRAY_CC_CTL 0
#define REV_ARRAY_CC_A 1
#define REV_ARRAY_CC_RESULT 2
#define REV_ARRAY_CC_WILDCARD_0001 3
#define REV_ARRAY_CC_WILDCARD_0002 4
#define REV_ARRAY_CC_CAML_HEAP_BASE 5

int nios_rev_array_cc(uint32_t a){
  alt_u32 result;
  // Write arguments
  IOWR(REV_ARRAY_CC_BASE, REV_ARRAY_CC_A, a);
  IOWR(REV_ARRAY_CC_BASE, REV_ARRAY_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(REV_ARRAY_CC_BASE, REV_ARRAY_CC_CTL, 1);
  IOWR(REV_ARRAY_CC_BASE, REV_ARRAY_CC_CTL, 1); // to be improved
  
  while ( (result = IORD(REV_ARRAY_CC_BASE, REV_ARRAY_CC_CTL)) == 0 ); // Wait for rdy
  result = IORD(REV_ARRAY_CC_BASE, REV_ARRAY_CC_RESULT); // Read result
  return result;
}

