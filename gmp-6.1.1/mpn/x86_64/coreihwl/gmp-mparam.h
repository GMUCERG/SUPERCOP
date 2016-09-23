/* Haswell gmp-mparam.h -- Compiler/machine parameter header file.

Copyright 1991, 1993, 1994, 2000-2015 Free Software Foundation, Inc.

This file is part of the GNU MP Library.

The GNU MP Library is free software; you can redistribute it and/or modify
it under the terms of either:

  * the GNU Lesser General Public License as published by the Free
    Software Foundation; either version 3 of the License, or (at your
    option) any later version.

or

  * the GNU General Public License as published by the Free Software
    Foundation; either version 2 of the License, or (at your option) any
    later version.

or both in parallel, as here.

The GNU MP Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

You should have received copies of the GNU General Public License and the
GNU Lesser General Public License along with the GNU MP Library.  If not,
see https://www.gnu.org/licenses/.  */

#define GMP_LIMB_BITS 64
#define GMP_LIMB_BYTES 8

/* 4000 MHz Haswell */
/* FFT tuning limit = 200 M */
/* Generated by tuneup.c, 2015-10-07, gcc 4.5 */

#define MOD_1_NORM_THRESHOLD                 0  /* always */
#define MOD_1_UNNORM_THRESHOLD               0  /* always */
#define MOD_1N_TO_MOD_1_1_THRESHOLD          4
#define MOD_1U_TO_MOD_1_1_THRESHOLD          3
#define MOD_1_1_TO_MOD_1_2_THRESHOLD        10
#define MOD_1_2_TO_MOD_1_4_THRESHOLD        26
#define PREINV_MOD_1_TO_MOD_1_THRESHOLD     10
#define USE_PREINV_DIVREM_1                  1  /* native */
#define DIV_QR_1_NORM_THRESHOLD              1
#define DIV_QR_1_UNNORM_THRESHOLD        MP_SIZE_T_MAX  /* never */
#define DIV_QR_2_PI2_THRESHOLD           MP_SIZE_T_MAX  /* never */
#define DIVEXACT_1_THRESHOLD                 0  /* always (native) */
#define BMOD_1_TO_MOD_1_THRESHOLD           25

#define MUL_TOOM22_THRESHOLD                22
#define MUL_TOOM33_THRESHOLD                74
#define MUL_TOOM44_THRESHOLD               195
#define MUL_TOOM6H_THRESHOLD               298
#define MUL_TOOM8H_THRESHOLD               406

#define MUL_TOOM32_TO_TOOM43_THRESHOLD     121
#define MUL_TOOM32_TO_TOOM53_THRESHOLD     138
#define MUL_TOOM42_TO_TOOM53_THRESHOLD     128
#define MUL_TOOM42_TO_TOOM63_THRESHOLD     132
#define MUL_TOOM43_TO_TOOM54_THRESHOLD     170

#define SQR_BASECASE_THRESHOLD               0  /* always (native) */
#define SQR_TOOM2_THRESHOLD                 34
#define SQR_TOOM3_THRESHOLD                117
#define SQR_TOOM4_THRESHOLD                336
#define SQR_TOOM6_THRESHOLD                426
#define SQR_TOOM8_THRESHOLD                562

#define MULMID_TOOM42_THRESHOLD             42

#define MULMOD_BNM1_THRESHOLD               13
#define SQRMOD_BNM1_THRESHOLD               17

#define MUL_FFT_MODF_THRESHOLD             380  /* k = 5 */
#define MUL_FFT_TABLE3                                      \
  { {    380, 5}, {     19, 6}, {     10, 5}, {     21, 6}, \
    {     11, 5}, {     23, 6}, {     21, 7}, {     11, 6}, \
    {     24, 7}, {     13, 6}, {     27, 7}, {     21, 8}, \
    {     11, 7}, {     25, 8}, {     13, 7}, {     28, 8}, \
    {     15, 7}, {     31, 8}, {     21, 9}, {     11, 8}, \
    {     27, 9}, {     15, 8}, {     35, 9}, {     19, 8}, \
    {     39, 9}, {     23, 8}, {     47, 9}, {     27,10}, \
    {     15, 9}, {     39,10}, {     23, 9}, {     51,11}, \
    {     15,10}, {     31, 9}, {     67,10}, {     39, 9}, \
    {     83,10}, {     47, 9}, {     95,10}, {     55,11}, \
    {     31,10}, {     79,11}, {     47,10}, {     95,12}, \
    {     31,11}, {     63,10}, {    135,11}, {     79,10}, \
    {    159, 9}, {    319,11}, {     95,10}, {    191, 9}, \
    {    383,11}, {    111,12}, {     63,11}, {    127,10}, \
    {    255, 9}, {    511,10}, {    271,11}, {    143,10}, \
    {    287, 9}, {    575,10}, {    303, 9}, {    607,11}, \
    {    159,10}, {    319,12}, {     95,11}, {    191,10}, \
    {    383,11}, {    207,13}, {     63,12}, {    127,11}, \
    {    255,10}, {    511,11}, {    271,10}, {    543,11}, \
    {    287,10}, {    575,11}, {    303,10}, {    607,12}, \
    {    159,11}, {    319,10}, {    639,11}, {    335,10}, \
    {    671,11}, {    351,10}, {    703,11}, {    367,10}, \
    {    735,12}, {    191,11}, {    383,10}, {    767,11}, \
    {    415,10}, {    831,12}, {    223,11}, {    447,10}, \
    {    895,11}, {    479,13}, {    127,12}, {    255,11}, \
    {    511,10}, {   1023,11}, {    543,10}, {   1087,12}, \
    {    287,11}, {    575,10}, {   1151,11}, {    607,12}, \
    {    319,11}, {    671,12}, {    351,11}, {    703,10}, \
    {   1407,11}, {    735,12}, {    383,11}, {    767,12}, \
    {    415,11}, {    831,10}, {   1663,12}, {    447,11}, \
    {    895,12}, {    479,14}, {    127,13}, {    255,12}, \
    {    543,11}, {   1087,12}, {    575,11}, {   1151,12}, \
    {    607,11}, {   1215,13}, {    319,12}, {    671,11}, \
    {   1343,12}, {    735,13}, {    383,12}, {    767,11}, \
    {   1535,12}, {    831,13}, {    447,12}, {    959,11}, \
    {   1919,13}, {    511,12}, {   1087,13}, {    575,12}, \
    {   1215,11}, {   2431,13}, {    639,12}, {   1343,13}, \
    {    703,12}, {   1407,14}, {    383,13}, {    767,12}, \
    {   1535,13}, {    831,12}, {   1663,13}, {    959,12}, \
    {   1919,14}, {    511,13}, {   1087,12}, {   2175,13}, \
    {   1215,12}, {   2431,14}, {    639,13}, {   1279,12}, \
    {   2559,13}, {   1343,12}, {   2687,13}, {   1407,12}, \
    {   2815,13}, {   1471,12}, {   2943,14}, {    767,13}, \
    {   1599,12}, {   3199,13}, {   1663,14}, {    895,13}, \
    {   1791,12}, {   3583,13}, {   1919,15}, {    511,14}, \
    {   1023,13}, {   2175,14}, {   1151,13}, {   2431,12}, \
    {   4863,14}, {   1279,13}, {   2687,14}, {   1407,13}, \
    {   2943,15}, {    767,14}, {   1535,13}, {   3199,14}, \
    {   1663,13}, {   3455,12}, {   6911,14}, {   1791,13}, \
    {   3583,14}, {   1919,13}, {   3839,16}, {    511,15}, \
    {   1023,14}, {   2175,13}, {   4351,14}, {   2303,13}, \
    {   4607,14}, {   2431,13}, {   4863,15}, {   1279,14}, \
    {   2943,13}, {   5887,15}, {   1535,14}, {   3455,13}, \
    {   6911,15}, {   1791,14}, {   3839,13}, {   7679,16}, \
    {   1023,15}, {   2047,14}, {   4351,15}, {   2303,14}, \
    {   4863,15}, {   2815,14}, {   5887,16}, {   1535,15}, \
    {   3071,14}, {   6143,15}, {   3327,14}, {   6911,15}, \
    {   3839,14}, {   7679,17}, {   1023,16}, {   2047,15}, \
    {   4863,16}, {   2559,15}, {   5887,14}, {  11775,16}, \
    {  65536,17}, { 131072,18}, { 262144,19}, { 524288,20}, \
    {1048576,21}, {2097152,22}, {4194304,23}, {8388608,24} }
#define MUL_FFT_TABLE3_SIZE 244
#define MUL_FFT_THRESHOLD                 4224

#define SQR_FFT_MODF_THRESHOLD             368  /* k = 5 */
#define SQR_FFT_TABLE3                                      \
  { {    368, 5}, {     19, 6}, {     10, 5}, {     21, 6}, \
    {     11, 5}, {     23, 6}, {     25, 7}, {     13, 6}, \
    {     27, 7}, {     21, 8}, {     11, 7}, {     25, 8}, \
    {     13, 7}, {     28, 8}, {     15, 7}, {     31, 8}, \
    {     21, 9}, {     11, 8}, {     27, 9}, {     15, 8}, \
    {     35, 9}, {     19, 8}, {     41, 9}, {     23, 8}, \
    {     47, 9}, {     27,10}, {     15, 9}, {     39,10}, \
    {     23, 9}, {     51,11}, {     15,10}, {     31, 9}, \
    {     63,10}, {     39, 9}, {     79,10}, {     55,11}, \
    {     31,10}, {     79,11}, {     47,10}, {     95,12}, \
    {     31,11}, {     63,10}, {    127, 9}, {    255,10}, \
    {    135,11}, {     79,10}, {    159, 9}, {    319,11}, \
    {     95,10}, {    191, 9}, {    383,12}, {     63,11}, \
    {    127,10}, {    255, 9}, {    511,10}, {    271, 9}, \
    {    543,11}, {    143,10}, {    287, 9}, {    575,10}, \
    {    303, 9}, {    607,11}, {    159,10}, {    319, 9}, \
    {    639,12}, {     95,11}, {    191,10}, {    383, 9}, \
    {    767,11}, {    207,13}, {     63,12}, {    127,11}, \
    {    255,10}, {    511,11}, {    271,10}, {    543,11}, \
    {    287,10}, {    575,11}, {    303,10}, {    607,11}, \
    {    319,10}, {    639,11}, {    335,10}, {    671,11}, \
    {    351,10}, {    703,11}, {    367,12}, {    191,11}, \
    {    383,10}, {    767,11}, {    415,10}, {    831,12}, \
    {    223,11}, {    447,10}, {    895,11}, {    479,13}, \
    {    127,12}, {    255,11}, {    543,10}, {   1087,11}, \
    {    607,12}, {    319,11}, {    671,12}, {    351,11}, \
    {    735,12}, {    383,11}, {    767,12}, {    415,11}, \
    {    831,12}, {    447,11}, {    895,12}, {    479,14}, \
    {    127,12}, {    511,11}, {   1023,12}, {    543,11}, \
    {   1087,12}, {    607,11}, {   1215,13}, {    319,12}, \
    {    671,11}, {   1343,12}, {    735,13}, {    383,12}, \
    {    767,11}, {   1535,12}, {    831,13}, {    447,12}, \
    {    895,11}, {   1791,12}, {    959,13}, {    511,12}, \
    {   1087,13}, {    575,12}, {   1215,13}, {    639,12}, \
    {   1343,13}, {    703,12}, {   1407,14}, {    383,13}, \
    {    767,12}, {   1535,13}, {    831,12}, {   1663,13}, \
    {    895,12}, {   1791,13}, {    959,14}, {    511,13}, \
    {   1087,12}, {   2175,13}, {   1215,14}, {    639,13}, \
    {   1343,12}, {   2687,13}, {   1407,12}, {   2815,13}, \
    {   1471,14}, {    767,13}, {   1599,12}, {   3199,13}, \
    {   1663,14}, {    895,13}, {   1791,12}, {   3583,13}, \
    {   1919,15}, {    511,14}, {   1023,13}, {   2175,14}, \
    {   1151,13}, {   2431,12}, {   4863,14}, {   1279,13}, \
    {   2687,14}, {   1407,13}, {   2943,15}, {    767,14}, \
    {   1535,13}, {   3199,14}, {   1663,13}, {   3455,12}, \
    {   6911,14}, {   1791,13}, {   3583,14}, {   1919,16}, \
    {    511,15}, {   1023,14}, {   2431,13}, {   4863,15}, \
    {   1279,14}, {   2943,13}, {   5887,15}, {   1535,14}, \
    {   3455,13}, {   6911,15}, {   1791,14}, {   3839,13}, \
    {   7679,16}, {   1023,15}, {   2047,14}, {   4223,15}, \
    {   2303,14}, {   4863,15}, {   2559,14}, {   5119,15}, \
    {   2815,14}, {   5887,16}, {   1535,15}, {   3071,14}, \
    {   6143,15}, {   3327,14}, {   6911,15}, {   3839,14}, \
    {   7679,17}, {   1023,16}, {   2047,15}, {   4863,16}, \
    {   2559,15}, {   5887,14}, {  11775,16}, {  65536,17}, \
    { 131072,18}, { 262144,19}, { 524288,20}, {1048576,21}, \
    {2097152,22}, {4194304,23}, {8388608,24} }
#define SQR_FFT_TABLE3_SIZE 227
#define SQR_FFT_THRESHOLD                 3264

#define MULLO_BASECASE_THRESHOLD             0  /* always */
#define MULLO_DC_THRESHOLD                  78
#define MULLO_MUL_N_THRESHOLD             8207
#define SQRLO_BASECASE_THRESHOLD            11
#define SQRLO_DC_THRESHOLD                  92
#define SQRLO_SQR_THRESHOLD               6481

#define DC_DIV_QR_THRESHOLD                 63
#define DC_DIVAPPR_Q_THRESHOLD             195
#define DC_BDIV_QR_THRESHOLD                56
#define DC_BDIV_Q_THRESHOLD                128

#define INV_MULMOD_BNM1_THRESHOLD           42
#define INV_NEWTON_THRESHOLD               199
#define INV_APPR_THRESHOLD                 181

#define BINV_NEWTON_THRESHOLD              236
#define REDC_1_TO_REDC_2_THRESHOLD          47
#define REDC_2_TO_REDC_N_THRESHOLD          62

#define MU_DIV_QR_THRESHOLD               1470
#define MU_DIVAPPR_Q_THRESHOLD            1589
#define MUPI_DIV_QR_THRESHOLD               78
#define MU_BDIV_QR_THRESHOLD              1442
#define MU_BDIV_Q_THRESHOLD               1470

#define POWM_SEC_TABLE  3,22,194,257,1099

#define GET_STR_DC_THRESHOLD                12
#define GET_STR_PRECOMPUTE_THRESHOLD        21
#define SET_STR_DC_THRESHOLD              1432
#define SET_STR_PRECOMPUTE_THRESHOLD      2729

#define FAC_DSC_THRESHOLD                  725
#define FAC_ODD_THRESHOLD                    0  /* always */

#define MATRIX22_STRASSEN_THRESHOLD         17
#define HGCD_THRESHOLD                     112
#define HGCD_APPR_THRESHOLD                 52
#define HGCD_REDUCE_THRESHOLD             2681
#define GCD_DC_THRESHOLD                   807
#define GCDEXT_DC_THRESHOLD                416
#define JACOBI_BASE_METHOD                   4
