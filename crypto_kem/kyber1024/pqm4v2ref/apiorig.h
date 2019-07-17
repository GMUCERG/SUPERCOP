#ifndef PQCLEAN_KYBER1024_CLEAN_API_H
#define PQCLEAN_KYBER1024_CLEAN_API_H

#define PQCLEAN_KYBER1024_CLEAN_CRYPTO_SECRETKEYBYTES  3168
#define PQCLEAN_KYBER1024_CLEAN_CRYPTO_PUBLICKEYBYTES  1568
#define PQCLEAN_KYBER1024_CLEAN_CRYPTO_CIPHERTEXTBYTES 1568
#define PQCLEAN_KYBER1024_CLEAN_CRYPTO_BYTES           32

#define PQCLEAN_KYBER1024_CLEAN_CRYPTO_ALGNAME "Kyber1024"

#define PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair crypto_kem_keypair
#define PQCLEAN_KYBER1024_CLEAN_crypto_kem_enc crypto_kem_enc
#define PQCLEAN_KYBER1024_CLEAN_crypto_kem_dec crypto_kem_dec

int PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair(unsigned char *pk, unsigned char *sk);

int PQCLEAN_KYBER1024_CLEAN_crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk);

int PQCLEAN_KYBER1024_CLEAN_crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk);


#endif
