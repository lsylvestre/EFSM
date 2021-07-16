#define ADD8_CC_CTL 0
#define ADD8_CC_G 1
#define ADD8_CC_F 2
#define ADD8_CC_E 3
#define ADD8_CC_D 4
#define ADD8_CC_C 5
#define ADD8_CC_B 6
#define ADD8_CC_A 7
#define ADD8_CC_RESULT 8

int nios_add8_cc(int g,int f,int e,int d,int c,int b,int a){
  alt_u32 r;
  r = IORD(ADD8_CC_BASE, ADD8_CC_CTL); // Get RDY status by reading control/status reg
  if ( !r ) return 0;// Write arguments
  IOWR(ADD8_CC_BASE, ADD8_CC_G, g);
  IOWR(ADD8_CC_BASE, ADD8_CC_F, f);
  IOWR(ADD8_CC_BASE, ADD8_CC_E, e);
  IOWR(ADD8_CC_BASE, ADD8_CC_D, d);
  IOWR(ADD8_CC_BASE, ADD8_CC_C, c);
  IOWR(ADD8_CC_BASE, ADD8_CC_B, b);
  IOWR(ADD8_CC_BASE, ADD8_CC_A, a);
  
  IOWR(ADD8_CC_BASE, ADD8_CC_CTL, 1);
  while ( (r = IORD(ADD8_CC_BASE, ADD8_CC_CTL)) == 0 ); // Wait for rdy
    r = IORD(ADD8_CC_BASE, ADD8_CC_RESULT); // Read result
    return r;
}
