#define FIB_CC_CTL 0
#define FIB_CC_N 1
#define FIB_CC_RESULT 2

int nios_fib_cc(int n){
  alt_u32 result;
  // Write arguments
  IOWR(FIB_CC_BASE, FIB_CC_N, n);
  
  IOWR(FIB_CC_BASE, FIB_CC_CTL, 1);
  IOWR(FIB_CC_BASE, FIB_CC_CTL, 1); // to be improved
  
  while ( (result = IORD(FIB_CC_BASE, FIB_CC_CTL)) == 0 ); // Wait for rdy
  result = IORD(FIB_CC_BASE, FIB_CC_RESULT); // Read result
  return result;
}

