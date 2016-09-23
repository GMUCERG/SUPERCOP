#define EC_FP_SMULBASE_WINDOW 8
#define EC_FP_SMULBASE_CACHE_SIZE ((1 << EC_FP_SMULBASE_WINDOW)*(256/((sizeof(unsigned char)*8))))
#define EC_FP_SMULBASE_SLICE 0

#define EC_FP_SMULBASE_256I_CACHE static const unsigned char sn0[256/(sizeof(unsigned char))] = { \
	0x05, 0x05, 0x9F, 0x2A, 0xB5, 0x9B, 0x82, 0x40, 0xC8, 0xC6, 0x26, 0xB9, 0x92, 0xD7, 0x43, 0x67, 0x2A, 0xC0, 0xD9, 0x9F, 0x1B, 0xFC, 0xDF, 0x7E, 0x39, 0xD5, 0x46, 0x28, 0x19, 0x06, 0x8A, 0xE7 \
}, cn0[256/(sizeof(unsigned char))] = { \
	0xAC, 0xA2, 0xAC, 0xE5, 0xB7, 0x9A, 0xC9, 0xBC, 0xFC, 0x45, 0x6E, 0x27, 0x2D, 0xC4, 0xCA, 0x03, 0x07, 0xD5, 0xF6, 0xFE, 0xF8, 0x06, 0x36, 0x20, 0x3B, 0x6B, 0xB3, 0xC6, 0x44, 0x4E, 0xBD, 0x38 \
}, dn0[256/(sizeof(unsigned char))] = { \
	0xA9, 0x4B, 0x6C, 0x7F, 0x51, 0x27, 0x23, 0x5A, 0xF1, 0x4B, 0xBE, 0x6B, 0x13, 0xBB, 0x40, 0xB2, 0x32, 0x7D, 0x3B, 0x86, 0x78, 0x49, 0xE1, 0xF5, 0x73, 0x10, 0x59, 0xAA, 0x1A, 0xC7, 0x95, 0xEB \
};
