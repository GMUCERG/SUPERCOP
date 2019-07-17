#include "namespace.h"
#include <string.h> /* for memcpy */
#include "crypto_kem.h"
#include "apiorig.h"
#include "randombytes.h"
#include "threebears.h"
#include "crypto_kem.h"

int crypto_kem_keypair(
    unsigned char *pk,
    unsigned char *sk
) {
    randombytes(sk,PQCRYPTO_KEM_MAMABEAR_IMPL_PRIV_KEYGEN_SEED_BYTES);
    pqcrypto_kem_MamaBear_impl_priv_get_pubkey(pk,sk);
    return 0;
}

int crypto_kem_enc(
    unsigned char *ct,
    unsigned char *ss,
    const unsigned char *pk
) {
    unsigned char seed[PQCRYPTO_KEM_MAMABEAR_IMPL_PRIV_ENC_SEED_AND_IV_BYTES];
    randombytes(seed,sizeof(seed));
    pqcrypto_kem_MamaBear_impl_priv_encapsulate(ss,ct,pk,seed);
    secure_bzero(seed,sizeof(seed));
    return 0;   
}

int crypto_kem_dec(
    unsigned char *ss,
    const unsigned char *ct,
    const unsigned char *sk
) {
    /* ThreeBears API says no aliasing, but libpqc requires aliasing */
    unsigned char tmp[PQCRYPTO_KEM_MAMABEAR_IMPL_PRIV_SHARED_SECRET_BYTES];
    int ret = pqcrypto_kem_MamaBear_impl_priv_decapsulate(tmp,ct,sk);
    memcpy(ss,tmp,sizeof(tmp));
    secure_bzero(tmp,sizeof(tmp));
    return ret;
}

