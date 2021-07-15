#define FACT_CC_CTL 0
#define FACT_CC_DATAA 1
#define FACT_CC_RESULT 2

int nios_fact_cc(int dataa){
  alt_u32 r;
  r = IORD(FACT_CC_BASE, FACT_CC_CTL); // Get RDY status by reading control/status reg
  if ( !r ) return 0;// Write arguments
  IOWR(FACT_CC_BASE, FACT_CC_DATAA, dataa);
  
  IOWR(FACT_CC_BASE, FACT_CC_CTL, 1);
  while ( (r = IORD(FACT_CC_BASE, FACT_CC_CTL)) == 0 ); // Wait for rdy
    r = IORD(FACT_CC_BASE, FACT_CC_RESULT); // Read result
    return r;
}
