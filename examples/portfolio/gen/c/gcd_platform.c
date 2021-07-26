#define GCD_CC_CTL 0
#define GCD_CC_A 1
#define GCD_CC_B 2
#define GCD_CC_PARAMS_0031ACC 3
#define GCD_CC_PARAMS_0031N 4
#define GCD_CC_RESULT 5

int nios_gcd_cc(int a,int b){
  alt_u32 result;
  // Write arguments
  IOWR(GCD_CC_BASE, GCD_CC_A, a);
  IOWR(GCD_CC_BASE, GCD_CC_B, b);
  
  IOWR(GCD_CC_BASE, GCD_CC_CTL, 1);
  IOWR(GCD_CC_BASE, GCD_CC_CTL, 1); // to be improved
  
  while ( (result = IORD(GCD_CC_BASE, GCD_CC_CTL)) == 0 ); // Wait for rdy
  result = IORD(GCD_CC_BASE, GCD_CC_RESULT); // Read result
  return result;
}

