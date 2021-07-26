#define ID_CC_CTL 0
#define ID_CC_X 1
#define ID_CC_RESULT 2

int nios_id_cc(uint32_t x){
  alt_u32 result;
  // Write arguments
  IOWR(ID_CC_BASE, ID_CC_X, x);
  
  IOWR(ID_CC_BASE, ID_CC_CTL, 1);
  IOWR(ID_CC_BASE, ID_CC_CTL, 1); // to be improved
  
  while ( (result = IORD(ID_CC_BASE, ID_CC_CTL)) == 0 ); // Wait for rdy
  result = IORD(ID_CC_BASE, ID_CC_RESULT); // Read result
  return result;
}

