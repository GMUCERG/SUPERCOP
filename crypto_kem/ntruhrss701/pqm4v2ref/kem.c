#include <stdint.h>

#include "apiorig.h"
#include "fips202.h"
#include "owcpa.h"
#include "params.h"
#include "randombytes.h"
#include "verify.h"
#include "crypto_kem.h"

// API FUNCTIONS
int PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_keypair(unsigned char *pk, unsigned char *sk) {
    unsigned char seed[NTRU_SAMPLE_FG_BYTES];

    randombytes(seed, NTRU_SAMPLE_FG_BYTES);
    PQCLEAN_NTRUHRSS701_CLEAN_owcpa_keypair(pk, sk, seed);

    randombytes(sk + NTRU_OWCPA_SECRETKEYBYTES, NTRU_PRFKEYBYTES);

    return 0;
}

int PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_enc(unsigned char *c, unsigned char *k, const unsigned char *pk) {
    unsigned char rm[NTRU_OWCPA_MSGBYTES];
    unsigned char rm_seed[NTRU_SAMPLE_RM_BYTES];

    randombytes(rm_seed, NTRU_SAMPLE_RM_BYTES);
    PQCLEAN_NTRUHRSS701_CLEAN_owcpa_samplemsg(rm, rm_seed);

    sha3_256(k, rm, NTRU_OWCPA_MSGBYTES);

    PQCLEAN_NTRUHRSS701_CLEAN_owcpa_enc(c, rm, pk);

    return 0;
}

int PQCLEAN_NTRUHRSS701_CLEAN_crypto_kem_dec(unsigned char *k, const unsigned char *c, const unsigned char *sk) {
    int i, fail;
    unsigned char rm[NTRU_OWCPA_MSGBYTES];
    unsigned char buf[NTRU_PRFKEYBYTES + NTRU_CIPHERTEXTBYTES];

    fail = PQCLEAN_NTRUHRSS701_CLEAN_owcpa_dec(rm, c, sk);
    /* If fail = 0 then c = Enc(h, rm), there is no need to re-encapsulate. */
    /* See comment in PQCLEAN_NTRUHRSS701_CLEAN_owcpa_dec for details.                                */

    sha3_256(k, rm, NTRU_OWCPA_MSGBYTES);

    /* shake(secret PRF key || input ciphertext) */
    for (i = 0; i < NTRU_PRFKEYBYTES; i++) {
        buf[i] = sk[i + NTRU_OWCPA_SECRETKEYBYTES];
    }
    for (i = 0; i < NTRU_CIPHERTEXTBYTES; i++) {
        buf[NTRU_PRFKEYBYTES + i] = c[i];
    }
    sha3_256(rm, buf, NTRU_PRFKEYBYTES + NTRU_CIPHERTEXTBYTES);

    PQCLEAN_NTRUHRSS701_CLEAN_cmov(k, rm, NTRU_SHAREDKEYBYTES, (unsigned char) fail);

    return 0;
}
