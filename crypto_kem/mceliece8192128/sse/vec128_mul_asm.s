
# qhasm: int64 input_0

# qhasm: int64 input_1

# qhasm: int64 input_2

# qhasm: int64 input_3

# qhasm: int64 input_4

# qhasm: int64 input_5

# qhasm: stack64 input_6

# qhasm: stack64 input_7

# qhasm: int64 caller_r11

# qhasm: int64 caller_r12

# qhasm: int64 caller_r13

# qhasm: int64 caller_r14

# qhasm: int64 caller_r15

# qhasm: int64 caller_rbx

# qhasm: int64 caller_rbp

# qhasm: reg128 a0

# qhasm: reg128 a1

# qhasm: reg128 a2

# qhasm: reg128 a3

# qhasm: reg128 a4

# qhasm: reg128 a5

# qhasm: reg128 a6

# qhasm: reg128 a7

# qhasm: reg128 a8

# qhasm: reg128 a9

# qhasm: reg128 a10

# qhasm: reg128 a11

# qhasm: reg128 a12

# qhasm: reg128 b0

# qhasm: reg128 b1

# qhasm: reg128 r0

# qhasm: reg128 r1

# qhasm: reg128 r2

# qhasm: reg128 r3

# qhasm: reg128 r4

# qhasm: reg128 r5

# qhasm: reg128 r6

# qhasm: reg128 r7

# qhasm: reg128 r8

# qhasm: reg128 r9

# qhasm: reg128 r10

# qhasm: reg128 r11

# qhasm: reg128 r12

# qhasm: reg128 r13

# qhasm: reg128 r14

# qhasm: reg128 r15

# qhasm: reg128 r16

# qhasm: reg128 r17

# qhasm: reg128 r18

# qhasm: reg128 r19

# qhasm: reg128 r20

# qhasm: reg128 r21

# qhasm: reg128 r22

# qhasm: reg128 r23

# qhasm: reg128 r24

# qhasm: reg128 r

# qhasm: enter vec128_mul_asm
.p2align 5
.global _vec128_mul_asm
.global vec128_mul_asm
_vec128_mul_asm:
vec128_mul_asm:
mov %rsp,%r11
and $31,%r11
add $0,%r11
sub %r11,%rsp

# qhasm: b0 = mem128[ input_2 + 0 ]
# asm 1: movdqu   0(<input_2=int64#3),>b0=reg128#1
# asm 2: movdqu   0(<input_2=%rdx),>b0=%xmm0
movdqu   0(%rdx),%xmm0

# qhasm: a12 = mem128[ input_1 + 192 ]
# asm 1: movdqu   192(<input_1=int64#2),>a12=reg128#2
# asm 2: movdqu   192(<input_1=%rsi),>a12=%xmm1
movdqu   192(%rsi),%xmm1

# qhasm: r12 = a12 & b0
# asm 1: vpand <b0=reg128#1,<a12=reg128#2,>r12=reg128#3
# asm 2: vpand <b0=%xmm0,<a12=%xmm1,>r12=%xmm2
vpand %xmm0,%xmm1,%xmm2

# qhasm: r13 = a12 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a12=reg128#2,>r13=reg128#4
# asm 2: vpand 16(<input_2=%rdx),<a12=%xmm1,>r13=%xmm3
vpand 16(%rdx),%xmm1,%xmm3

# qhasm: r14 = a12 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a12=reg128#2,>r14=reg128#5
# asm 2: vpand 32(<input_2=%rdx),<a12=%xmm1,>r14=%xmm4
vpand 32(%rdx),%xmm1,%xmm4

# qhasm: r15 = a12 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a12=reg128#2,>r15=reg128#6
# asm 2: vpand 48(<input_2=%rdx),<a12=%xmm1,>r15=%xmm5
vpand 48(%rdx),%xmm1,%xmm5

# qhasm: r16 = a12 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a12=reg128#2,>r16=reg128#7
# asm 2: vpand 64(<input_2=%rdx),<a12=%xmm1,>r16=%xmm6
vpand 64(%rdx),%xmm1,%xmm6

# qhasm: r17 = a12 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a12=reg128#2,>r17=reg128#8
# asm 2: vpand 80(<input_2=%rdx),<a12=%xmm1,>r17=%xmm7
vpand 80(%rdx),%xmm1,%xmm7

# qhasm: r18 = a12 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a12=reg128#2,>r18=reg128#9
# asm 2: vpand 96(<input_2=%rdx),<a12=%xmm1,>r18=%xmm8
vpand 96(%rdx),%xmm1,%xmm8

# qhasm: r19 = a12 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a12=reg128#2,>r19=reg128#10
# asm 2: vpand 112(<input_2=%rdx),<a12=%xmm1,>r19=%xmm9
vpand 112(%rdx),%xmm1,%xmm9

# qhasm: r20 = a12 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a12=reg128#2,>r20=reg128#11
# asm 2: vpand 128(<input_2=%rdx),<a12=%xmm1,>r20=%xmm10
vpand 128(%rdx),%xmm1,%xmm10

# qhasm: r21 = a12 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a12=reg128#2,>r21=reg128#12
# asm 2: vpand 144(<input_2=%rdx),<a12=%xmm1,>r21=%xmm11
vpand 144(%rdx),%xmm1,%xmm11

# qhasm: r22 = a12 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a12=reg128#2,>r22=reg128#13
# asm 2: vpand 160(<input_2=%rdx),<a12=%xmm1,>r22=%xmm12
vpand 160(%rdx),%xmm1,%xmm12

# qhasm: r23 = a12 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a12=reg128#2,>r23=reg128#14
# asm 2: vpand 176(<input_2=%rdx),<a12=%xmm1,>r23=%xmm13
vpand 176(%rdx),%xmm1,%xmm13

# qhasm: r24 = a12 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a12=reg128#2,>r24=reg128#2
# asm 2: vpand 192(<input_2=%rdx),<a12=%xmm1,>r24=%xmm1
vpand 192(%rdx),%xmm1,%xmm1

# qhasm: r15 ^= r24
# asm 1: pxor <r24=reg128#2,<r15=reg128#6
# asm 2: pxor <r24=%xmm1,<r15=%xmm5
pxor %xmm1,%xmm5

# qhasm: r14 ^= r24
# asm 1: pxor <r24=reg128#2,<r14=reg128#5
# asm 2: pxor <r24=%xmm1,<r14=%xmm4
pxor %xmm1,%xmm4

# qhasm: r12 ^= r24
# asm 1: pxor <r24=reg128#2,<r12=reg128#3
# asm 2: pxor <r24=%xmm1,<r12=%xmm2
pxor %xmm1,%xmm2

# qhasm: r11 = r24
# asm 1: movdqa <r24=reg128#2,>r11=reg128#2
# asm 2: movdqa <r24=%xmm1,>r11=%xmm1
movdqa %xmm1,%xmm1

# qhasm: a11 = mem128[ input_1 + 176 ]
# asm 1: movdqu   176(<input_1=int64#2),>a11=reg128#15
# asm 2: movdqu   176(<input_1=%rsi),>a11=%xmm14
movdqu   176(%rsi),%xmm14

# qhasm: r = a11 & b0
# asm 1: vpand <b0=reg128#1,<a11=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a11=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a11 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a11 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a11 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a11 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#16,<r15=reg128#6
# asm 2: pxor <r=%xmm15,<r15=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a11 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r16 ^= r
# asm 1: pxor <r=reg128#16,<r16=reg128#7
# asm 2: pxor <r=%xmm15,<r16=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a11 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r17 ^= r
# asm 1: pxor <r=reg128#16,<r17=reg128#8
# asm 2: pxor <r=%xmm15,<r17=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a11 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r18 ^= r
# asm 1: pxor <r=reg128#16,<r18=reg128#9
# asm 2: pxor <r=%xmm15,<r18=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a11 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r19 ^= r
# asm 1: pxor <r=reg128#16,<r19=reg128#10
# asm 2: pxor <r=%xmm15,<r19=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a11 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r20 ^= r
# asm 1: pxor <r=reg128#16,<r20=reg128#11
# asm 2: pxor <r=%xmm15,<r20=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a11 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r21 ^= r
# asm 1: pxor <r=reg128#16,<r21=reg128#12
# asm 2: pxor <r=%xmm15,<r21=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a11 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a11=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a11=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r22 ^= r
# asm 1: pxor <r=reg128#16,<r22=reg128#13
# asm 2: pxor <r=%xmm15,<r22=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a11 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a11=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a11=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r23 ^= r
# asm 1: pxor <r=reg128#15,<r23=reg128#14
# asm 2: pxor <r=%xmm14,<r23=%xmm13
pxor %xmm14,%xmm13

# qhasm: r14 ^= r23
# asm 1: pxor <r23=reg128#14,<r14=reg128#5
# asm 2: pxor <r23=%xmm13,<r14=%xmm4
pxor %xmm13,%xmm4

# qhasm: r13 ^= r23
# asm 1: pxor <r23=reg128#14,<r13=reg128#4
# asm 2: pxor <r23=%xmm13,<r13=%xmm3
pxor %xmm13,%xmm3

# qhasm: r11 ^= r23
# asm 1: pxor <r23=reg128#14,<r11=reg128#2
# asm 2: pxor <r23=%xmm13,<r11=%xmm1
pxor %xmm13,%xmm1

# qhasm: r10 = r23
# asm 1: movdqa <r23=reg128#14,>r10=reg128#14
# asm 2: movdqa <r23=%xmm13,>r10=%xmm13
movdqa %xmm13,%xmm13

# qhasm: a10 = mem128[ input_1 + 160 ]
# asm 1: movdqu   160(<input_1=int64#2),>a10=reg128#15
# asm 2: movdqu   160(<input_1=%rsi),>a10=%xmm14
movdqu   160(%rsi),%xmm14

# qhasm: r = a10 & b0
# asm 1: vpand <b0=reg128#1,<a10=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a10=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a10 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a10 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a10 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a10 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a10 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#16,<r15=reg128#6
# asm 2: pxor <r=%xmm15,<r15=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a10 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r16 ^= r
# asm 1: pxor <r=reg128#16,<r16=reg128#7
# asm 2: pxor <r=%xmm15,<r16=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a10 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r17 ^= r
# asm 1: pxor <r=reg128#16,<r17=reg128#8
# asm 2: pxor <r=%xmm15,<r17=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a10 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r18 ^= r
# asm 1: pxor <r=reg128#16,<r18=reg128#9
# asm 2: pxor <r=%xmm15,<r18=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a10 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r19 ^= r
# asm 1: pxor <r=reg128#16,<r19=reg128#10
# asm 2: pxor <r=%xmm15,<r19=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a10 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r20 ^= r
# asm 1: pxor <r=reg128#16,<r20=reg128#11
# asm 2: pxor <r=%xmm15,<r20=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a10 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a10=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a10=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r21 ^= r
# asm 1: pxor <r=reg128#16,<r21=reg128#12
# asm 2: pxor <r=%xmm15,<r21=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a10 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a10=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a10=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r22 ^= r
# asm 1: pxor <r=reg128#15,<r22=reg128#13
# asm 2: pxor <r=%xmm14,<r22=%xmm12
pxor %xmm14,%xmm12

# qhasm: r13 ^= r22
# asm 1: pxor <r22=reg128#13,<r13=reg128#4
# asm 2: pxor <r22=%xmm12,<r13=%xmm3
pxor %xmm12,%xmm3

# qhasm: r12 ^= r22
# asm 1: pxor <r22=reg128#13,<r12=reg128#3
# asm 2: pxor <r22=%xmm12,<r12=%xmm2
pxor %xmm12,%xmm2

# qhasm: r10 ^= r22
# asm 1: pxor <r22=reg128#13,<r10=reg128#14
# asm 2: pxor <r22=%xmm12,<r10=%xmm13
pxor %xmm12,%xmm13

# qhasm: r9 = r22
# asm 1: movdqa <r22=reg128#13,>r9=reg128#13
# asm 2: movdqa <r22=%xmm12,>r9=%xmm12
movdqa %xmm12,%xmm12

# qhasm: a9 = mem128[ input_1 + 144 ]
# asm 1: movdqu   144(<input_1=int64#2),>a9=reg128#15
# asm 2: movdqu   144(<input_1=%rsi),>a9=%xmm14
movdqu   144(%rsi),%xmm14

# qhasm: r = a9 & b0
# asm 1: vpand <b0=reg128#1,<a9=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a9=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a9 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a9 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a9 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a9 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a9 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a9 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#16,<r15=reg128#6
# asm 2: pxor <r=%xmm15,<r15=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a9 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r16 ^= r
# asm 1: pxor <r=reg128#16,<r16=reg128#7
# asm 2: pxor <r=%xmm15,<r16=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a9 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r17 ^= r
# asm 1: pxor <r=reg128#16,<r17=reg128#8
# asm 2: pxor <r=%xmm15,<r17=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a9 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r18 ^= r
# asm 1: pxor <r=reg128#16,<r18=reg128#9
# asm 2: pxor <r=%xmm15,<r18=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a9 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r19 ^= r
# asm 1: pxor <r=reg128#16,<r19=reg128#10
# asm 2: pxor <r=%xmm15,<r19=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a9 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a9=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a9=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r20 ^= r
# asm 1: pxor <r=reg128#16,<r20=reg128#11
# asm 2: pxor <r=%xmm15,<r20=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a9 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a9=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a9=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r21 ^= r
# asm 1: pxor <r=reg128#15,<r21=reg128#12
# asm 2: pxor <r=%xmm14,<r21=%xmm11
pxor %xmm14,%xmm11

# qhasm: r12 ^= r21
# asm 1: pxor <r21=reg128#12,<r12=reg128#3
# asm 2: pxor <r21=%xmm11,<r12=%xmm2
pxor %xmm11,%xmm2

# qhasm: r11 ^= r21
# asm 1: pxor <r21=reg128#12,<r11=reg128#2
# asm 2: pxor <r21=%xmm11,<r11=%xmm1
pxor %xmm11,%xmm1

# qhasm: r9 ^= r21
# asm 1: pxor <r21=reg128#12,<r9=reg128#13
# asm 2: pxor <r21=%xmm11,<r9=%xmm12
pxor %xmm11,%xmm12

# qhasm: r8 = r21
# asm 1: movdqa <r21=reg128#12,>r8=reg128#12
# asm 2: movdqa <r21=%xmm11,>r8=%xmm11
movdqa %xmm11,%xmm11

# qhasm: a8 = mem128[ input_1 + 128 ]
# asm 1: movdqu   128(<input_1=int64#2),>a8=reg128#15
# asm 2: movdqu   128(<input_1=%rsi),>a8=%xmm14
movdqu   128(%rsi),%xmm14

# qhasm: r = a8 & b0
# asm 1: vpand <b0=reg128#1,<a8=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a8=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#16,<r8=reg128#12
# asm 2: pxor <r=%xmm15,<r8=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a8 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a8 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a8 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a8 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a8 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a8 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a8 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#16,<r15=reg128#6
# asm 2: pxor <r=%xmm15,<r15=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a8 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r16 ^= r
# asm 1: pxor <r=reg128#16,<r16=reg128#7
# asm 2: pxor <r=%xmm15,<r16=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a8 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r17 ^= r
# asm 1: pxor <r=reg128#16,<r17=reg128#8
# asm 2: pxor <r=%xmm15,<r17=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a8 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r18 ^= r
# asm 1: pxor <r=reg128#16,<r18=reg128#9
# asm 2: pxor <r=%xmm15,<r18=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a8 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a8=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a8=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r19 ^= r
# asm 1: pxor <r=reg128#16,<r19=reg128#10
# asm 2: pxor <r=%xmm15,<r19=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a8 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a8=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a8=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r20 ^= r
# asm 1: pxor <r=reg128#15,<r20=reg128#11
# asm 2: pxor <r=%xmm14,<r20=%xmm10
pxor %xmm14,%xmm10

# qhasm: r11 ^= r20
# asm 1: pxor <r20=reg128#11,<r11=reg128#2
# asm 2: pxor <r20=%xmm10,<r11=%xmm1
pxor %xmm10,%xmm1

# qhasm: r10 ^= r20
# asm 1: pxor <r20=reg128#11,<r10=reg128#14
# asm 2: pxor <r20=%xmm10,<r10=%xmm13
pxor %xmm10,%xmm13

# qhasm: r8 ^= r20
# asm 1: pxor <r20=reg128#11,<r8=reg128#12
# asm 2: pxor <r20=%xmm10,<r8=%xmm11
pxor %xmm10,%xmm11

# qhasm: r7 = r20
# asm 1: movdqa <r20=reg128#11,>r7=reg128#11
# asm 2: movdqa <r20=%xmm10,>r7=%xmm10
movdqa %xmm10,%xmm10

# qhasm: a7 = mem128[ input_1 + 112 ]
# asm 1: movdqu   112(<input_1=int64#2),>a7=reg128#15
# asm 2: movdqu   112(<input_1=%rsi),>a7=%xmm14
movdqu   112(%rsi),%xmm14

# qhasm: r = a7 & b0
# asm 1: vpand <b0=reg128#1,<a7=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a7=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r7 ^= r
# asm 1: pxor <r=reg128#16,<r7=reg128#11
# asm 2: pxor <r=%xmm15,<r7=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a7 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#16,<r8=reg128#12
# asm 2: pxor <r=%xmm15,<r8=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a7 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a7 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a7 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a7 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a7 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a7 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a7 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#16,<r15=reg128#6
# asm 2: pxor <r=%xmm15,<r15=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a7 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r16 ^= r
# asm 1: pxor <r=reg128#16,<r16=reg128#7
# asm 2: pxor <r=%xmm15,<r16=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a7 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r17 ^= r
# asm 1: pxor <r=reg128#16,<r17=reg128#8
# asm 2: pxor <r=%xmm15,<r17=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a7 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a7=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a7=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r18 ^= r
# asm 1: pxor <r=reg128#16,<r18=reg128#9
# asm 2: pxor <r=%xmm15,<r18=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a7 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a7=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a7=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r19 ^= r
# asm 1: pxor <r=reg128#15,<r19=reg128#10
# asm 2: pxor <r=%xmm14,<r19=%xmm9
pxor %xmm14,%xmm9

# qhasm: r10 ^= r19
# asm 1: pxor <r19=reg128#10,<r10=reg128#14
# asm 2: pxor <r19=%xmm9,<r10=%xmm13
pxor %xmm9,%xmm13

# qhasm: r9 ^= r19
# asm 1: pxor <r19=reg128#10,<r9=reg128#13
# asm 2: pxor <r19=%xmm9,<r9=%xmm12
pxor %xmm9,%xmm12

# qhasm: r7 ^= r19
# asm 1: pxor <r19=reg128#10,<r7=reg128#11
# asm 2: pxor <r19=%xmm9,<r7=%xmm10
pxor %xmm9,%xmm10

# qhasm: r6 = r19
# asm 1: movdqa <r19=reg128#10,>r6=reg128#10
# asm 2: movdqa <r19=%xmm9,>r6=%xmm9
movdqa %xmm9,%xmm9

# qhasm: a6 = mem128[ input_1 + 96 ]
# asm 1: movdqu   96(<input_1=int64#2),>a6=reg128#15
# asm 2: movdqu   96(<input_1=%rsi),>a6=%xmm14
movdqu   96(%rsi),%xmm14

# qhasm: r = a6 & b0
# asm 1: vpand <b0=reg128#1,<a6=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a6=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r6 ^= r
# asm 1: pxor <r=reg128#16,<r6=reg128#10
# asm 2: pxor <r=%xmm15,<r6=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a6 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r7 ^= r
# asm 1: pxor <r=reg128#16,<r7=reg128#11
# asm 2: pxor <r=%xmm15,<r7=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a6 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#16,<r8=reg128#12
# asm 2: pxor <r=%xmm15,<r8=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a6 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a6 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a6 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a6 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a6 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a6 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a6 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#16,<r15=reg128#6
# asm 2: pxor <r=%xmm15,<r15=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a6 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r16 ^= r
# asm 1: pxor <r=reg128#16,<r16=reg128#7
# asm 2: pxor <r=%xmm15,<r16=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a6 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a6=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a6=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r17 ^= r
# asm 1: pxor <r=reg128#16,<r17=reg128#8
# asm 2: pxor <r=%xmm15,<r17=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a6 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a6=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a6=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r18 ^= r
# asm 1: pxor <r=reg128#15,<r18=reg128#9
# asm 2: pxor <r=%xmm14,<r18=%xmm8
pxor %xmm14,%xmm8

# qhasm: r9 ^= r18
# asm 1: pxor <r18=reg128#9,<r9=reg128#13
# asm 2: pxor <r18=%xmm8,<r9=%xmm12
pxor %xmm8,%xmm12

# qhasm: r8 ^= r18
# asm 1: pxor <r18=reg128#9,<r8=reg128#12
# asm 2: pxor <r18=%xmm8,<r8=%xmm11
pxor %xmm8,%xmm11

# qhasm: r6 ^= r18
# asm 1: pxor <r18=reg128#9,<r6=reg128#10
# asm 2: pxor <r18=%xmm8,<r6=%xmm9
pxor %xmm8,%xmm9

# qhasm: r5 = r18
# asm 1: movdqa <r18=reg128#9,>r5=reg128#9
# asm 2: movdqa <r18=%xmm8,>r5=%xmm8
movdqa %xmm8,%xmm8

# qhasm: a5 = mem128[ input_1 + 80 ]
# asm 1: movdqu   80(<input_1=int64#2),>a5=reg128#15
# asm 2: movdqu   80(<input_1=%rsi),>a5=%xmm14
movdqu   80(%rsi),%xmm14

# qhasm: r = a5 & b0
# asm 1: vpand <b0=reg128#1,<a5=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a5=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r5 ^= r
# asm 1: pxor <r=reg128#16,<r5=reg128#9
# asm 2: pxor <r=%xmm15,<r5=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a5 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r6 ^= r
# asm 1: pxor <r=reg128#16,<r6=reg128#10
# asm 2: pxor <r=%xmm15,<r6=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a5 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r7 ^= r
# asm 1: pxor <r=reg128#16,<r7=reg128#11
# asm 2: pxor <r=%xmm15,<r7=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a5 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#16,<r8=reg128#12
# asm 2: pxor <r=%xmm15,<r8=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a5 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a5 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a5 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a5 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a5 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a5 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a5 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#16,<r15=reg128#6
# asm 2: pxor <r=%xmm15,<r15=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a5 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a5=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a5=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r16 ^= r
# asm 1: pxor <r=reg128#16,<r16=reg128#7
# asm 2: pxor <r=%xmm15,<r16=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a5 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a5=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a5=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r17 ^= r
# asm 1: pxor <r=reg128#15,<r17=reg128#8
# asm 2: pxor <r=%xmm14,<r17=%xmm7
pxor %xmm14,%xmm7

# qhasm: r8 ^= r17
# asm 1: pxor <r17=reg128#8,<r8=reg128#12
# asm 2: pxor <r17=%xmm7,<r8=%xmm11
pxor %xmm7,%xmm11

# qhasm: r7 ^= r17
# asm 1: pxor <r17=reg128#8,<r7=reg128#11
# asm 2: pxor <r17=%xmm7,<r7=%xmm10
pxor %xmm7,%xmm10

# qhasm: r5 ^= r17
# asm 1: pxor <r17=reg128#8,<r5=reg128#9
# asm 2: pxor <r17=%xmm7,<r5=%xmm8
pxor %xmm7,%xmm8

# qhasm: r4 = r17
# asm 1: movdqa <r17=reg128#8,>r4=reg128#8
# asm 2: movdqa <r17=%xmm7,>r4=%xmm7
movdqa %xmm7,%xmm7

# qhasm: a4 = mem128[ input_1 + 64 ]
# asm 1: movdqu   64(<input_1=int64#2),>a4=reg128#15
# asm 2: movdqu   64(<input_1=%rsi),>a4=%xmm14
movdqu   64(%rsi),%xmm14

# qhasm: r = a4 & b0
# asm 1: vpand <b0=reg128#1,<a4=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a4=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r4 ^= r
# asm 1: pxor <r=reg128#16,<r4=reg128#8
# asm 2: pxor <r=%xmm15,<r4=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a4 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r5 ^= r
# asm 1: pxor <r=reg128#16,<r5=reg128#9
# asm 2: pxor <r=%xmm15,<r5=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a4 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r6 ^= r
# asm 1: pxor <r=reg128#16,<r6=reg128#10
# asm 2: pxor <r=%xmm15,<r6=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a4 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r7 ^= r
# asm 1: pxor <r=reg128#16,<r7=reg128#11
# asm 2: pxor <r=%xmm15,<r7=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a4 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#16,<r8=reg128#12
# asm 2: pxor <r=%xmm15,<r8=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a4 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a4 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a4 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a4 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a4 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a4 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a4 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a4=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a4=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#16,<r15=reg128#6
# asm 2: pxor <r=%xmm15,<r15=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a4 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a4=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a4=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r16 ^= r
# asm 1: pxor <r=reg128#15,<r16=reg128#7
# asm 2: pxor <r=%xmm14,<r16=%xmm6
pxor %xmm14,%xmm6

# qhasm: r7 ^= r16
# asm 1: pxor <r16=reg128#7,<r7=reg128#11
# asm 2: pxor <r16=%xmm6,<r7=%xmm10
pxor %xmm6,%xmm10

# qhasm: r6 ^= r16
# asm 1: pxor <r16=reg128#7,<r6=reg128#10
# asm 2: pxor <r16=%xmm6,<r6=%xmm9
pxor %xmm6,%xmm9

# qhasm: r4 ^= r16
# asm 1: pxor <r16=reg128#7,<r4=reg128#8
# asm 2: pxor <r16=%xmm6,<r4=%xmm7
pxor %xmm6,%xmm7

# qhasm: r3 = r16
# asm 1: movdqa <r16=reg128#7,>r3=reg128#7
# asm 2: movdqa <r16=%xmm6,>r3=%xmm6
movdqa %xmm6,%xmm6

# qhasm: a3 = mem128[ input_1 + 48 ]
# asm 1: movdqu   48(<input_1=int64#2),>a3=reg128#15
# asm 2: movdqu   48(<input_1=%rsi),>a3=%xmm14
movdqu   48(%rsi),%xmm14

# qhasm: r = a3 & b0
# asm 1: vpand <b0=reg128#1,<a3=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a3=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r3 ^= r
# asm 1: pxor <r=reg128#16,<r3=reg128#7
# asm 2: pxor <r=%xmm15,<r3=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a3 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r4 ^= r
# asm 1: pxor <r=reg128#16,<r4=reg128#8
# asm 2: pxor <r=%xmm15,<r4=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a3 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r5 ^= r
# asm 1: pxor <r=reg128#16,<r5=reg128#9
# asm 2: pxor <r=%xmm15,<r5=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a3 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r6 ^= r
# asm 1: pxor <r=reg128#16,<r6=reg128#10
# asm 2: pxor <r=%xmm15,<r6=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a3 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r7 ^= r
# asm 1: pxor <r=reg128#16,<r7=reg128#11
# asm 2: pxor <r=%xmm15,<r7=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a3 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#16,<r8=reg128#12
# asm 2: pxor <r=%xmm15,<r8=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a3 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a3 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a3 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a3 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a3 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a3 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a3=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a3=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#16,<r14=reg128#5
# asm 2: pxor <r=%xmm15,<r14=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a3 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a3=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a3=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r15 ^= r
# asm 1: pxor <r=reg128#15,<r15=reg128#6
# asm 2: pxor <r=%xmm14,<r15=%xmm5
pxor %xmm14,%xmm5

# qhasm: r6 ^= r15
# asm 1: pxor <r15=reg128#6,<r6=reg128#10
# asm 2: pxor <r15=%xmm5,<r6=%xmm9
pxor %xmm5,%xmm9

# qhasm: r5 ^= r15
# asm 1: pxor <r15=reg128#6,<r5=reg128#9
# asm 2: pxor <r15=%xmm5,<r5=%xmm8
pxor %xmm5,%xmm8

# qhasm: r3 ^= r15
# asm 1: pxor <r15=reg128#6,<r3=reg128#7
# asm 2: pxor <r15=%xmm5,<r3=%xmm6
pxor %xmm5,%xmm6

# qhasm: r2 = r15
# asm 1: movdqa <r15=reg128#6,>r2=reg128#6
# asm 2: movdqa <r15=%xmm5,>r2=%xmm5
movdqa %xmm5,%xmm5

# qhasm: a2 = mem128[ input_1 + 32 ]
# asm 1: movdqu   32(<input_1=int64#2),>a2=reg128#15
# asm 2: movdqu   32(<input_1=%rsi),>a2=%xmm14
movdqu   32(%rsi),%xmm14

# qhasm: r = a2 & b0
# asm 1: vpand <b0=reg128#1,<a2=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a2=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r2 ^= r
# asm 1: pxor <r=reg128#16,<r2=reg128#6
# asm 2: pxor <r=%xmm15,<r2=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a2 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r3 ^= r
# asm 1: pxor <r=reg128#16,<r3=reg128#7
# asm 2: pxor <r=%xmm15,<r3=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a2 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r4 ^= r
# asm 1: pxor <r=reg128#16,<r4=reg128#8
# asm 2: pxor <r=%xmm15,<r4=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a2 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r5 ^= r
# asm 1: pxor <r=reg128#16,<r5=reg128#9
# asm 2: pxor <r=%xmm15,<r5=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a2 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r6 ^= r
# asm 1: pxor <r=reg128#16,<r6=reg128#10
# asm 2: pxor <r=%xmm15,<r6=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a2 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r7 ^= r
# asm 1: pxor <r=reg128#16,<r7=reg128#11
# asm 2: pxor <r=%xmm15,<r7=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a2 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#16,<r8=reg128#12
# asm 2: pxor <r=%xmm15,<r8=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a2 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a2 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a2 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a2 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a2 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a2=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a2=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#16,<r13=reg128#4
# asm 2: pxor <r=%xmm15,<r13=%xmm3
pxor %xmm15,%xmm3

# qhasm: r = a2 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a2=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a2=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r14 ^= r
# asm 1: pxor <r=reg128#15,<r14=reg128#5
# asm 2: pxor <r=%xmm14,<r14=%xmm4
pxor %xmm14,%xmm4

# qhasm: r5 ^= r14
# asm 1: pxor <r14=reg128#5,<r5=reg128#9
# asm 2: pxor <r14=%xmm4,<r5=%xmm8
pxor %xmm4,%xmm8

# qhasm: r4 ^= r14
# asm 1: pxor <r14=reg128#5,<r4=reg128#8
# asm 2: pxor <r14=%xmm4,<r4=%xmm7
pxor %xmm4,%xmm7

# qhasm: r2 ^= r14
# asm 1: pxor <r14=reg128#5,<r2=reg128#6
# asm 2: pxor <r14=%xmm4,<r2=%xmm5
pxor %xmm4,%xmm5

# qhasm: r1 = r14
# asm 1: movdqa <r14=reg128#5,>r1=reg128#5
# asm 2: movdqa <r14=%xmm4,>r1=%xmm4
movdqa %xmm4,%xmm4

# qhasm: a1 = mem128[ input_1 + 16 ]
# asm 1: movdqu   16(<input_1=int64#2),>a1=reg128#15
# asm 2: movdqu   16(<input_1=%rsi),>a1=%xmm14
movdqu   16(%rsi),%xmm14

# qhasm: r = a1 & b0
# asm 1: vpand <b0=reg128#1,<a1=reg128#15,>r=reg128#16
# asm 2: vpand <b0=%xmm0,<a1=%xmm14,>r=%xmm15
vpand %xmm0,%xmm14,%xmm15

# qhasm: r1 ^= r
# asm 1: pxor <r=reg128#16,<r1=reg128#5
# asm 2: pxor <r=%xmm15,<r1=%xmm4
pxor %xmm15,%xmm4

# qhasm: r = a1 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 16(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 16(%rdx),%xmm14,%xmm15

# qhasm: r2 ^= r
# asm 1: pxor <r=reg128#16,<r2=reg128#6
# asm 2: pxor <r=%xmm15,<r2=%xmm5
pxor %xmm15,%xmm5

# qhasm: r = a1 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 32(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 32(%rdx),%xmm14,%xmm15

# qhasm: r3 ^= r
# asm 1: pxor <r=reg128#16,<r3=reg128#7
# asm 2: pxor <r=%xmm15,<r3=%xmm6
pxor %xmm15,%xmm6

# qhasm: r = a1 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 48(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 48(%rdx),%xmm14,%xmm15

# qhasm: r4 ^= r
# asm 1: pxor <r=reg128#16,<r4=reg128#8
# asm 2: pxor <r=%xmm15,<r4=%xmm7
pxor %xmm15,%xmm7

# qhasm: r = a1 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 64(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 64(%rdx),%xmm14,%xmm15

# qhasm: r5 ^= r
# asm 1: pxor <r=reg128#16,<r5=reg128#9
# asm 2: pxor <r=%xmm15,<r5=%xmm8
pxor %xmm15,%xmm8

# qhasm: r = a1 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 80(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 80(%rdx),%xmm14,%xmm15

# qhasm: r6 ^= r
# asm 1: pxor <r=reg128#16,<r6=reg128#10
# asm 2: pxor <r=%xmm15,<r6=%xmm9
pxor %xmm15,%xmm9

# qhasm: r = a1 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 96(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 96(%rdx),%xmm14,%xmm15

# qhasm: r7 ^= r
# asm 1: pxor <r=reg128#16,<r7=reg128#11
# asm 2: pxor <r=%xmm15,<r7=%xmm10
pxor %xmm15,%xmm10

# qhasm: r = a1 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 112(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 112(%rdx),%xmm14,%xmm15

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#16,<r8=reg128#12
# asm 2: pxor <r=%xmm15,<r8=%xmm11
pxor %xmm15,%xmm11

# qhasm: r = a1 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 128(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 128(%rdx),%xmm14,%xmm15

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#16,<r9=reg128#13
# asm 2: pxor <r=%xmm15,<r9=%xmm12
pxor %xmm15,%xmm12

# qhasm: r = a1 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 144(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 144(%rdx),%xmm14,%xmm15

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#16,<r10=reg128#14
# asm 2: pxor <r=%xmm15,<r10=%xmm13
pxor %xmm15,%xmm13

# qhasm: r = a1 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 160(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 160(%rdx),%xmm14,%xmm15

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#16,<r11=reg128#2
# asm 2: pxor <r=%xmm15,<r11=%xmm1
pxor %xmm15,%xmm1

# qhasm: r = a1 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a1=reg128#15,>r=reg128#16
# asm 2: vpand 176(<input_2=%rdx),<a1=%xmm14,>r=%xmm15
vpand 176(%rdx),%xmm14,%xmm15

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#16,<r12=reg128#3
# asm 2: pxor <r=%xmm15,<r12=%xmm2
pxor %xmm15,%xmm2

# qhasm: r = a1 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a1=reg128#15,>r=reg128#15
# asm 2: vpand 192(<input_2=%rdx),<a1=%xmm14,>r=%xmm14
vpand 192(%rdx),%xmm14,%xmm14

# qhasm: r13 ^= r
# asm 1: pxor <r=reg128#15,<r13=reg128#4
# asm 2: pxor <r=%xmm14,<r13=%xmm3
pxor %xmm14,%xmm3

# qhasm: r4 ^= r13
# asm 1: pxor <r13=reg128#4,<r4=reg128#8
# asm 2: pxor <r13=%xmm3,<r4=%xmm7
pxor %xmm3,%xmm7

# qhasm: r3 ^= r13
# asm 1: pxor <r13=reg128#4,<r3=reg128#7
# asm 2: pxor <r13=%xmm3,<r3=%xmm6
pxor %xmm3,%xmm6

# qhasm: r1 ^= r13
# asm 1: pxor <r13=reg128#4,<r1=reg128#5
# asm 2: pxor <r13=%xmm3,<r1=%xmm4
pxor %xmm3,%xmm4

# qhasm: r0 = r13
# asm 1: movdqa <r13=reg128#4,>r0=reg128#4
# asm 2: movdqa <r13=%xmm3,>r0=%xmm3
movdqa %xmm3,%xmm3

# qhasm: a0 = mem128[ input_1 + 0 ]
# asm 1: movdqu   0(<input_1=int64#2),>a0=reg128#15
# asm 2: movdqu   0(<input_1=%rsi),>a0=%xmm14
movdqu   0(%rsi),%xmm14

# qhasm: r = a0 & b0
# asm 1: vpand <b0=reg128#1,<a0=reg128#15,>r=reg128#1
# asm 2: vpand <b0=%xmm0,<a0=%xmm14,>r=%xmm0
vpand %xmm0,%xmm14,%xmm0

# qhasm: r0 ^= r
# asm 1: pxor <r=reg128#1,<r0=reg128#4
# asm 2: pxor <r=%xmm0,<r0=%xmm3
pxor %xmm0,%xmm3

# qhasm: r = a0 & mem128[input_2 + 16]
# asm 1: vpand 16(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 16(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 16(%rdx),%xmm14,%xmm0

# qhasm: r1 ^= r
# asm 1: pxor <r=reg128#1,<r1=reg128#5
# asm 2: pxor <r=%xmm0,<r1=%xmm4
pxor %xmm0,%xmm4

# qhasm: r = a0 & mem128[input_2 + 32]
# asm 1: vpand 32(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 32(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 32(%rdx),%xmm14,%xmm0

# qhasm: r2 ^= r
# asm 1: pxor <r=reg128#1,<r2=reg128#6
# asm 2: pxor <r=%xmm0,<r2=%xmm5
pxor %xmm0,%xmm5

# qhasm: r = a0 & mem128[input_2 + 48]
# asm 1: vpand 48(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 48(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 48(%rdx),%xmm14,%xmm0

# qhasm: r3 ^= r
# asm 1: pxor <r=reg128#1,<r3=reg128#7
# asm 2: pxor <r=%xmm0,<r3=%xmm6
pxor %xmm0,%xmm6

# qhasm: r = a0 & mem128[input_2 + 64]
# asm 1: vpand 64(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 64(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 64(%rdx),%xmm14,%xmm0

# qhasm: r4 ^= r
# asm 1: pxor <r=reg128#1,<r4=reg128#8
# asm 2: pxor <r=%xmm0,<r4=%xmm7
pxor %xmm0,%xmm7

# qhasm: r = a0 & mem128[input_2 + 80]
# asm 1: vpand 80(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 80(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 80(%rdx),%xmm14,%xmm0

# qhasm: r5 ^= r
# asm 1: pxor <r=reg128#1,<r5=reg128#9
# asm 2: pxor <r=%xmm0,<r5=%xmm8
pxor %xmm0,%xmm8

# qhasm: r = a0 & mem128[input_2 + 96]
# asm 1: vpand 96(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 96(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 96(%rdx),%xmm14,%xmm0

# qhasm: r6 ^= r
# asm 1: pxor <r=reg128#1,<r6=reg128#10
# asm 2: pxor <r=%xmm0,<r6=%xmm9
pxor %xmm0,%xmm9

# qhasm: r = a0 & mem128[input_2 + 112]
# asm 1: vpand 112(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 112(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 112(%rdx),%xmm14,%xmm0

# qhasm: r7 ^= r
# asm 1: pxor <r=reg128#1,<r7=reg128#11
# asm 2: pxor <r=%xmm0,<r7=%xmm10
pxor %xmm0,%xmm10

# qhasm: r = a0 & mem128[input_2 + 128]
# asm 1: vpand 128(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 128(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 128(%rdx),%xmm14,%xmm0

# qhasm: r8 ^= r
# asm 1: pxor <r=reg128#1,<r8=reg128#12
# asm 2: pxor <r=%xmm0,<r8=%xmm11
pxor %xmm0,%xmm11

# qhasm: r = a0 & mem128[input_2 + 144]
# asm 1: vpand 144(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 144(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 144(%rdx),%xmm14,%xmm0

# qhasm: r9 ^= r
# asm 1: pxor <r=reg128#1,<r9=reg128#13
# asm 2: pxor <r=%xmm0,<r9=%xmm12
pxor %xmm0,%xmm12

# qhasm: r = a0 & mem128[input_2 + 160]
# asm 1: vpand 160(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 160(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 160(%rdx),%xmm14,%xmm0

# qhasm: r10 ^= r
# asm 1: pxor <r=reg128#1,<r10=reg128#14
# asm 2: pxor <r=%xmm0,<r10=%xmm13
pxor %xmm0,%xmm13

# qhasm: r = a0 & mem128[input_2 + 176]
# asm 1: vpand 176(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 176(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 176(%rdx),%xmm14,%xmm0

# qhasm: r11 ^= r
# asm 1: pxor <r=reg128#1,<r11=reg128#2
# asm 2: pxor <r=%xmm0,<r11=%xmm1
pxor %xmm0,%xmm1

# qhasm: r = a0 & mem128[input_2 + 192]
# asm 1: vpand 192(<input_2=int64#3),<a0=reg128#15,>r=reg128#1
# asm 2: vpand 192(<input_2=%rdx),<a0=%xmm14,>r=%xmm0
vpand 192(%rdx),%xmm14,%xmm0

# qhasm: r12 ^= r
# asm 1: pxor <r=reg128#1,<r12=reg128#3
# asm 2: pxor <r=%xmm0,<r12=%xmm2
pxor %xmm0,%xmm2

# qhasm: mem128[ input_0 + 192 ] = r12
# asm 1: movdqu   <r12=reg128#3,192(<input_0=int64#1)
# asm 2: movdqu   <r12=%xmm2,192(<input_0=%rdi)
movdqu   %xmm2,192(%rdi)

# qhasm: mem128[ input_0 + 176 ] = r11
# asm 1: movdqu   <r11=reg128#2,176(<input_0=int64#1)
# asm 2: movdqu   <r11=%xmm1,176(<input_0=%rdi)
movdqu   %xmm1,176(%rdi)

# qhasm: mem128[ input_0 + 160 ] = r10
# asm 1: movdqu   <r10=reg128#14,160(<input_0=int64#1)
# asm 2: movdqu   <r10=%xmm13,160(<input_0=%rdi)
movdqu   %xmm13,160(%rdi)

# qhasm: mem128[ input_0 + 144 ] = r9
# asm 1: movdqu   <r9=reg128#13,144(<input_0=int64#1)
# asm 2: movdqu   <r9=%xmm12,144(<input_0=%rdi)
movdqu   %xmm12,144(%rdi)

# qhasm: mem128[ input_0 + 128 ] = r8
# asm 1: movdqu   <r8=reg128#12,128(<input_0=int64#1)
# asm 2: movdqu   <r8=%xmm11,128(<input_0=%rdi)
movdqu   %xmm11,128(%rdi)

# qhasm: mem128[ input_0 + 112 ] = r7
# asm 1: movdqu   <r7=reg128#11,112(<input_0=int64#1)
# asm 2: movdqu   <r7=%xmm10,112(<input_0=%rdi)
movdqu   %xmm10,112(%rdi)

# qhasm: mem128[ input_0 + 96 ] = r6
# asm 1: movdqu   <r6=reg128#10,96(<input_0=int64#1)
# asm 2: movdqu   <r6=%xmm9,96(<input_0=%rdi)
movdqu   %xmm9,96(%rdi)

# qhasm: mem128[ input_0 + 80 ] = r5
# asm 1: movdqu   <r5=reg128#9,80(<input_0=int64#1)
# asm 2: movdqu   <r5=%xmm8,80(<input_0=%rdi)
movdqu   %xmm8,80(%rdi)

# qhasm: mem128[ input_0 + 64 ] = r4
# asm 1: movdqu   <r4=reg128#8,64(<input_0=int64#1)
# asm 2: movdqu   <r4=%xmm7,64(<input_0=%rdi)
movdqu   %xmm7,64(%rdi)

# qhasm: mem128[ input_0 + 48 ] = r3
# asm 1: movdqu   <r3=reg128#7,48(<input_0=int64#1)
# asm 2: movdqu   <r3=%xmm6,48(<input_0=%rdi)
movdqu   %xmm6,48(%rdi)

# qhasm: mem128[ input_0 + 32 ] = r2
# asm 1: movdqu   <r2=reg128#6,32(<input_0=int64#1)
# asm 2: movdqu   <r2=%xmm5,32(<input_0=%rdi)
movdqu   %xmm5,32(%rdi)

# qhasm: mem128[ input_0 + 16 ] = r1
# asm 1: movdqu   <r1=reg128#5,16(<input_0=int64#1)
# asm 2: movdqu   <r1=%xmm4,16(<input_0=%rdi)
movdqu   %xmm4,16(%rdi)

# qhasm: mem128[ input_0 + 0 ] = r0
# asm 1: movdqu   <r0=reg128#4,0(<input_0=int64#1)
# asm 2: movdqu   <r0=%xmm3,0(<input_0=%rdi)
movdqu   %xmm3,0(%rdi)

# qhasm: return
add %r11,%rsp
ret
