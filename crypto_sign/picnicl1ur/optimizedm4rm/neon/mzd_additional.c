/*
 *  This file is part of the optimized implementation of the Picnic signature scheme.
 *  See the accompanying documentation for complete details.
 *
 *  The code is provided under the MIT license, see LICENSE for
 *  more details.
 *  SPDX-License-Identifier: MIT
 */


#include "compat.h"
#include "mzd_additional.h"

#if !defined(_MSC_VER)
#include <stdalign.h>
#endif
#include <assert.h>
#include <stdlib.h>
#include <string.h>

#if !defined(_MSC_VER) && !defined(static_assert)
#define static_assert _Static_assert
#endif

static const size_t mzd_local_t_size = (sizeof(mzd_local_t) + 0x1f) & ~0x1f;
static_assert(((sizeof(mzd_local_t) + 0x1f) & ~0x1f) == 32, "sizeof mzd_local_t not supported");

#include "simd.h"

static const unsigned int word_size_bits = 8 * sizeof(word);
static const unsigned int align_bound = 128 / (8 * sizeof(word));

static uint32_t calculate_rowstride(uint32_t width) {
  // As soon as we hit the AVX bound, use 32 byte alignment. Otherwise use 16
  // byte alignment for SSE2 and 128 bit vectors.
  if (width > align_bound) {
    return ((width * sizeof(word) + 31) & ~31) / sizeof(word);
  } else {
    return ((width * sizeof(word) + 15) & ~15) / sizeof(word);
  }
}

static uint32_t calculate_width(uint32_t c) {
  return (c + sizeof(word) * 8 - 1) / (sizeof(word) * 8);
}

// Notes on the memory layout: mzd_init allocates multiple memory blocks (one
// for mzd_local_t, one for rows and multiple for the buffers). We use one memory
// block for mzd_local_t, rows and the buffer. This improves memory locality and
// requires less calls to malloc.
//
// In mzd_local_init_multiple we do the same, but store n mzd_local_t instances in one
// memory block.

mzd_local_t* mzd_local_init_ex(uint32_t r, uint32_t c, bool clear) {
  const uint32_t width     = calculate_width(c);
  const uint32_t rowstride = calculate_rowstride(width);

  const size_t buffer_size = r * rowstride * sizeof(word);

  /* We always align mzd_local_ts to 32 bytes. Thus the first row is always
   * aligned to 32 bytes as well. For 128 bit and SSE all other rows are then
   * aligned to 16 bytes. */
  unsigned char* buffer = aligned_alloc(32, (mzd_local_t_size + buffer_size + 31) & ~31);

  mzd_local_t* A = (mzd_local_t*)buffer;
  buffer += mzd_local_t_size;

  if (clear) {
    memset(buffer, 0, buffer_size);
  }

  // assign in order
  A->nrows     = r;
  A->ncols     = c;
  A->width     = width;
  A->rowstride = rowstride;

  return A;
}

void mzd_local_free(mzd_local_t* v) {
  aligned_free(v);
}

void mzd_local_init_multiple_ex(mzd_local_t** dst, size_t n, uint32_t r, uint32_t c, bool clear) {
  const uint32_t width     = calculate_width(c);
  const uint32_t rowstride = calculate_rowstride(width);

  const size_t buffer_size   = r * rowstride * sizeof(word);
  const size_t size_per_elem = (mzd_local_t_size + buffer_size + 31) & ~31;

  unsigned char* full_buffer = aligned_alloc(32, size_per_elem * n);

  for (size_t s = 0; s < n; ++s, full_buffer += size_per_elem) {
    unsigned char* buffer = full_buffer;
    mzd_local_t* A        = (mzd_local_t*)buffer;
    dst[s]                = A;

    buffer += mzd_local_t_size;

    if (clear) {
      memset(buffer, 0, buffer_size);
    }

    // assign in order
    A->nrows     = r;
    A->ncols     = c;
    A->width     = width;
    A->rowstride = rowstride;
  }
}

void mzd_local_free_multiple(mzd_local_t** vs) {
  if (vs) {
    aligned_free(vs[0]);
  }
}

mzd_local_t* mzd_local_copy(mzd_local_t* dst, mzd_local_t const* src) {
  if (dst == src) {
    return dst;
  }

  if (!dst) {
    dst = mzd_local_init(src->nrows, src->ncols);
  }

  memcpy(ASSUME_ALIGNED(FIRST_ROW(dst), 32), ASSUME_ALIGNED(CONST_FIRST_ROW(src), 32),
         src->nrows * sizeof(word) * src->rowstride);
  return dst;
}

void mzd_local_clear(mzd_local_t* c) {
  memset(ASSUME_ALIGNED(FIRST_ROW(c), 32), 0, c->nrows * sizeof(word) * c->rowstride);
}

void mzd_shift_right(mzd_local_t* res, mzd_local_t const* val, unsigned count) {
  if (!count) {
    mzd_local_copy(res, val);
    return;
  }

  const unsigned int nwords     = val->width;
  const unsigned int left_count = 8 * sizeof(word) - count;

  word* resptr       = ASSUME_ALIGNED(FIRST_ROW(res), 32);
  word const* valptr = ASSUME_ALIGNED(CONST_FIRST_ROW(val), 32);

  for (unsigned int i = nwords - 1; i; --i, ++resptr) {
    const word tmp = *valptr >> count;
    *resptr        = tmp | (*++valptr << left_count);
  }
  *resptr = *valptr >> count;
}

void mzd_shift_left(mzd_local_t* res, mzd_local_t const* val, unsigned count) {
  if (!count) {
    mzd_local_copy(res, val);
    return;
  }

  const unsigned int nwords      = val->width;
  const unsigned int right_count = 8 * sizeof(word) - count;

  word* resptr       = FIRST_ROW(res) + nwords - 1;
  word const* valptr = CONST_FIRST_ROW(val) + nwords - 1;

  for (unsigned int i = nwords - 1; i; --i, --resptr) {
    const word tmp = *valptr << count;
    *resptr        = tmp | (*--valptr >> right_count);
  }
  *resptr = *valptr << count;
}



static inline void mzd_and_neon(mzd_local_t* res, mzd_local_t const* first,
                                mzd_local_t const* second) {
  unsigned int width           = first->rowstride;
  uint32x4_t* mresptr          = ASSUME_ALIGNED(FIRST_ROW(res), alignof(uint32x4_t));
  uint32x4_t const* mfirstptr  = ASSUME_ALIGNED(CONST_FIRST_ROW(first), alignof(uint32x4_t));
  uint32x4_t const* msecondptr = ASSUME_ALIGNED(CONST_FIRST_ROW(second), alignof(uint32x4_t));

  do {
    *mresptr++ = vandq_u32(*mfirstptr++, *msecondptr++);
    width -= sizeof(uint32x4_t) / sizeof(word);
  } while (width);
}

void mzd_and(mzd_local_t* res, mzd_local_t const* first, mzd_local_t const* second) {
  if (CPU_SUPPORTS_NEON && first->ncols % ((first->ncols & (word_size_bits - 1)) == 0)) {
    mzd_and_neon(res, first, second);
    return;
  }

  unsigned int width    = first->width;
  word* resptr          = ASSUME_ALIGNED(FIRST_ROW(res), 32);
  word const* firstptr  = ASSUME_ALIGNED(CONST_FIRST_ROW(first), 32);
  word const* secondptr = ASSUME_ALIGNED(CONST_FIRST_ROW(second), 32);

  while (width--) {
    *resptr++ = *firstptr++ & *secondptr++;
  }
}



void mzd_xor_neon(mzd_local_t* res, mzd_local_t const* first, mzd_local_t const* second) {
  unsigned int width           = first->rowstride;
  uint32x4_t* mresptr          = ASSUME_ALIGNED(FIRST_ROW(res), alignof(uint32x4_t));
  uint32x4_t const* mfirstptr  = ASSUME_ALIGNED(CONST_FIRST_ROW(first), alignof(uint32x4_t));
  uint32x4_t const* msecondptr = ASSUME_ALIGNED(CONST_FIRST_ROW(second), alignof(uint32x4_t));

  do {
    *mresptr++ = veorq_u32(*mfirstptr++, *msecondptr++);
    width -= sizeof(uint32x4_t) / sizeof(word);
  } while (width);
}

void mzd_xor_neon_128(mzd_local_t* res, mzd_local_t const* first, mzd_local_t const* second) {
  uint32x4_t* mresptr          = ASSUME_ALIGNED(FIRST_ROW(res), alignof(uint32x4_t));
  uint32x4_t const* mfirstptr  = ASSUME_ALIGNED(CONST_FIRST_ROW(first), alignof(uint32x4_t));
  uint32x4_t const* msecondptr = ASSUME_ALIGNED(CONST_FIRST_ROW(second), alignof(uint32x4_t));

  *mresptr = veorq_u32(*mfirstptr, *msecondptr);
}

void mzd_xor_neon_256(mzd_local_t* res, mzd_local_t const* first, mzd_local_t const* second) {
  uint32x4_t* mresptr          = ASSUME_ALIGNED(FIRST_ROW(res), alignof(uint32x4_t));
  uint32x4_t const* mfirstptr  = ASSUME_ALIGNED(CONST_FIRST_ROW(first), alignof(uint32x4_t));
  uint32x4_t const* msecondptr = ASSUME_ALIGNED(CONST_FIRST_ROW(second), alignof(uint32x4_t));

  mresptr[0] = veorq_u32(mfirstptr[0], msecondptr[0]);
  mresptr[1] = veorq_u32(mfirstptr[1], msecondptr[1]);
}

void mzd_xor(mzd_local_t* res, mzd_local_t const* first, mzd_local_t const* second) {
  if (CPU_SUPPORTS_NEON && ((first->ncols & (word_size_bits - 1)) == 0)) {
    mzd_xor_neon(res, first, second);
    return;
  }
  mzd_xor_uint64(res, first, second);
}

void mzd_xor_uint64(mzd_local_t* res, mzd_local_t const* first, mzd_local_t const* second) {
  unsigned int width    = first->width;
  word* resptr          = ASSUME_ALIGNED(FIRST_ROW(res), 32);
  word const* firstptr  = ASSUME_ALIGNED(CONST_FIRST_ROW(first), 32);
  word const* secondptr = ASSUME_ALIGNED(CONST_FIRST_ROW(second), 32);

  while (width--) {
    *resptr++ = *firstptr++ ^ *secondptr++;
  }
}

void mzd_mul_v(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* At) {
  if (At->nrows != v->ncols) {
    // number of columns does not match
    return;
  }

  mzd_local_clear(c);
  mzd_addmul_v(c, v, At);
}

void mzd_mul_v_uint64(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* At) {
  if (At->nrows != v->ncols) {
    // number of columns does not match
    return;
  }

  mzd_local_clear(c);
  mzd_addmul_v_uint64(c, v, At);
}



void mzd_mul_v_neon(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  mzd_local_clear(c);
  mzd_addmul_v_neon(c, v, A);
}

void mzd_addmul_v_neon(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  const unsigned int width      = v->width;
  const unsigned int rowstride  = A->rowstride;
  const unsigned int mrowstride = rowstride * sizeof(word) / sizeof(uint32x4_t);
  const unsigned int len        = mrowstride;

  word const* vptr  = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);
  uint32x4_t* mcptr = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));

  for (unsigned int w = 0; w < width; ++w, ++vptr) {
    word idx = *vptr;
    uint32x4_t const* mAptr =
        ASSUME_ALIGNED(CONST_ROW(A, w * sizeof(word) * 8), alignof(uint32x4_t));

    for (unsigned int i = sizeof(word) * 8; i; --i, idx >>= 1, mAptr += mrowstride) {
      mm128_xor_mask_region(mcptr, mAptr, vreinterpretq_u32_u64(vdupq_n_u64(-(idx & 1))), len);
    }
  }
}

void mzd_mul_v_neon_128(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  word const* vptr = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);

  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  uint32x4_t cval[2] ATTR_ALIGNED(alignof(uint32x4_t)) = {vmovq_n_u32(0), vmovq_n_u32(0)};
  for (unsigned int w = 2; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int i = sizeof(word) * 8; i; i -= 4, idx >>= 4, mAptr += 4) {
      mm128_xor_mask_region(&cval[0], mAptr + 0, vreinterpretq_u32_u64(vdupq_n_u64(-(idx & 1))), 1);
      mm128_xor_mask_region(&cval[1], mAptr + 1,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 1) & 1))), 1);
      mm128_xor_mask_region(&cval[0], mAptr + 2,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 2) & 1))), 1);
      mm128_xor_mask_region(&cval[1], mAptr + 3,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 3) & 1))), 1);
    }
  }
  *mcptr = veorq_u32(cval[0], cval[1]);
}

void mzd_addmul_v_neon_128(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  word const* vptr = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);

  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  uint32x4_t cval[2] ATTR_ALIGNED(alignof(uint32x4_t)) = {*mcptr, vmovq_n_u32(0)};
  for (unsigned int w = 2; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int i = sizeof(word) * 8; i; i -= 4, idx >>= 4, mAptr += 4) {
      mm128_xor_mask_region(&cval[0], mAptr + 0, vreinterpretq_u32_u64(vdupq_n_u64(-(idx & 1))), 1);
      mm128_xor_mask_region(&cval[1], mAptr + 1,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 1) & 1))), 1);
      mm128_xor_mask_region(&cval[0], mAptr + 2,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 2) & 1))), 1);
      mm128_xor_mask_region(&cval[1], mAptr + 3,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 3) & 1))), 1);
    }
  }
  *mcptr = veorq_u32(cval[0], cval[1]);
}

void mzd_mul_v_neon_192(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  word const* vptr = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);

  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  uint32x4_t cval[4] ATTR_ALIGNED(alignof(uint32x4_t)) = {vmovq_n_u32(0), vmovq_n_u32(0),
                                                          vmovq_n_u32(0), vmovq_n_u32(0)};
  for (unsigned int w = 3; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int i = sizeof(word) * 8; i; i -= 2, idx >>= 2, mAptr += 4) {
      mm128_xor_mask_region(&cval[0], mAptr + 0, vreinterpretq_u32_u64(vdupq_n_u64(-(idx & 1))), 2);
      mm128_xor_mask_region(&cval[2], mAptr + 2,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 1) & 1))), 2);
    }
  }
  mcptr[0] = veorq_u32(cval[0], cval[2]);
  mcptr[1] = veorq_u32(cval[1], cval[3]);
}

void mzd_addmul_v_neon_192(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  word const* vptr = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);

  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  uint32x4_t cval[4] ATTR_ALIGNED(alignof(uint32x4_t)) = {mcptr[0], mcptr[1], vmovq_n_u32(0),
                                                          vmovq_n_u32(0)};
  for (unsigned int w = 3; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int i = sizeof(word) * 8; i; i -= 2, idx >>= 2, mAptr += 4) {
      mm128_xor_mask_region(&cval[0], mAptr + 0, vreinterpretq_u32_u64(vdupq_n_u64(-(idx & 1))), 2);
      mm128_xor_mask_region(&cval[2], mAptr + 2,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 1) & 1))), 2);
    }
  }
  mcptr[0] = veorq_u32(cval[0], cval[2]);
  mcptr[1] = veorq_u32(cval[1], cval[3]);
}

void mzd_mul_v_neon_256(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  word const* vptr = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);

  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  uint32x4_t cval[4] ATTR_ALIGNED(alignof(uint32x4_t)) = {vmovq_n_u32(0), vmovq_n_u32(0),
                                                          vmovq_n_u32(0), vmovq_n_u32(0)};
  for (unsigned int w = 4; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int i = sizeof(word) * 8; i; i -= 2, idx >>= 2, mAptr += 4) {
      mm128_xor_mask_region(&cval[0], mAptr + 0, vreinterpretq_u32_u64(vdupq_n_u64(-(idx & 1))), 2);
      mm128_xor_mask_region(&cval[2], mAptr + 2,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 1) & 1))), 2);
    }
  }
  mcptr[0] = veorq_u32(cval[0], cval[2]);
  mcptr[1] = veorq_u32(cval[1], cval[3]);
}

void mzd_addmul_v_neon_256(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  word const* vptr = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);

  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  uint32x4_t ATTR_ALIGNED(alignof(uint32x4_t))
      cval[4] = {mcptr[0], mcptr[1], vmovq_n_u32(0), vmovq_n_u32(0)};
  for (unsigned int w = 4; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int i = sizeof(word) * 8; i; i -= 2, idx >>= 2, mAptr += 4) {
      mm128_xor_mask_region(&cval[0], mAptr + 0, vreinterpretq_u32_u64(vdupq_n_u64(-(idx & 1))), 2);
      mm128_xor_mask_region(&cval[2], mAptr + 2,
                            vreinterpretq_u32_u64(vdupq_n_u64(-((idx >> 1) & 1))), 2);
    }
  }
  mcptr[0] = veorq_u32(cval[0], cval[2]);
  mcptr[1] = veorq_u32(cval[1], cval[3]);
}

void mzd_addmul_v(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  if (A->ncols != c->ncols || A->nrows != v->ncols) {
    // number of columns does not match
    return;
  }

  if (A->nrows % (sizeof(word) * 8) == 0) {
    if (CPU_SUPPORTS_NEON && (A->ncols & 0x7f) == 0) {
      mzd_addmul_v_neon(c, v, A);
      return;
    }
  }

  mzd_addmul_v_uint64(c, v, A);
}

void mzd_addmul_v_uint64(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  const unsigned int len       = A->width;
  const unsigned int rowstride = A->rowstride;
  word* cptr                   = ASSUME_ALIGNED(FIRST_ROW(c), 32);
  word const* vptr             = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);
  const unsigned int width     = v->width;
  word const* Aptr             = ASSUME_ALIGNED(CONST_FIRST_ROW(A), 32);

  for (unsigned int w = 0; w < width; ++w, ++vptr) {
    word idx = *vptr;

    for (unsigned int i = sizeof(word) * 8; i; --i, idx >>= 1, Aptr += rowstride) {
      const uint64_t mask = -(idx & 1);
      for (unsigned int i = 0; i < len; ++i) {
        cptr[i] ^= (Aptr[i] & mask);
      }
    }
  }
}

bool mzd_local_equal(mzd_local_t const* first, mzd_local_t const* second) {
  if (first == second) {
    return true;
  }
  if (first->ncols != second->ncols || first->nrows != second->nrows) {
    return false;
  }

  const unsigned int rows  = first->nrows;
  const unsigned int width = first->width;

  for (unsigned int r = 0; r < rows; ++r) {
    if (memcmp(ASSUME_ALIGNED(CONST_ROW(first, r), 32), ASSUME_ALIGNED(CONST_ROW(second, r), 32),
               sizeof(word) * width) != 0) {
      return false;
    }
  }

  return true;
}

static void xor_comb(const unsigned int len, word* Brow, mzd_local_t const* A,
                     unsigned int r_offset, unsigned comb) {
  while (comb) {
    const word* Arow = CONST_ROW(A, r_offset);
    if (comb & 0x1) {
      for (unsigned int i = 0; i < len; ++i) {
        Brow[i] ^= Arow[i];
      }
    }

    comb >>= 1;
    ++r_offset;
  }
}

/**
 * Pre-compute matrices for faster mzd_addmul_v computions.
 */
mzd_local_t* mzd_precompute_matrix_lookup(mzd_local_t const* A) {
  mzd_local_t* B = mzd_local_init_ex(32 * A->nrows, A->ncols, true);

  const unsigned int len = A->width;

  for (unsigned int r = 0; r < B->nrows; ++r) {
    const unsigned int comb     = r & 0xff;
    const unsigned int r_offset = (r >> 8) << 3;
    if (!comb) {
      continue;
    }

    xor_comb(len, ROW(B, r), A, r_offset, comb);
  }

  return B;
}



void mzd_mul_vl_neon_128(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  static const unsigned int moff2 = 256;

  word const* vptr        = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);
  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  uint32x4_t mc ATTR_ALIGNED(alignof(uint32x4_t)) = vmovq_n_u32(0);
  for (unsigned int w = 2; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int s = sizeof(word); s; --s, idx >>= 8, mAptr += moff2) {
      const word comb = idx & 0xff;
      mc              = veorq_u32(mc, mAptr[comb]);
    }
  }

  *mcptr = mc;
}

void mzd_addmul_vl_neon_128(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  static const unsigned int moff2 = 256;

  word const* vptr        = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);
  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  uint32x4_t mc ATTR_ALIGNED(alignof(uint32x4_t)) = *mcptr;
  for (unsigned int w = 2; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int s = sizeof(word); s; --s, idx >>= 8, mAptr += moff2) {
      const word comb = idx & 0xff;
      mc              = veorq_u32(mc, mAptr[comb]);
    }
  }
  *mcptr = mc;
}

void mzd_mul_vl_neon(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  mzd_local_clear(c);
  mzd_addmul_vl_neon(c, v, A);
}

void mzd_addmul_vl_neon(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  word const* vptr              = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);
  const unsigned int width      = v->width;
  const unsigned int rowstride  = A->rowstride;
  const unsigned int mrowstride = rowstride * sizeof(word) / sizeof(uint32x4_t);
  const unsigned int len        = mrowstride;
  const unsigned int moff2      = 256 * mrowstride;

  uint32x4_t* mcptr       = ASSUME_ALIGNED(FIRST_ROW(c), alignof(uint32x4_t));
  uint32x4_t const* mAptr = ASSUME_ALIGNED(CONST_FIRST_ROW(A), alignof(uint32x4_t));

  for (unsigned int w = width; w; --w, ++vptr) {
    word idx = *vptr;
    for (unsigned int s = sizeof(word); s; --s, idx >>= 8, mAptr += moff2) {
      const word comb = idx & 0xff;
      mm128_xor_region(mcptr, mAptr + comb * mrowstride, len);
    }
  }
}

void mzd_mul_vl(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  if (A->nrows != 32 * v->ncols) {
    // number of columns does not match
    return;
  }

  if (A->nrows % (sizeof(word) * 8) == 0) {
    if (CPU_SUPPORTS_NEON) {
      if (A->ncols == 128 && v->ncols == 128) {
        mzd_mul_vl_neon_128(c, v, A);
        return;
      }
    }
  }
  mzd_local_clear(c);
  mzd_addmul_vl(c, v, A);
}

void mzd_mul_vl_uint64(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  mzd_local_clear(c);
  mzd_addmul_vl_uint64(c, v, A);
}

void mzd_addmul_vl(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  if (A->ncols != c->ncols || A->nrows != 32 * v->ncols) {
    // number of columns does not match
    return;
  }

  if (A->nrows % (sizeof(word) * 8) == 0) {
    if (CPU_SUPPORTS_NEON) {
      if (A->ncols == 128 && v->ncols == 128) {
        mzd_addmul_vl_neon_128(c, v, A);
        return;
      }
      if ((A->ncols & 0x7f) == 0) {
        mzd_addmul_vl_neon(c, v, A);
        return;
      }
    }
  }
  mzd_addmul_vl_uint64(c, v, A);
  return;
}

void mzd_addmul_vl_uint64(mzd_local_t* c, mzd_local_t const* v, mzd_local_t const* A) {
  const unsigned int len   = A->width;
  word* cptr               = ASSUME_ALIGNED(FIRST_ROW(c), 32);
  word const* vptr         = ASSUME_ALIGNED(CONST_FIRST_ROW(v), 32);
  const unsigned int width = v->width;

  for (unsigned int w = 0; w < width; ++w, ++vptr) {
    word idx         = *vptr;
    unsigned int add = 0;

    while (idx) {
      const word comb = idx & 0xff;

      word const* Aptr = CONST_ROW(A, w * sizeof(word) * 8 * 32 + add + comb);
      for (unsigned int i = 0; i < len; ++i) {
        cptr[i] ^= Aptr[i];
      }

      idx >>= 8;
      add += 256;
    }
  }
}
