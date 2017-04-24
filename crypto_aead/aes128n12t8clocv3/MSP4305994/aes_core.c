/*
 *
 * Modified aes_core.h to use on-board AES accelerator. Function calls from silc.c
 * remain the same.
 */

//#include <stdio.h>
#include "aes.h"
//#include "aes_locl.h"
#include "aes256.h"


/**
 * Expand the cipher key into the encryption key schedule.
 */
int AES_set_encrypt_key(const unsigned char *userKey, const int bits,
			AES_KEY *key) {

//	AES256_setCipherKey(AES256_BASE, CipherKey, AES256_KEYLENGTH_256BIT);
//	AES256_setCipherKey(AES256_BASE, userKey, AES256_KEYLENGTH_256BIT);

	if (bits==128)
		AES256_setCipherKey(AES256_BASE, userKey, AES256_KEYLENGTH_128BIT);
	else if (bits==192)
		AES256_setCipherKey(AES256_BASE, userKey, AES256_KEYLENGTH_192BIT);
	else
		AES256_setCipherKey(AES256_BASE, userKey, AES256_KEYLENGTH_256BIT);

	return 0;
}

/**
 * Expand the cipher key into the decryption key schedule.
 */
int AES_set_decrypt_key(const unsigned char *userKey, const int bits,
			 AES_KEY *key) {

	if (bits==128)
		AES256_setDecipherKey(AES256_BASE, userKey, AES256_KEYLENGTH_128BIT);
	else if (bits==192)
		AES256_setDecipherKey(AES256_BASE, userKey, AES256_KEYLENGTH_192BIT);
	else
		AES256_setDecipherKey(AES256_BASE, userKey, AES256_KEYLENGTH_256BIT);

	return 0;
}

/*
 * Encrypt a single block
 * in and out can overlap
 */
void AES_encrypt(const unsigned char *in, unsigned char *out,
		 const AES_KEY *key) {

	AES256_encryptData(AES256_BASE, in, out);
}

/*
 * Decrypt a single block
 * in and out can overlap
 */
void AES_decrypt(const unsigned char *in, unsigned char *out,
		 const AES_KEY *key) {

	AES256_decryptData(AES256_BASE, in, out);

}
