#ifndef PQCLEAN_FRODOKEM640AES_CLEAN_API_H
#define PQCLEAN_FRODOKEM640AES_CLEAN_API_H

#include <stddef.h>
#include <stdint.h>

#define PQCLEAN_FRODOKEM640AES_CLEAN_CRYPTO_SECRETKEYBYTES  19888     // sizeof(s) + CRYPTO_PUBLICKEYBYTES + 2*PARAMS_N*PARAMS_NBAR + BYTES_PKHASH
#define PQCLEAN_FRODOKEM640AES_CLEAN_CRYPTO_PUBLICKEYBYTES   9616     // sizeof(seed_A) + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8
#define PQCLEAN_FRODOKEM640AES_CLEAN_CRYPTO_BYTES              16
#define PQCLEAN_FRODOKEM640AES_CLEAN_CRYPTO_CIPHERTEXTBYTES  9720     // (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 + (PARAMS_LOGQ*PARAMS_NBAR*PARAMS_NBAR)/8

#define PQCLEAN_FRODOKEM640AES_CLEAN_CRYPTO_ALGNAME "FrodoKEM-640-AES"

#define PQCLEAN_FRODOKEM640AES_CLEAN_crypto_kem_keypair crypto_kem_keypair
#define PQCLEAN_FRODOKEM640AES_CLEAN_crypto_kem_enc crypto_kem_enc
#define PQCLEAN_FRODOKEM640AES_CLEAN_crypto_kem_dec crypto_kem_dec

int PQCLEAN_FRODOKEM640AES_CLEAN_crypto_kem_keypair(unsigned char *pk, unsigned char *sk);

int PQCLEAN_FRODOKEM640AES_CLEAN_crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk);

int PQCLEAN_FRODOKEM640AES_CLEAN_crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk);

#endif
