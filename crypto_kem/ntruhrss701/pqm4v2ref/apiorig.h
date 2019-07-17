#ifndef PQCLEAN_NTRUHRSS701_CLEAN_API_H
#define PQCLEAN_NTRUHRSS701_CLEAN_API_H

#include <stdint.h>

#define PQCLEAN_NTRUHRSS701_CLEAN_CRYPTO_SECRETKEYBYTES 1450
#define PQCLEAN_NTRUHRSS701_CLEAN_CRYPTO_PUBLICKEYBYTES 1138
#define PQCLEAN_NTRUHRSS701_CLEAN_CRYPTO_CIPHERTEXTBYTES 1138
#define PQCLEAN_NTRUHRSS701_CLEAN_CRYPTO_BYTES 32

#define PQCLEAN_NTRUHRSS701_CLEAN_CRYPTO_ALGNAME "NTRU-HRSS701"

#define PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_keypair crypto_kem_keypair
#define PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_enc crypto_kem_enc
#define PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_dec crypto_kem_dec

int PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_keypair(unsigned char *pk, unsigned char *sk);

int PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_enc(unsigned char *c, unsigned char *k, const unsigned char *pk);

int PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_dec(unsigned char *k, const unsigned char *c, const unsigned char *sk);

#endif
