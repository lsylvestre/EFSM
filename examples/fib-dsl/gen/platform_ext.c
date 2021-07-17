#define FIB_CC_CTL 0
#define FIB_CC_X8 1
#define FIB_CC_X7 2
#define FIB_CC_X6 3
#define FIB_CC_X4 4
#define FIB_CC_X3 5
#define FIB_CC_X2 6
#define FIB_CC_X1 7
#define FIB_CC_RESULT 8

int nios_fib_cc(int x8,int x7,int x6,int x4,int x3,int x2,int x1){
  alt_u32 r;
  r = IORD(FIB_CC_BASE, FIB_CC_CTL); // Get RDY status by reading control/status reg
  if ( !r ) return 0;// Write arguments
  IOWR(FIB_CC_BASE, FIB_CC_X8, x8);
  IOWR(FIB_CC_BASE, FIB_CC_X7, x7);
  IOWR(FIB_CC_BASE, FIB_CC_X6, x6);
  IOWR(FIB_CC_BASE, FIB_CC_X4, x4);
  IOWR(FIB_CC_BASE, FIB_CC_X3, x3);
  IOWR(FIB_CC_BASE, FIB_CC_X2, x2);
  IOWR(FIB_CC_BASE, FIB_CC_X1, x1);
  
  IOWR(FIB_CC_BASE, FIB_CC_CTL, 1);
  while ( (r = IORD(FIB_CC_BASE, FIB_CC_CTL)) == 0 ); // Wait for rdy
    r = IORD(FIB_CC_BASE, FIB_CC_RESULT); // Read result
    return r;
}
