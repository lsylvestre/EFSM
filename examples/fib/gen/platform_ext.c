#define FIB_CC_CTL 0
#define FIB_CC_DATAA 1
#define FIB_CC_RESULT 2

int nios_fib_cc(int dataa){
  alt_u32 r;
  r = IORD(FIB_CC_BASE, FIB_CC_CTL); // Get RDY status by reading control/status reg
  if ( !r ) return 0;// Write arguments
  IOWR(FIB_CC_BASE, FIB_CC_DATAA, dataa);
  
  IOWR(FIB_CC_BASE, FIB_CC_CTL, 1);
  while ( (r = IORD(FIB_CC_BASE, FIB_CC_CTL)) == 0 ); // Wait for rdy
    r = IORD(FIB_CC_BASE, FIB_CC_RESULT); // Read result
    return r;
}
