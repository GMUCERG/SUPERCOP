#include "randombytes.h"
#include "small.h"

crypto_int32 small_random32(void)
{
  unsigned char x[4];
  randombytes(x,4);
  return x[0] + (x[1] << 8) + (x[2] << 16) + (x[3] << 24);
}
