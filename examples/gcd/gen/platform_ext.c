#define GCD_CC_CTL 0
#define GCD_CC_B 1
#define GCD_CC_A 2
#define GCD_CC_RESULT 3

int nios_gcd_cc(int b,int a){
  alt_u32 r;
  r = IORD(GCD_CC_BASE, GCD_CC_CTL); // Get RDY status by reading control/status reg
  if ( !r ) return 0;// Write arguments
  IOWR(GCD_CC_BASE, GCD_CC_B, b);
  IOWR(GCD_CC_BASE, GCD_CC_A, a);
  
  IOWR(GCD_CC_BASE, GCD_CC_CTL, 1);
  while ( (r = IORD(GCD_CC_BASE, GCD_CC_CTL)) == 0 ); // Wait for rdy
    r = IORD(GCD_CC_BASE, GCD_CC_RESULT); // Read result
    return r;
}
