#define MAX3_CC_CTL 0
#define MAX3_CC_C 1
#define MAX3_CC_B 2
#define MAX3_CC_A 3
#define MAX3_CC_RESULT 4

int nios_max3_cc(int c,int b,int a){
  alt_u32 r;
  r = IORD(MAX3_CC_BASE, MAX3_CC_CTL); // Get RDY status by reading control/status reg
  if ( !r ) return 0;// Write arguments
  IOWR(MAX3_CC_BASE, MAX3_CC_C, c);
  IOWR(MAX3_CC_BASE, MAX3_CC_B, b);
  IOWR(MAX3_CC_BASE, MAX3_CC_A, a);
  
  IOWR(MAX3_CC_BASE, MAX3_CC_CTL, 1);
  while ( (r = IORD(MAX3_CC_BASE, MAX3_CC_CTL)) == 0 ); // Wait for rdy
    r = IORD(MAX3_CC_BASE, MAX3_CC_RESULT); // Read result
    return r;
}
