#define REF_FACT_CC_CTL 0
#define REF_FACT_CC_R 1
#define REF_FACT_CC_RESULT 2
#define REF_FACT_CC_CAML_HEAP_BASE 3

int nios_ref_fact_cc(value r){
  alt_u32 result;
  while (!IORD(REF_FACT_CC_BASE, REF_FACT_CC_CTL))
    ; // Get RDY status by reading control/status reg
  // Write arguments
  IOWR(REF_FACT_CC_BASE, REF_FACT_CC_R, r);
  IOWR(REF_FACT_CC_BASE, REF_FACT_CC_CAML_HEAP_BASE, ocaml_ram_heap);
  
  IOWR(REF_FACT_CC_BASE, REF_FACT_CC_CTL, 1);
  while ( (result = IORD(REF_FACT_CC_BASE, REF_FACT_CC_CTL)) == 0 ); // Wait for rdy
    result = IORD(REF_FACT_CC_BASE, REF_FACT_CC_RESULT); // Read result
    return result;
}
