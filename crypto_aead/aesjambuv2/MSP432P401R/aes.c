//#include <stdio.h>
#include "aes.h"
//#include "aes_locl.h"
#include "aes256.h"


/**
 * Expand the cipher key into the encryption key schedule.
 */
void AESKeySteup(const unsigned char* rk, unsigned int* rkexp)
{

//	AES256_setCipherKey(AES256_BASE, CipherKey, AES256_KEYLENGTH_256BIT);
//	AES256_setCipherKey(AES256_BASE, userKey, AES256_KEYLENGTH_256BIT);

		AES256_setCipherKey(AES256_BASE, rk , AES256_KEYLENGTH_128BIT);

	return 0;
}


/*
 * Encrypt a single block
 * in and out can overlap
 */
void AESEncrypt(const unsigned int*rk, unsigned int *state)
{

	AES256_encryptData(AES256_BASE, state, state);
}


