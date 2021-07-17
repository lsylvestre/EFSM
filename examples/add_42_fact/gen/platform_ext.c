#define ADD_42_FACT_CC_CTL 0
#define ADD_42_FACT_CC_A 1
#define ADD_42_FACT_CC_RESULT 2

int nios_add_42_fact_cc(int a){
  alt_u32 r;
  r = IORD(ADD_42_FACT_CC_BASE, ADD_42_FACT_CC_CTL); // Get RDY status by reading control/status reg
  if ( !r ) return 0;// Write arguments
  IOWR(ADD_42_FACT_CC_BASE, ADD_42_FACT_CC_A, a);
  
  IOWR(ADD_42_FACT_CC_BASE, ADD_42_FACT_CC_CTL, 1);
  while ( (r = IORD(ADD_42_FACT_CC_BASE, ADD_42_FACT_CC_CTL)) == 0 ); // Wait for rdy
    r = IORD(ADD_42_FACT_CC_BASE, ADD_42_FACT_CC_RESULT); // Read result
    return r;
}
