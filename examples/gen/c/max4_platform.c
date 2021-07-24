#define MAX4_CC_CTL 0
#define MAX4_CC_A 1
#define MAX4_CC_B 2
#define MAX4_CC_C 3
#define MAX4_CC_D 4
#define MAX4_CC_RESULT 5

int nios_max4_cc(int a,int b,int c,int d){
  alt_u32 result;
  // Write arguments
  IOWR(MAX4_CC_BASE, MAX4_CC_A, a);
  IOWR(MAX4_CC_BASE, MAX4_CC_B, b);
  IOWR(MAX4_CC_BASE, MAX4_CC_C, c);
  IOWR(MAX4_CC_BASE, MAX4_CC_D, d);
  
  IOWR(MAX4_CC_BASE, MAX4_CC_CTL, 1);
  IOWR(MAX4_CC_BASE, MAX4_CC_CTL, 1); // to be improved
  while ( (result = IORD(MAX4_CC_BASE, MAX4_CC_CTL)) == 0 ); // Wait for rdy
    result = IORD(MAX4_CC_BASE, MAX4_CC_RESULT); // Read result
    return result;
}
