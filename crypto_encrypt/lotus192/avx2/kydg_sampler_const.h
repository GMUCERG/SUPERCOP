/**
 * @file kydg_sampler_const.h
 * @author Takuya HAYASHI (t-hayashi@eedept.kobe-u.ac.jp)
 * @brief Table for Knuth-Yao discrete Gaussian sampler with s = 3.0. 
 */

#ifndef _KYDG_SAMPLER_CONST_H
#define _KYDG_SAMPLER_CONST_H

#define _LOTUS_KYDG_SAMPLER_SIGMA 1.19683
#define _LOTUS_KYDG_SAMPLER_CENTER 0
#define _LOTUS_KYDG_SAMPLER_TAILBOUND 22
#define _LOTUS_KYDG_SAMPLER_L1_NCOL 254
#define _LOTUS_KYDG_SAMPLER_L1_WEIGHTDEPTH 25
#define _LOTUS_KYDG_SAMPLER_LUTDEPTH 8

const unsigned char _LOTUS_KYDG_SAMPLER_L1_weight[] = {
  0x1, 0x3, 0x4, 0x2, 
  0x1, 0x3, 0x3, 0x4, 
  0x1, 0x3, 0x2, 0x5, 
  0x2, 0x4, 0x4, 0x5, 
  0x2, 0x3, 0x5, 0x6, 
  0x4, 0x4, 0x3, 0x4, 
  0x6};

const unsigned int _LOTUS_KYDG_SAMPLER_L1_pMat[] = {
  0x8000000, 0xd0000000, 0x78000000, 0xa0000000, 
  0x20000000, 0xa4000000, 0x2c000000, 0xcc000000, 
  0x8000000, 0xa8000000, 0xa000000, 0xec000000, 
  0x18000000, 0x8e000000, 0x1e000000, 0xf2000000, 
  0x28000000, 0x91000000, 0x3d000000, 0xfc000000, 
  0x1d000000, 0xd4000000, 0x19000000, 0xe2000000, 
  0x6d800000, 0xdf000000, 0x74000000, 0xbe800000, 
  0x6f000000, 0xa5000000, 0x35000000, 0x50800000, 
  0xa2800000, 0xcf400000, 0xd7400000, 0x83000000, 
  0x22000000, 0x34000000, 0xb2400000, 0x1d800000, 
  0xaa400000, 0x63000000, 0xd2a00000, 0xce400000, 
  0xfc00000, 0xa6c00000, 0x7e400000, 0x16a00000, 
  0x2d400000, 0x78a00000, 0xb2000000, 0x94800000, 
  0x1800000, 0x9b100000, 0x35400000, 0xbc300000, 
  0xe7900000, 0xe3800000, 0xf5200000, 0xe1100000, 
  0xc9200000, 0xb1100000, 0x56200000, 0xba000000, 
  0x44200000, 0xc5680000, 0x42780000, 0xf5380000, 
  0x36e00000, 0xcd480000, 0xde280000, 0x6c280000, 
  0x91d00000, 0xe2100000, 0xd0f80000, 0x75080000, 
  0x69100000, 0x24b40000, 0x83980000, 0xfdf80000, 
  0xe3cc0000, 0x385c0000, 0x2e6c0000, 0x64540000, 
  0x84a80000, 0x90780000, 0x5d3c0000, 0x287c0000, 
  0x55b80000, 0xb500000, 0x81cc0000, 0x9ba20000, 
  0x99de0000, 0xb0d00000, 0x90320000, 0x1a2c0000, 
  0x6af40000, 0x86e80000, 0xe3a60000, 0x51500000, 
  0x16020000, 0xc7820000, 0x20880000, 0xd4320000, 
  0x19720000, 0x96d0000, 0x83520000, 0x15f00000, 
  0x8e9a0000, 0x539f0000, 0xef8c0000, 0xfddc0000, 
  0xfe210000, 0xc190000, 0x31cf0000, 0x47be0000, 
  0x9b560000, 0x514c0000, 0xcb4c0000, 0x73910000, 
  0xb9690000, 0x78428000, 0xa0da0000, 0xa9a8000, 
  0x61b8000, 0x8a800000, 0xbb3a8000, 0xfd840000, 
  0xb78e0000, 0x1a8d0000, 0x87718000, 0xb3b50000, 
  0xa06b8000, 0x99e90000, 0x47018000, 0x64918000, 
  0x6a170000, 0x73b18000, 0x975dc000, 0x2830c000, 
  0xad174000, 0x96a50000, 0xb7fcc000, 0xea6e8000, 
  0x7ed4000, 0x6cd00000, 0x9078c000, 0x6db2c000, 
  0x75c84000, 0x27468000, 0x58bf0000, 0x7b2d4000, 
  0x135dc000, 0x96924000, 0xc2ac0000, 0x82e62000, 
  0x47f98000, 0xda488000, 0x70752000, 0xfc57a000, 
  0xd4430000, 0x59ef0000, 0xcee74000, 0xaab64000, 
  0xc9dc4000, 0xb7836000, 0x80a8e000, 0xfeab2000, 
  0xa3364000, 0x68568000, 0x6f0e6000, 0x5ca82000, 
  0x3271a000, 0x2dd6e000, 0x79699000, 0xa41f5000, 
  0x196e000, 0x44c58000, 0xe835c000, 0x101f000, 
  0x9525a000, 0x2fde2000, 0x27658000, 0x359fb000, 
  0x86630000, 0xa1ef1000, 0x42efc000, 0xbf986000, 
  0x5766000, 0xe3cae000, 0xd1441000, 0xa6f5f000, 
  0xed5d7000, 0x80cbb000, 0x723a1800, 0x66f66800, 
  0xcfa0a800, 0xacb53800, 0x63a61800, 0x10353000, 
  0xba74d800, 0xfe707800, 0xbe7cc800, 0xb2946800, 
  0x2f434800, 0x705e2000, 0xa59b3800, 0x9c0ad000, 
  0xc8d8d800, 0xbb646000, 0x29c5d800, 0x7065a800, 
  0xbda6b800, 0xbcca4800, 0x442a9400, 0xac98c000, 
  0x74e42400, 0xf27d3800, 0x3c1b2800, 0x4476c000, 
  0x5b57800, 0x65053800, 0xfcb8fc00, 0x2bf0c00, 
  0xf3003000, 0xde795c00, 0x84270000, 0x1f964c00, 
  0xb659e000, 0x2ccfc800, 0xa3dac800, 0xe3a79c00, 
  0xa4223c00, 0x47521000, 0xbe775c00, 0xd93f0800, 
  0xbe4c2600, 0x42b7e200, 0xb31bac00, 0xf1503c00, 
  0xa79a0600, 0xf423e00, 0x343c9800, 0xe97b0800, 
  0xd5417c00, 0x8665aa00, 0x6e65e800, 0x86dbaa00, 
  0xe6dd6c00, 0x407da600, 0xc47f2000, 0x68d4e600, 
  0x9c605400, 0x9eb04e00};

const unsigned char _LOTUS_KYDG_SAMPLER_LUT[] = {
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x3, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x1, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x3, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x0, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x1, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x3, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x3, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x1, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x0, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x1, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x80, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x3, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x1, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x3, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x0, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x1, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x0, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x3, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x1, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x2, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x0, 
  0x1, 0x2, 0x0, 0x1, 
  0x1, 0x1, 0x0, 0x1, 
  0x1, 0x2, 0x0, 0x0, 
  0x1, 0x1, 0x0, 0x81
};

#endif