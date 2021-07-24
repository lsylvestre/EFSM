#define FACT_CC_CTL 0
#define FACT_CC_N 1
#define FACT_CC_RESULT 2

int nios_fact_cc(int n){
  alt_u32 result;
  // Write arguments
  IOWR(FACT_CC_BASE, FACT_CC_N, n);
  
  IOWR(FACT_CC_BASE, FACT_CC_CTL, 1);
  IOWR(FACT_CC_BASE, FACT_CC_CTL, 1); // to be improved
  while ( (result = IORD(FACT_CC_BASE, FACT_CC_CTL)) == 0 ); // Wait for rdy
    result = IORD(FACT_CC_BASE, FACT_CC_RESULT); // Read result
    return result;
}
