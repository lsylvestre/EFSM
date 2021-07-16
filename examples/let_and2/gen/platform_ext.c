#define LET_AND2_CC_CTL 0
#define LET_AND2_CC_RESULT 1

int nios_let_and2_cc(){
  alt_u32 r;
  r = IORD(LET_AND2_CC_BASE, LET_AND2_CC_CTL); // Get RDY status by reading control/status reg
  if ( !r ) return 0;// Write arguments
  
  IOWR(LET_AND2_CC_BASE, LET_AND2_CC_CTL, 1);
  while ( (r = IORD(LET_AND2_CC_BASE, LET_AND2_CC_CTL)) == 0 ); // Wait for rdy
    r = IORD(LET_AND2_CC_BASE, LET_AND2_CC_RESULT); // Read result
    return r;
}
