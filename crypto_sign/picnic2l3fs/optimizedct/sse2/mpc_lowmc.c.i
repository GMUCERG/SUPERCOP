/*
 *  This file is part of the optimized implementation of the Picnic signature scheme.
 *  See the accompanying documentation for complete details.
 *
 *  The code is provided under the MIT license, see LICENSE for
 *  more details.
 *  SPDX-License-Identifier: MIT
 */

#if defined(LOWMC_INSTANCE_10)
#define M_FIXED_10
#define N_SIGN CONCAT(SIGN, 10)
#define N_VERIFY CONCAT(VERIFY, 10)
#define MZD_SHUFFLE CONCAT(SHUFFLE, 30)
#define ADDMUL_R ADDMUL_R_10
#define MUL_Z MUL_Z_10
#define XOR_MC XOR_MC_10
#define MUL_MC MUL_MC_10
#define LOWMC_R LOWMC_R_10
#define LOWMC_INSTANCE LOWMC_INSTANCE_10
#include "mpc_lowmc_impl.c.i"
#undef ADDMUL_R
#undef MUL_Z
#undef LOWMC_R
#undef LOWMC_INSTANCE
#undef M_FIXED_10
#undef MZD_SHUFFLE
#undef XOR_MC
#undef MUL_MC
#endif


#undef SIGN
#undef VERIFY

// vim: ft=c
