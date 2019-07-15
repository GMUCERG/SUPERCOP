/********************************************************************************************
* FrodoKEM: Learning with Errors Key Encapsulation
*
* Abstract: Key Encapsulation Mechanism (KEM) based on Frodo
*********************************************************************************************/

#include <stdint.h>
#include <string.h>

#include "fips202.h"
#include "randombytes.h"

#include "apiorig.h"
#include "common.h"
#include "params.h"

#include "crypto_kem.h"

int crypto_kem_keypair(uint8_t *pk, uint8_t *sk) {
    // FrodoKEM's key generation
    // Outputs: public key pk (               BYTES_SEED_A + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 bytes)
    //          secret key sk (CRYPTO_BYTES + BYTES_SEED_A + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 + 2*PARAMS_N*PARAMS_NBAR + BYTES_PKHASH bytes)
    uint8_t *pk_seedA = &pk[0];
    uint8_t *pk_b = &pk[BYTES_SEED_A];
    uint8_t *sk_s = &sk[0];
    uint8_t *sk_pk = &sk[CRYPTO_BYTES];
    uint8_t *sk_S = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES];
    uint8_t *sk_pkh = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES + 2 * PARAMS_N * PARAMS_NBAR];
    uint16_t B[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t S[PARAMS_N * PARAMS_NBAR] = {0};           // contains secret data
    uint8_t randomness[2 * CRYPTO_BYTES + BYTES_SEED_A];    // contains secret data via randomness_s and randomness_seedSE
    uint8_t *randomness_s = &randomness[0];                 // contains secret data
    uint8_t *randomness_seedSE = &randomness[CRYPTO_BYTES]; // contains secret data
    uint8_t *randomness_z = &randomness[2 * CRYPTO_BYTES];
    uint8_t shake_input_seedSE[1 + CRYPTO_BYTES];           // contains secret data

    // Generate the secret value s, the seed for S and E, and the seed for the seed for A. Add seed_A to the public key
    randombytes(randomness, CRYPTO_BYTES + CRYPTO_BYTES + BYTES_SEED_A);
    shake(pk_seedA, BYTES_SEED_A, randomness_z, BYTES_SEED_A);

    // Generate S and E, and compute B = A*S + E. Generate A on-the-fly
    shake_input_seedSE[0] = 0x5F;
    memcpy(&shake_input_seedSE[1], randomness_seedSE, CRYPTO_BYTES);
   
    shake128incctx state;
    shake128_inc_init(&state);
    shake128_inc_absorb(&state, shake_input_seedSE, 1 + CRYPTO_BYTES);
    shake128_inc_finalize(&state);
    shake128_inc_squeeze((uint8_t *)S, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
    shake128_inc_squeeze((uint8_t *)B, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
 
    sample_n(S, PARAMS_N * PARAMS_NBAR);
    sample_n(B, PARAMS_N * PARAMS_NBAR);
    
    mul_add_as_plus_e(B, S, pk);

    // Encode the second part of the public key
    pack(pk_b, CRYPTO_PUBLICKEYBYTES - BYTES_SEED_A, B, PARAMS_N * PARAMS_NBAR, PARAMS_LOGQ);

    // Add s, pk and S to the secret key
    memcpy(sk_s, randomness_s, CRYPTO_BYTES);
    memcpy(sk_pk, pk, CRYPTO_PUBLICKEYBYTES);
    for (size_t i = 0; i < PARAMS_N * PARAMS_NBAR; i++) {
        S[i] = UINT16_TO_LE(S[i]);
    }
    memcpy(sk_S, S, 2 * PARAMS_N * PARAMS_NBAR);

    // Add H(pk) to the secret key
    shake(sk_pkh, BYTES_PKHASH, pk, CRYPTO_PUBLICKEYBYTES);

    // Cleanup:
    clear_bytes((uint8_t *)S, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes(randomness, 2 * CRYPTO_BYTES);
    clear_bytes(shake_input_seedSE, 1 + CRYPTO_BYTES);
    return 0;
}


int crypto_kem_enc(uint8_t *ct, uint8_t *ss, const uint8_t *pk) {
    // FrodoKEM's key encapsulation
    const uint8_t *pk_seedA = &pk[0];
    const uint8_t *pk_b = &pk[BYTES_SEED_A];
    uint8_t *ct_c1 = &ct[0];
    uint8_t *ct_c2 = &ct[(PARAMS_LOGQ * PARAMS_N * PARAMS_NBAR) / 8];
    uint16_t B[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t V[PARAMS_NBAR * PARAMS_NBAR] = {0};              // contains secret data
    uint16_t C[PARAMS_NBAR * PARAMS_NBAR] = {0};
    uint16_t Bp[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t Sp[PARAMS_N * PARAMS_NBAR] = {0}; // contains secret data
    uint8_t G2in[BYTES_PKHASH + BYTES_MU];                    // contains secret data via mu
    uint8_t *pkh = &G2in[0];
    uint8_t *mu = &G2in[BYTES_PKHASH];                        // contains secret data
    uint8_t G2out[2 * CRYPTO_BYTES];                          // contains secret data
    uint8_t *seedSE = &G2out[0];                              // contains secret data
    uint8_t *k = &G2out[CRYPTO_BYTES];                        // contains secret data
    uint8_t Fin[CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES];       // contains secret data via Fin_k
    uint8_t *Fin_ct = &Fin[0];
    uint8_t *Fin_k = &Fin[CRYPTO_CIPHERTEXTBYTES];            // contains secret data
    uint8_t shake_input_seedSE[1 + CRYPTO_BYTES];             // contains secret data

    // pkh <- G_1(pk), generate random mu, compute (seedSE || k) = G_2(pkh || mu)
    shake(pkh, BYTES_PKHASH, pk, CRYPTO_PUBLICKEYBYTES);
    randombytes(mu, BYTES_MU);
    shake(G2out, CRYPTO_BYTES + CRYPTO_BYTES, G2in, BYTES_PKHASH + BYTES_MU);

    // Generate Sp and Ep, and compute Bp = Sp*A + Ep. Generate A on-the-fly
    shake_input_seedSE[0] = 0x96;
    memcpy(&shake_input_seedSE[1], seedSE, CRYPTO_BYTES);
    

    shake128incctx state;
    shake128_inc_init(&state);
    shake128_inc_absorb(&state, shake_input_seedSE, 1 + CRYPTO_BYTES);
    shake128_inc_finalize(&state);
    shake128_inc_squeeze((uint8_t *)Sp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
    shake128_inc_squeeze((uint8_t *)Bp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
    shake128_inc_squeeze((uint8_t *)V, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t), &state);
    

    sample_n(Sp, PARAMS_N * PARAMS_NBAR);
    sample_n(Bp, PARAMS_N * PARAMS_NBAR);
    mul_add_sa_plus_e(Bp, Sp, pk_seedA);
    pack(ct_c1, (PARAMS_LOGQ * PARAMS_N * PARAMS_NBAR) / 8, Bp, PARAMS_N * PARAMS_NBAR, PARAMS_LOGQ);

    // Generate Epp, and compute V = Sp*B + Epp
    sample_n(V, PARAMS_NBAR * PARAMS_NBAR);
    unpack(B, PARAMS_N * PARAMS_NBAR, pk_b, CRYPTO_PUBLICKEYBYTES - BYTES_SEED_A, PARAMS_LOGQ);
    mul_add_sb_plus_e(V, B, Sp);

    // Encode mu, and compute C = V + enc(mu) (mod q)
    key_encode(C, (uint16_t *)mu);
    add(C, V, C);
    pack(ct_c2, (PARAMS_LOGQ * PARAMS_NBAR * PARAMS_NBAR) / 8, C, PARAMS_NBAR * PARAMS_NBAR, PARAMS_LOGQ);

    // Compute ss = F(ct||KK)
    memcpy(Fin_ct, ct, CRYPTO_CIPHERTEXTBYTES);
    memcpy(Fin_k, k, CRYPTO_BYTES);
    shake(ss, CRYPTO_BYTES, Fin, CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES);

    // Cleanup:
    clear_bytes((uint8_t *)V, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes((uint8_t *)Sp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes(mu, BYTES_MU);
    clear_bytes(G2out, 2 * CRYPTO_BYTES);
    clear_bytes(Fin_k, CRYPTO_BYTES);
    clear_bytes(shake_input_seedSE, 1 + CRYPTO_BYTES);
    return 0;
}


int crypto_kem_dec(uint8_t *ss, const uint8_t *ct, const uint8_t *sk) {
    // FrodoKEM's key decapsulation
    uint16_t B[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t Bp[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t W[PARAMS_NBAR * PARAMS_NBAR] = {0};              // contains secret data
    uint16_t C[PARAMS_NBAR * PARAMS_NBAR] = {0};
    uint16_t CC[PARAMS_NBAR * PARAMS_NBAR] = {0};
    uint16_t BBp[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t Sp[PARAMS_N*PARAMS_NBAR] = {0}; // contains secret data
    const uint8_t *ct_c1 = &ct[0];
    const uint8_t *ct_c2 = &ct[(PARAMS_LOGQ * PARAMS_N * PARAMS_NBAR) / 8];
    const uint8_t *sk_s = &sk[0];
    const uint8_t *sk_pk = &sk[CRYPTO_BYTES];
    const uint16_t *sk_S = (uint16_t *) &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES];
    uint16_t S[PARAMS_N * PARAMS_NBAR];                      // contains secret data
    const uint8_t *sk_pkh = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES + 2 * PARAMS_N * PARAMS_NBAR];
    const uint8_t *pk_seedA = &sk_pk[0];
    const uint8_t *pk_b = &sk_pk[BYTES_SEED_A];
    uint8_t G2in[BYTES_PKHASH + BYTES_MU];                   // contains secret data via muprime
    uint8_t *pkh = &G2in[0];
    uint8_t *muprime = &G2in[BYTES_PKHASH];                  // contains secret data
    uint8_t G2out[2 * CRYPTO_BYTES];                         // contains secret data
    uint8_t *seedSEprime = &G2out[0];                        // contains secret data
    uint8_t *kprime = &G2out[CRYPTO_BYTES];                  // contains secret data
    uint8_t Fin[CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES];      // contains secret data via Fin_k
    uint8_t *Fin_ct = &Fin[0];
    uint8_t *Fin_k = &Fin[CRYPTO_CIPHERTEXTBYTES];           // contains secret data
    uint8_t shake_input_seedSEprime[1 + CRYPTO_BYTES];       // contains secret data

    for (size_t i = 0; i < PARAMS_N * PARAMS_NBAR; i++) {
        S[i] = LE_TO_UINT16(sk_S[i]);
    }

    // Compute W = C - Bp*S (mod q), and decode the randomness mu
    unpack(Bp, PARAMS_N * PARAMS_NBAR, ct_c1, (PARAMS_LOGQ * PARAMS_N * PARAMS_NBAR) / 8, PARAMS_LOGQ);
    unpack(C, PARAMS_NBAR * PARAMS_NBAR, ct_c2, (PARAMS_LOGQ * PARAMS_NBAR * PARAMS_NBAR) / 8, PARAMS_LOGQ);
    mul_bs(W, Bp, S);
    sub(W, C, W);
    key_decode((uint16_t *)muprime, W);

    // Generate (seedSE' || k') = G_2(pkh || mu')
    memcpy(pkh, sk_pkh, BYTES_PKHASH);
    shake(G2out, CRYPTO_BYTES + CRYPTO_BYTES, G2in, BYTES_PKHASH + BYTES_MU);

    // Generate Sp and Ep, and compute BBp = Sp*A + Ep. Generate A on-the-fly
    shake_input_seedSEprime[0] = 0x96;
    memcpy(&shake_input_seedSEprime[1], seedSEprime, CRYPTO_BYTES);
    
    shake128incctx state;
    shake128_inc_init(&state);
    shake128_inc_absorb(&state, shake_input_seedSEprime, 1 + CRYPTO_BYTES);
    shake128_inc_finalize(&state);
    shake128_inc_squeeze((uint8_t *)Sp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
    shake128_inc_squeeze((uint8_t *)BBp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
    shake128_inc_squeeze((uint8_t *)W, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t), &state);
    


    sample_n(Sp, PARAMS_N * PARAMS_NBAR);
    sample_n(BBp, PARAMS_N * PARAMS_NBAR);
    mul_add_sa_plus_e(BBp, Sp, pk_seedA);

    // Generate Epp, and compute W = Sp*B + Epp
    sample_n(W, PARAMS_NBAR * PARAMS_NBAR);
    unpack(B, PARAMS_N * PARAMS_NBAR, pk_b, CRYPTO_PUBLICKEYBYTES - BYTES_SEED_A, PARAMS_LOGQ);
    mul_add_sb_plus_e(W, B, Sp);

    // Encode mu, and compute CC = W + enc(mu') (mod q)
    key_encode(CC, (uint16_t *)muprime);
    add(CC, W, CC);

    // Prepare input to F
    memcpy(Fin_ct, ct, CRYPTO_CIPHERTEXTBYTES);

    // Reducing BBp modulo q
    for (size_t i = 0; i < PARAMS_N * PARAMS_NBAR; i++) {
        BBp[i] = BBp[i] & ((1 << PARAMS_LOGQ) - 1);
    }

    // Is (Bp == BBp & C == CC) = true
    if (memcmp(Bp, BBp, 2 * PARAMS_N * PARAMS_NBAR) == 0 && memcmp(C, CC, 2 * PARAMS_NBAR * PARAMS_NBAR) == 0) {
        // Load k' to do ss = F(ct || k')
        memcpy(Fin_k, kprime, CRYPTO_BYTES);
    } else {
        // Load s to do ss = F(ct || s)
        memcpy(Fin_k, sk_s, CRYPTO_BYTES);
    }
    shake(ss, CRYPTO_BYTES, Fin, CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES);

    // Cleanup:
    clear_bytes((uint8_t *)W, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes((uint8_t *)Sp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes((uint8_t *)S, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes(muprime, BYTES_MU);
    clear_bytes(G2out, 2 * CRYPTO_BYTES);
    clear_bytes(Fin_k, CRYPTO_BYTES);
    clear_bytes(shake_input_seedSEprime, 1 + CRYPTO_BYTES);
    return 0;
}
