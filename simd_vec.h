#ifndef _SIMD_VEC_H_
#define _SIMD_VEC_H_

typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;

#define DEC_VEC(t, l) typedef t t##l __attribute__((ext_vector_type(l), aligned(1)))

#endif
