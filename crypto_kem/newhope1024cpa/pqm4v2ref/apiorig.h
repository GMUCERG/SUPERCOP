#ifndef PQCLEAN_NEWHOPE1024CPA_CLEAN_API_H
#define PQCLEAN_NEWHOPE1024CPA_CLEAN_API_H


#define PQCLEAN_NEWHOPE1024CPA_CLEAN_CRYPTO_SECRETKEYBYTES  1792
#define PQCLEAN_NEWHOPE1024CPA_CLEAN_CRYPTO_PUBLICKEYBYTES  1824
#define PQCLEAN_NEWHOPE1024CPA_CLEAN_CRYPTO_CIPHERTEXTBYTES 2176
#define PQCLEAN_NEWHOPE1024CPA_CLEAN_CRYPTO_BYTES           32
#define PQCLEAN_NEWHOPE1024CPA_CLEAN_CRYPTO_ALGNAME "NewHope1024-CPAKEM"

#define PQCLEAN_NEWHOPE1024CPA_CLEAN_crypto_kem_keypair crypto_kem_keypair
#define PQCLEAN_NEWHOPE1024CPA_CLEAN_crypto_kem_enc crypto_kem_enc
#define PQCLEAN_NEWHOPE1024CPA_CLEAN_crypto_kem_dec crypto_kem_dec

int PQCLEAN_NEWHOPE1024CPA_CLEAN_crypto_kem_keypair(unsigned char *pk, unsigned char *sk);
int PQCLEAN_NEWHOPE1024CPA_CLEAN_crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk);
int PQCLEAN_NEWHOPE1024CPA_CLEAN_crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk);

#endif