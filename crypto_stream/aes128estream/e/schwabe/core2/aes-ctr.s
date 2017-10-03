
# qhasm: int64 arg1

# qhasm: int64 arg2

# qhasm: int64 arg3

# qhasm: int64 arg4

# qhasm: int64 arg5

# qhasm: input arg1

# qhasm: input arg2

# qhasm: input arg3

# qhasm: input arg4

# qhasm: input arg5

# qhasm: int64 r11_caller

# qhasm: int64 r12_caller

# qhasm: int64 r13_caller

# qhasm: int64 r14_caller

# qhasm: int64 r15_caller

# qhasm: int64 rbx_caller

# qhasm: int64 rbp_caller

# qhasm: caller r11_caller

# qhasm: caller r12_caller

# qhasm: caller r13_caller

# qhasm: caller r14_caller

# qhasm: caller r15_caller

# qhasm: caller rbx_caller

# qhasm: caller rbp_caller

# qhasm: stack64 r11_stack

# qhasm: stack64 r12_stack

# qhasm: stack64 r13_stack

# qhasm: stack64 r14_stack

# qhasm: stack64 r15_stack

# qhasm: stack64 rbx_stack

# qhasm: stack64 rbp_stack

# qhasm: int64 table

# qhasm: int64 check

# qhasm: int64 c

# qhasm: int64 k

# qhasm: int64 iv

# qhasm: int64 x0

# qhasm: int64 x1

# qhasm: int64 x2

# qhasm: int64 x3

# qhasm: int64 e

# qhasm: int64 q0

# qhasm: int64 q1

# qhasm: int64 q2

# qhasm: int64 q3

# qhasm: int64 tmp

# qhasm: int64 mainloopbytes

# qhasm: int64 in

# qhasm: int64 out

# qhasm: int64 len

# qhasm: int64 tmpinp

# qhasm: stack64 outstack

# qhasm: int64 lentmp

# qhasm: int64 inv

# qhasm: int64 outv

# qhasm: int6464 n0

# qhasm: int6464 n1

# qhasm: int6464 n2

# qhasm: int6464 n3

# qhasm: stack64 pre10

# qhasm: stack64 pre20

# qhasm: stack64 pre21

# qhasm: stack64 pre22

# qhasm: stack64 pre23

# qhasm: int6464 ty0

# qhasm: stack64 r0

# qhasm: stack64 r1

# qhasm: stack64 r2

# qhasm: stack64 r3

# qhasm: stack64 r4

# qhasm: stack64 r5

# qhasm: stack64 r6

# qhasm: stack64 r7

# qhasm: stack64 r8

# qhasm: stack64 r9

# qhasm: stack64 r10

# qhasm: stack64 r11

# qhasm: int3232 r12

# qhasm: int3232 r13

# qhasm: int3232 r14

# qhasm: int3232 r15

# qhasm: int6464 r16

# qhasm: int6464 r20

# qhasm: int6464 r24

# qhasm: int6464 r28

# qhasm: int6464 r32

# qhasm: int6464 r36

# qhasm: int6464 r40

# qhasm: int6464 pr0

# qhasm: int6464 pr1

# qhasm: int6464 pr2

# qhasm: int6464 pr3

# qhasm: int64 y0

# qhasm: int64 y1

# qhasm: int64 y2

# qhasm: int64 y3

# qhasm: int64 z0

# qhasm: int64 z1

# qhasm: int64 z2

# qhasm: int64 z3

# qhasm: int64 p00

# qhasm: int64 p01

# qhasm: int64 p02

# qhasm: int64 p03

# qhasm: int64 p10

# qhasm: int64 p11

# qhasm: int64 p12

# qhasm: int64 p13

# qhasm: int64 p20

# qhasm: int64 p21

# qhasm: int64 p22

# qhasm: int64 p23

# qhasm: int64 p30

# qhasm: int64 p31

# qhasm: int64 p32

# qhasm: int64 p33

# qhasm: int64 b0

# qhasm: int64 b1

# qhasm: int64 b2

# qhasm: int64 b3

# qhasm: stack128 tmpin

# qhasm: enter crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_init
.text
.p2align 5
.globl _crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_init
.globl crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_init
_crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_init:
crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_init:
mov %rsp,%r11
and $31,%r11
add $256,%r11
sub %r11,%rsp

# qhasm: leave
add %r11,%rsp
mov %rdi,%rax
mov %rsi,%rdx
ret

# qhasm: enter crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_ivsetup
.text
.p2align 5
.globl _crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_ivsetup
.globl crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_ivsetup
_crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_ivsetup:
crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_ivsetup:
mov %rsp,%r11
and $31,%r11
add $256,%r11
sub %r11,%rsp

# qhasm: c = arg1
# asm 1: mov  <arg1=int64#1,>c=int64#1
# asm 2: mov  <arg1=%rdi,>c=%rdi
mov  %rdi,%rdi

# qhasm: iv = arg2
# asm 1: mov  <arg2=int64#2,>iv=int64#2
# asm 2: mov  <arg2=%rsi,>iv=%rsi
mov  %rsi,%rsi

# qhasm: x0 = *(uint32 *) (iv + 0)
# asm 1: movl   0(<iv=int64#2),>x0=int64#6d
# asm 2: movl   0(<iv=%rsi),>x0=%r9d
movl   0(%rsi),%r9d

# qhasm: x1 = *(uint32 *) (iv + 4)
# asm 1: movl   4(<iv=int64#2),>x1=int64#7d
# asm 2: movl   4(<iv=%rsi),>x1=%eax
movl   4(%rsi),%eax

# qhasm: x2 = *(uint32 *) (iv + 8)
# asm 1: movl   8(<iv=int64#2),>x2=int64#8d
# asm 2: movl   8(<iv=%rsi),>x2=%r10d
movl   8(%rsi),%r10d

# qhasm: x3 = *(uint32 *) (iv + 12)
# asm 1: movl   12(<iv=int64#2),>x3=int64#2d
# asm 2: movl   12(<iv=%rsi),>x3=%esi
movl   12(%rsi),%esi

# qhasm: *(uint32 *) (c + 56) = x0
# asm 1: movl   <x0=int64#6d,56(<c=int64#1)
# asm 2: movl   <x0=%r9d,56(<c=%rdi)
movl   %r9d,56(%rdi)

# qhasm: *(uint32 *) (c + 60) = x1
# asm 1: movl   <x1=int64#7d,60(<c=int64#1)
# asm 2: movl   <x1=%eax,60(<c=%rdi)
movl   %eax,60(%rdi)

# qhasm: *(uint32 *) (c + 64) = x2
# asm 1: movl   <x2=int64#8d,64(<c=int64#1)
# asm 2: movl   <x2=%r10d,64(<c=%rdi)
movl   %r10d,64(%rdi)

# qhasm: *(uint32 *) (c + 68) = x3
# asm 1: movl   <x3=int64#2d,68(<c=int64#1)
# asm 2: movl   <x3=%esi,68(<c=%rdi)
movl   %esi,68(%rdi)

# qhasm: leave
add %r11,%rsp
mov %rdi,%rax
mov %rsi,%rdx
ret

# qhasm: enter crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_keysetup
.text
.p2align 5
.globl _crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_keysetup
.globl crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_keysetup
_crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_keysetup:
crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_keysetup:
mov %rsp,%r11
and $31,%r11
add $256,%r11
sub %r11,%rsp

# qhasm: r11_stack = r11_caller
# asm 1: movq <r11_caller=int64#9,>r11_stack=stack64#1
# asm 2: movq <r11_caller=%r11,>r11_stack=32(%rsp)
movq %r11,32(%rsp)

# qhasm: r12_stack = r12_caller
# asm 1: movq <r12_caller=int64#10,>r12_stack=stack64#2
# asm 2: movq <r12_caller=%r12,>r12_stack=40(%rsp)
movq %r12,40(%rsp)

# qhasm: r13_stack = r13_caller
# asm 1: movq <r13_caller=int64#11,>r13_stack=stack64#3
# asm 2: movq <r13_caller=%r13,>r13_stack=48(%rsp)
movq %r13,48(%rsp)

# qhasm: r14_stack = r14_caller
# asm 1: movq <r14_caller=int64#12,>r14_stack=stack64#4
# asm 2: movq <r14_caller=%r14,>r14_stack=56(%rsp)
movq %r14,56(%rsp)

# qhasm: r15_stack = r15_caller
# asm 1: movq <r15_caller=int64#13,>r15_stack=stack64#5
# asm 2: movq <r15_caller=%r15,>r15_stack=64(%rsp)
movq %r15,64(%rsp)

# qhasm: rbx_stack = rbx_caller
# asm 1: movq <rbx_caller=int64#14,>rbx_stack=stack64#6
# asm 2: movq <rbx_caller=%rbx,>rbx_stack=72(%rsp)
movq %rbx,72(%rsp)

# qhasm: rbp_stack = rbp_caller
# asm 1: movq <rbp_caller=int64#15,>rbp_stack=stack64#7
# asm 2: movq <rbp_caller=%rbp,>rbp_stack=80(%rsp)
movq %rbp,80(%rsp)

# qhasm: c = arg1
# asm 1: mov  <arg1=int64#1,>c=int64#6
# asm 2: mov  <arg1=%rdi,>c=%r9
mov  %rdi,%r9

# qhasm: k = arg2
# asm 1: mov  <arg2=int64#2,>k=int64#1
# asm 2: mov  <arg2=%rsi,>k=%rdi
mov  %rsi,%rdi

# qhasm: x0 = *(uint32 *) (k + 0)
# asm 1: movl   0(<k=int64#1),>x0=int64#2d
# asm 2: movl   0(<k=%rdi),>x0=%esi
movl   0(%rdi),%esi

# qhasm: x1 = *(uint32 *) (k + 4)
# asm 1: movl   4(<k=int64#1),>x1=int64#7d
# asm 2: movl   4(<k=%rdi),>x1=%eax
movl   4(%rdi),%eax

# qhasm: x2 = *(uint32 *) (k + 8)
# asm 1: movl   8(<k=int64#1),>x2=int64#8d
# asm 2: movl   8(<k=%rdi),>x2=%r10d
movl   8(%rdi),%r10d

# qhasm: x3 = *(uint32 *) (k + 12)
# asm 1: movl   12(<k=int64#1),>x3=int64#14d
# asm 2: movl   12(<k=%rdi),>x3=%ebx
movl   12(%rdi),%ebx

# qhasm: *(uint32 *) (c + 0) = x0
# asm 1: movl   <x0=int64#2d,0(<c=int64#6)
# asm 2: movl   <x0=%esi,0(<c=%r9)
movl   %esi,0(%r9)

# qhasm: *(uint32 *) (c + 4) = x1
# asm 1: movl   <x1=int64#7d,4(<c=int64#6)
# asm 2: movl   <x1=%eax,4(<c=%r9)
movl   %eax,4(%r9)

# qhasm: *(uint32 *) (c + 8) = x2
# asm 1: movl   <x2=int64#8d,8(<c=int64#6)
# asm 2: movl   <x2=%r10d,8(<c=%r9)
movl   %r10d,8(%r9)

# qhasm: *(uint32 *) (c + 12) = x3
# asm 1: movl   <x3=int64#14d,12(<c=int64#6)
# asm 2: movl   <x3=%ebx,12(<c=%r9)
movl   %ebx,12(%r9)

# qhasm: table = &aes_tablex
# asm 1: lea  aes_tablex(%rip),>table=int64#9
# asm 2: lea  aes_tablex(%rip),>table=%r11
lea  aes_tablex(%rip),%r11

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x01
# asm 1: xor  $0x01,<e=int64#10d
# asm 2: xor  $0x01,<e=%r12d
xor  $0x01,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 16) = x0
# asm 1: movl   <x0=int64#2d,16(<c=int64#6)
# asm 2: movl   <x0=%esi,16(<c=%r9)
movl   %esi,16(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x02
# asm 1: xor  $0x02,<e=int64#10d
# asm 2: xor  $0x02,<e=%r12d
xor  $0x02,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 20) = x0
# asm 1: movl   <x0=int64#2d,20(<c=int64#6)
# asm 2: movl   <x0=%esi,20(<c=%r9)
movl   %esi,20(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x04
# asm 1: xor  $0x04,<e=int64#10d
# asm 2: xor  $0x04,<e=%r12d
xor  $0x04,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 24) = x0
# asm 1: movl   <x0=int64#2d,24(<c=int64#6)
# asm 2: movl   <x0=%esi,24(<c=%r9)
movl   %esi,24(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x08
# asm 1: xor  $0x08,<e=int64#10d
# asm 2: xor  $0x08,<e=%r12d
xor  $0x08,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 28) = x0
# asm 1: movl   <x0=int64#2d,28(<c=int64#6)
# asm 2: movl   <x0=%esi,28(<c=%r9)
movl   %esi,28(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x10
# asm 1: xor  $0x10,<e=int64#10d
# asm 2: xor  $0x10,<e=%r12d
xor  $0x10,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 32) = x0
# asm 1: movl   <x0=int64#2d,32(<c=int64#6)
# asm 2: movl   <x0=%esi,32(<c=%r9)
movl   %esi,32(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x20
# asm 1: xor  $0x20,<e=int64#10d
# asm 2: xor  $0x20,<e=%r12d
xor  $0x20,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 36) = x0
# asm 1: movl   <x0=int64#2d,36(<c=int64#6)
# asm 2: movl   <x0=%esi,36(<c=%r9)
movl   %esi,36(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x40
# asm 1: xor  $0x40,<e=int64#10d
# asm 2: xor  $0x40,<e=%r12d
xor  $0x40,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 40) = x0
# asm 1: movl   <x0=int64#2d,40(<c=int64#6)
# asm 2: movl   <x0=%esi,40(<c=%r9)
movl   %esi,40(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x80
# asm 1: xor  $0x80,<e=int64#10d
# asm 2: xor  $0x80,<e=%r12d
xor  $0x80,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 44) = x0
# asm 1: movl   <x0=int64#2d,44(<c=int64#6)
# asm 2: movl   <x0=%esi,44(<c=%r9)
movl   %esi,44(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#10
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%r12
movzbq 1(%r11,%rdi,8),%r12

# qhasm: (uint32) e ^= 0x1b
# asm 1: xor  $0x1b,<e=int64#10d
# asm 2: xor  $0x1b,<e=%r12d
xor  $0x1b,%r12d

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#10
# asm 2: xor  <q3=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#10
# asm 2: xor  <q2=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#10
# asm 2: xor  <q1=%rdi,<e=%r12
xor  %rdi,%r12

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#10,<x0=int64#2
# asm 2: xor  <e=%r12,<x0=%rsi
xor  %r12,%rsi

# qhasm: *(uint32 *) (c + 48) = x0
# asm 1: movl   <x0=int64#2d,48(<c=int64#6)
# asm 2: movl   <x0=%esi,48(<c=%r9)
movl   %esi,48(%r9)

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#2,<x1=int64#7
# asm 2: xor  <x0=%rsi,<x1=%rax
xor  %rsi,%rax

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#7,<x2=int64#8
# asm 2: xor  <x1=%rax,<x2=%r10
xor  %rax,%r10

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#8,<x3=int64#14
# asm 2: xor  <x2=%r10,<x3=%rbx
xor  %r10,%rbx

# qhasm: e = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>e=int64#1d
# asm 2: movzbl  <x3=%bh,>e=%edi
movzbl  %bh,%edi

# qhasm: e = *(uint8 *) (table + 1 + e * 8)
# asm 1: movzbq 1(<table=int64#9,<e=int64#1,8),>e=int64#7
# asm 2: movzbq 1(<table=%r11,<e=%rdi,8),>e=%rax
movzbq 1(%r11,%rdi,8),%rax

# qhasm: (uint32) e ^= 0x36
# asm 1: xor  $0x36,<e=int64#7d
# asm 2: xor  $0x36,<e=%eax
xor  $0x36,%eax

# qhasm: q3 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q3=int64#1d
# asm 2: movzbl  <x3=%bl,>q3=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q3 = *(uint32 *) (table + 2 + q3 * 8)
# asm 1: movl   2(<table=int64#9,<q3=int64#1,8),>q3=int64#1d
# asm 2: movl   2(<table=%r11,<q3=%rdi,8),>q3=%edi
movl   2(%r11,%rdi,8),%edi

# qhasm: (uint32) q3 &= 0xff000000
# asm 1: and  $0xff000000,<q3=int64#1d
# asm 2: and  $0xff000000,<q3=%edi
and  $0xff000000,%edi

# qhasm: e ^= q3
# asm 1: xor  <q3=int64#1,<e=int64#7
# asm 2: xor  <q3=%rdi,<e=%rax
xor  %rdi,%rax

# qhasm: q2 = (x3 >> 8) & 255
# asm 1: movzbl  <x3=int64#14%next8,>q2=int64#1d
# asm 2: movzbl  <x3=%bh,>q2=%edi
movzbl  %bh,%edi

# qhasm: q2 = *(uint32 *) (table + 3 + q2 * 8)
# asm 1: movl   3(<table=int64#9,<q2=int64#1,8),>q2=int64#1d
# asm 2: movl   3(<table=%r11,<q2=%rdi,8),>q2=%edi
movl   3(%r11,%rdi,8),%edi

# qhasm: (uint32) q2 &= 0x00ff0000
# asm 1: and  $0x00ff0000,<q2=int64#1d
# asm 2: and  $0x00ff0000,<q2=%edi
and  $0x00ff0000,%edi

# qhasm: e ^= q2
# asm 1: xor  <q2=int64#1,<e=int64#7
# asm 2: xor  <q2=%rdi,<e=%rax
xor  %rdi,%rax

# qhasm: q1 = x3 & 255
# asm 1: movzbl  <x3=int64#14b,>q1=int64#1d
# asm 2: movzbl  <x3=%bl,>q1=%edi
movzbl  %bl,%edi

# qhasm: (uint32) x3 <<<= 16
# asm 1: rol  $16,<x3=int64#14d
# asm 2: rol  $16,<x3=%ebx
rol  $16,%ebx

# qhasm: q1 = *(uint16 *) (table + q1 * 8)
# asm 1: movzwq (<table=int64#9,<q1=int64#1,8),>q1=int64#1
# asm 2: movzwq (<table=%r11,<q1=%rdi,8),>q1=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm: e ^= q1
# asm 1: xor  <q1=int64#1,<e=int64#7
# asm 2: xor  <q1=%rdi,<e=%rax
xor  %rdi,%rax

# qhasm: x0 ^= e
# asm 1: xor  <e=int64#7,<x0=int64#2
# asm 2: xor  <e=%rax,<x0=%rsi
xor  %rax,%rsi

# qhasm: *(uint32 *) (c + 52) = x0
# asm 1: movl   <x0=int64#2d,52(<c=int64#6)
# asm 2: movl   <x0=%esi,52(<c=%r9)
movl   %esi,52(%r9)

# qhasm: r11_caller = r11_stack
# asm 1: movq <r11_stack=stack64#1,>r11_caller=int64#9
# asm 2: movq <r11_stack=32(%rsp),>r11_caller=%r11
movq 32(%rsp),%r11

# qhasm: r12_caller = r12_stack
# asm 1: movq <r12_stack=stack64#2,>r12_caller=int64#10
# asm 2: movq <r12_stack=40(%rsp),>r12_caller=%r12
movq 40(%rsp),%r12

# qhasm: r13_caller = r13_stack
# asm 1: movq <r13_stack=stack64#3,>r13_caller=int64#11
# asm 2: movq <r13_stack=48(%rsp),>r13_caller=%r13
movq 48(%rsp),%r13

# qhasm: r14_caller = r14_stack
# asm 1: movq <r14_stack=stack64#4,>r14_caller=int64#12
# asm 2: movq <r14_stack=56(%rsp),>r14_caller=%r14
movq 56(%rsp),%r14

# qhasm: r15_caller = r15_stack
# asm 1: movq <r15_stack=stack64#5,>r15_caller=int64#13
# asm 2: movq <r15_stack=64(%rsp),>r15_caller=%r15
movq 64(%rsp),%r15

# qhasm: rbx_caller = rbx_stack
# asm 1: movq <rbx_stack=stack64#6,>rbx_caller=int64#14
# asm 2: movq <rbx_stack=72(%rsp),>rbx_caller=%rbx
movq 72(%rsp),%rbx

# qhasm: rbp_caller = rbp_stack
# asm 1: movq <rbp_stack=stack64#7,>rbp_caller=int64#15
# asm 2: movq <rbp_stack=80(%rsp),>rbp_caller=%rbp
movq 80(%rsp),%rbp

# qhasm: leave
add %r11,%rsp
mov %rdi,%rax
mov %rsi,%rdx
ret

# qhasm: enter crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_process_bytes stackaligned4096 aes_constants
.text
.p2align 5
.globl _crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_process_bytes
.globl crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_process_bytes
_crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_process_bytes:
crypto_stream_aes128estream_e_schwabe_core2_ECRYPT_process_bytes:
mov %rsp,%r11
sub $aes_constants,%r11
and $4095,%r11
add $256,%r11
sub %r11,%rsp

# qhasm: r11_stack = r11_caller
# asm 1: movq <r11_caller=int64#9,>r11_stack=stack64#1
# asm 2: movq <r11_caller=%r11,>r11_stack=32(%rsp)
movq %r11,32(%rsp)

# qhasm: r12_stack = r12_caller
# asm 1: movq <r12_caller=int64#10,>r12_stack=stack64#2
# asm 2: movq <r12_caller=%r12,>r12_stack=40(%rsp)
movq %r12,40(%rsp)

# qhasm: r13_stack = r13_caller
# asm 1: movq <r13_caller=int64#11,>r13_stack=stack64#3
# asm 2: movq <r13_caller=%r13,>r13_stack=48(%rsp)
movq %r13,48(%rsp)

# qhasm: r14_stack = r14_caller
# asm 1: movq <r14_caller=int64#12,>r14_stack=stack64#4
# asm 2: movq <r14_caller=%r14,>r14_stack=56(%rsp)
movq %r14,56(%rsp)

# qhasm: r15_stack = r15_caller
# asm 1: movq <r15_caller=int64#13,>r15_stack=stack64#5
# asm 2: movq <r15_caller=%r15,>r15_stack=64(%rsp)
movq %r15,64(%rsp)

# qhasm: rbx_stack = rbx_caller
# asm 1: movq <rbx_caller=int64#14,>rbx_stack=stack64#6
# asm 2: movq <rbx_caller=%rbx,>rbx_stack=72(%rsp)
movq %rbx,72(%rsp)

# qhasm: rbp_stack = rbp_caller
# asm 1: movq <rbp_caller=int64#15,>rbp_stack=stack64#7
# asm 2: movq <rbp_caller=%rbp,>rbp_stack=80(%rsp)
movq %rbp,80(%rsp)

# qhasm: c = arg2
# asm 1: mov  <arg2=int64#2,>c=int64#6
# asm 2: mov  <arg2=%rsi,>c=%r9
mov  %rsi,%r9

# qhasm: in = arg3
# asm 1: mov  <arg3=int64#3,>in=int64#2
# asm 2: mov  <arg3=%rdx,>in=%rsi
mov  %rdx,%rsi

# qhasm: out = arg4
# asm 1: mov  <arg4=int64#4,>out=int64#8
# asm 2: mov  <arg4=%rcx,>out=%r10
mov  %rcx,%r10

# qhasm: len = arg5
# asm 1: mov  <arg5=int64#5,>len=int64#5
# asm 2: mov  <arg5=%r8,>len=%r8
mov  %r8,%r8

# qhasm:                      unsigned>? len - 0
# asm 1: cmp  $0,<len=int64#5
# asm 2: cmp  $0,<len=%r8
cmp  $0,%r8
# comment:fp stack unchanged by jump

# qhasm: goto nothingtodo if !unsigned>
jbe ._nothingtodo

# qhasm: x0 = *(uint32 *) (c + 0)
# asm 1: movl   0(<c=int64#6),>x0=int64#1d
# asm 2: movl   0(<c=%r9),>x0=%edi
movl   0(%r9),%edi

# qhasm: x1 = *(uint32 *) (c + 4)
# asm 1: movl   4(<c=int64#6),>x1=int64#3d
# asm 2: movl   4(<c=%r9),>x1=%edx
movl   4(%r9),%edx

# qhasm: x2 = *(uint32 *) (c + 8)
# asm 1: movl   8(<c=int64#6),>x2=int64#4d
# asm 2: movl   8(<c=%r9),>x2=%ecx
movl   8(%r9),%ecx

# qhasm: x3 = *(uint32 *) (c + 12)
# asm 1: movl   12(<c=int64#6),>x3=int64#7d
# asm 2: movl   12(<c=%r9),>x3=%eax
movl   12(%r9),%eax

# qhasm: r0 = x0
# asm 1: movq <x0=int64#1,>r0=stack64#8
# asm 2: movq <x0=%rdi,>r0=88(%rsp)
movq %rdi,88(%rsp)

# qhasm: r1 = x1
# asm 1: movq <x1=int64#3,>r1=stack64#9
# asm 2: movq <x1=%rdx,>r1=96(%rsp)
movq %rdx,96(%rsp)

# qhasm: r2 = x2
# asm 1: movq <x2=int64#4,>r2=stack64#10
# asm 2: movq <x2=%rcx,>r2=104(%rsp)
movq %rcx,104(%rsp)

# qhasm: r3 = x3
# asm 1: movq <x3=int64#7,>r3=stack64#11
# asm 2: movq <x3=%rax,>r3=112(%rsp)
movq %rax,112(%rsp)

# qhasm: x0 = *(uint32 *) (c + 16)
# asm 1: movl   16(<c=int64#6),>x0=int64#1d
# asm 2: movl   16(<c=%r9),>x0=%edi
movl   16(%r9),%edi

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#1,<x1=int64#3
# asm 2: xor  <x0=%rdi,<x1=%rdx
xor  %rdi,%rdx

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#3,<x2=int64#4
# asm 2: xor  <x1=%rdx,<x2=%rcx
xor  %rdx,%rcx

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#4,<x3=int64#7
# asm 2: xor  <x2=%rcx,<x3=%rax
xor  %rcx,%rax

# qhasm: r4 = x0
# asm 1: movq <x0=int64#1,>r4=stack64#12
# asm 2: movq <x0=%rdi,>r4=120(%rsp)
movq %rdi,120(%rsp)

# qhasm: r5 = x1
# asm 1: movq <x1=int64#3,>r5=stack64#13
# asm 2: movq <x1=%rdx,>r5=128(%rsp)
movq %rdx,128(%rsp)

# qhasm: r6 = x2
# asm 1: movq <x2=int64#4,>r6=stack64#14
# asm 2: movq <x2=%rcx,>r6=136(%rsp)
movq %rcx,136(%rsp)

# qhasm: r7 = x3
# asm 1: movq <x3=int64#7,>r7=stack64#15
# asm 2: movq <x3=%rax,>r7=144(%rsp)
movq %rax,144(%rsp)

# qhasm: x0 = *(uint32 *) (c + 20)
# asm 1: movl   20(<c=int64#6),>x0=int64#1d
# asm 2: movl   20(<c=%r9),>x0=%edi
movl   20(%r9),%edi

# qhasm: x1 ^= x0
# asm 1: xor  <x0=int64#1,<x1=int64#3
# asm 2: xor  <x0=%rdi,<x1=%rdx
xor  %rdi,%rdx

# qhasm: x2 ^= x1
# asm 1: xor  <x1=int64#3,<x2=int64#4
# asm 2: xor  <x1=%rdx,<x2=%rcx
xor  %rdx,%rcx

# qhasm: x3 ^= x2
# asm 1: xor  <x2=int64#4,<x3=int64#7
# asm 2: xor  <x2=%rcx,<x3=%rax
xor  %rcx,%rax

# qhasm: r8 = x0
# asm 1: movq <x0=int64#1,>r8=stack64#16
# asm 2: movq <x0=%rdi,>r8=152(%rsp)
movq %rdi,152(%rsp)

# qhasm: r9 = x1
# asm 1: movq <x1=int64#3,>r9=stack64#17
# asm 2: movq <x1=%rdx,>r9=160(%rsp)
movq %rdx,160(%rsp)

# qhasm: r10 = x2
# asm 1: movq <x2=int64#4,>r10=stack64#18
# asm 2: movq <x2=%rcx,>r10=168(%rsp)
movq %rcx,168(%rsp)

# qhasm: r11 = x3
# asm 1: movq <x3=int64#7,>r11=stack64#19
# asm 2: movq <x3=%rax,>r11=176(%rsp)
movq %rax,176(%rsp)

# qhasm: x0 = *(uint32 *) (c + 24)
# asm 1: movl   24(<c=int64#6),>x0=int64#1d
# asm 2: movl   24(<c=%r9),>x0=%edi
movl   24(%r9),%edi

# qhasm: r12 = x0
# asm 1: movd <x0=int64#1,>r12=int3232#1
# asm 2: movd <x0=%rdi,>r12=%mm0
movd %rdi,%mm0

# qhasm: r13 = x1
# asm 1: movd <x1=int64#3,>r13=int3232#2
# asm 2: movd <x1=%rdx,>r13=%mm1
movd %rdx,%mm1

# qhasm: r13 ^= r12
# asm 1: pxor  <r12=int3232#1,<r13=int3232#2
# asm 2: pxor  <r12=%mm0,<r13=%mm1
pxor  %mm0,%mm1

# qhasm: r14 = x2
# asm 1: movd <x2=int64#4,>r14=int3232#3
# asm 2: movd <x2=%rcx,>r14=%mm2
movd %rcx,%mm2

# qhasm: r14 ^= r13
# asm 1: pxor  <r13=int3232#2,<r14=int3232#3
# asm 2: pxor  <r13=%mm1,<r14=%mm2
pxor  %mm1,%mm2

# qhasm: r15 = x3
# asm 1: movd <x3=int64#7,>r15=int3232#4
# asm 2: movd <x3=%rax,>r15=%mm3
movd %rax,%mm3

# qhasm: r15 ^= r14
# asm 1: pxor  <r14=int3232#3,<r15=int3232#4
# asm 2: pxor  <r14=%mm2,<r15=%mm3
pxor  %mm2,%mm3

# qhasm: x0 = *(uint32 *) (c + 28)
# asm 1: movl   28(<c=int64#6),>x0=int64#1d
# asm 2: movl   28(<c=%r9),>x0=%edi
movl   28(%r9),%edi

# qhasm: r16 = x0
# asm 1: movd   <x0=int64#1,>r16=int6464#1
# asm 2: movd   <x0=%rdi,>r16=%xmm0
movd   %rdi,%xmm0

# qhasm: x0 = *(uint32 *) (c + 32)
# asm 1: movl   32(<c=int64#6),>x0=int64#1d
# asm 2: movl   32(<c=%r9),>x0=%edi
movl   32(%r9),%edi

# qhasm: r20 = x0
# asm 1: movd   <x0=int64#1,>r20=int6464#2
# asm 2: movd   <x0=%rdi,>r20=%xmm1
movd   %rdi,%xmm1

# qhasm: x0 = *(uint32 *) (c + 36)
# asm 1: movl   36(<c=int64#6),>x0=int64#1d
# asm 2: movl   36(<c=%r9),>x0=%edi
movl   36(%r9),%edi

# qhasm: r24 = x0
# asm 1: movd   <x0=int64#1,>r24=int6464#3
# asm 2: movd   <x0=%rdi,>r24=%xmm2
movd   %rdi,%xmm2

# qhasm: x0 = *(uint32 *) (c + 40)
# asm 1: movl   40(<c=int64#6),>x0=int64#1d
# asm 2: movl   40(<c=%r9),>x0=%edi
movl   40(%r9),%edi

# qhasm: r28 = x0
# asm 1: movd   <x0=int64#1,>r28=int6464#4
# asm 2: movd   <x0=%rdi,>r28=%xmm3
movd   %rdi,%xmm3

# qhasm: x0 = *(uint32 *) (c + 44)
# asm 1: movl   44(<c=int64#6),>x0=int64#1d
# asm 2: movl   44(<c=%r9),>x0=%edi
movl   44(%r9),%edi

# qhasm: r32 = x0
# asm 1: movd   <x0=int64#1,>r32=int6464#5
# asm 2: movd   <x0=%rdi,>r32=%xmm4
movd   %rdi,%xmm4

# qhasm: x0 = *(uint32 *) (c + 48)
# asm 1: movl   48(<c=int64#6),>x0=int64#1d
# asm 2: movl   48(<c=%r9),>x0=%edi
movl   48(%r9),%edi

# qhasm: r36 = x0
# asm 1: movd   <x0=int64#1,>r36=int6464#6
# asm 2: movd   <x0=%rdi,>r36=%xmm5
movd   %rdi,%xmm5

# qhasm: x0 = *(uint32 *) (c + 52)
# asm 1: movl   52(<c=int64#6),>x0=int64#1d
# asm 2: movl   52(<c=%r9),>x0=%edi
movl   52(%r9),%edi

# qhasm: r40 = x0
# asm 1: movd   <x0=int64#1,>r40=int6464#7
# asm 2: movd   <x0=%rdi,>r40=%xmm6
movd   %rdi,%xmm6

# qhasm: y0 = *(uint32 *) (c + 56)
# asm 1: movl   56(<c=int64#6),>y0=int64#14d
# asm 2: movl   56(<c=%r9),>y0=%ebx
movl   56(%r9),%ebx

# qhasm: y1 = *(uint32 *) (c + 60)
# asm 1: movl   60(<c=int64#6),>y1=int64#1d
# asm 2: movl   60(<c=%r9),>y1=%edi
movl   60(%r9),%edi

# qhasm: y2 = *(uint32 *) (c + 64)
# asm 1: movl   64(<c=int64#6),>y2=int64#3d
# asm 2: movl   64(<c=%r9),>y2=%edx
movl   64(%r9),%edx

# qhasm: y3 = *(uint32 *) (c + 68)
# asm 1: movl   68(<c=int64#6),>y3=int64#4d
# asm 2: movl   68(<c=%r9),>y3=%ecx
movl   68(%r9),%ecx

# qhasm: table = &aes_tablex
# asm 1: lea  aes_tablex(%rip),>table=int64#9
# asm 2: lea  aes_tablex(%rip),>table=%r11
lea  aes_tablex(%rip),%r11

# qhasm: n0 = y0
# asm 1: movd   <y0=int64#14,>n0=int6464#8
# asm 2: movd   <y0=%rbx,>n0=%xmm7
movd   %rbx,%xmm7

# qhasm: n1 = y1
# asm 1: movd   <y1=int64#1,>n1=int6464#9
# asm 2: movd   <y1=%rdi,>n1=%xmm8
movd   %rdi,%xmm8

# qhasm: n2 = y2
# asm 1: movd   <y2=int64#3,>n2=int6464#10
# asm 2: movd   <y2=%rdx,>n2=%xmm9
movd   %rdx,%xmm9

# qhasm: n3 = y3
# asm 1: movd   <y3=int64#4,>n3=int6464#11
# asm 2: movd   <y3=%rcx,>n3=%xmm10
movd   %rcx,%xmm10

# qhasm: unsigned<? len - 16
# asm 1: cmp  $16,<len=int64#5
# asm 2: cmp  $16,<len=%r8
cmp  $16,%r8
# comment:fp stack unchanged by jump

# qhasm: goto outerloop if !unsigned<
jae ._outerloop

# qhasm: tmpinp = &tmpin
# asm 1: leaq <tmpin=stack128#1,>tmpinp=int64#1
# asm 2: leaq <tmpin=0(%rsp),>tmpinp=%rdi
leaq 0(%rsp),%rdi

# qhasm: lentmp = len
# asm 1: mov  <len=int64#5,>lentmp=int64#4
# asm 2: mov  <len=%r8,>lentmp=%rcx
mov  %r8,%rcx

# qhasm: outstack = out
# asm 1: movq <out=int64#8,>outstack=stack64#20
# asm 2: movq <out=%r10,>outstack=184(%rsp)
movq %r10,184(%rsp)

# qhasm: while (lentmp) { *tmpinp++ = *in++; --lentmp }
rep movsb

# qhasm: in = &tmpin
# asm 1: leaq <tmpin=stack128#1,>in=int64#2
# asm 2: leaq <tmpin=0(%rsp),>in=%rsi
leaq 0(%rsp),%rsi

# qhasm: out = &tmpin
# asm 1: leaq <tmpin=stack128#1,>out=int64#8
# asm 2: leaq <tmpin=0(%rsp),>out=%r10
leaq 0(%rsp),%r10

# qhasm: mainloopbytes = 16
# asm 1: mov  $16,>mainloopbytes=int64#10
# asm 2: mov  $16,>mainloopbytes=%r12
mov  $16,%r12

# qhasm: len -= 16
# asm 1: sub  $16,<len=int64#5
# asm 2: sub  $16,<len=%r8
sub  $16,%r8
# comment:fp stack unchanged by jump

# qhasm: goto precompute
jmp ._precompute

# qhasm: outerloop:
._outerloop:

# qhasm:   tmp = y0 & 255
# asm 1: movzbl  <y0=int64#14b,>tmp=int64#1d
# asm 2: movzbl  <y0=%bl,>tmp=%edi
movzbl  %bl,%edi

# qhasm:   tmp <<= 4
# asm 1: shl  $4,<tmp=int64#1
# asm 2: shl  $4,<tmp=%rdi
shl  $4,%rdi

# qhasm:   mainloopbytes = 4096
# asm 1: mov  $4096,>mainloopbytes=int64#10
# asm 2: mov  $4096,>mainloopbytes=%r12
mov  $4096,%r12

# qhasm:   mainloopbytes -= tmp
# asm 1: sub  <tmp=int64#1,<mainloopbytes=int64#10
# asm 2: sub  <tmp=%rdi,<mainloopbytes=%r12
sub  %rdi,%r12

# qhasm:   unsigned<? len - mainloopbytes
# asm 1: cmp  <mainloopbytes=int64#10,<len=int64#5
# asm 2: cmp  <mainloopbytes=%r12,<len=%r8
cmp  %r12,%r8
# comment:fp stack unchanged by jump

# qhasm:   goto happy if !unsigned<
jae ._happy

# qhasm:     mainloopbytes = len
# asm 1: mov  <len=int64#5,>mainloopbytes=int64#10
# asm 2: mov  <len=%r8,>mainloopbytes=%r12
mov  %r8,%r12

# qhasm:     (uint64) mainloopbytes >>= 4
# asm 1: shr  $4,<mainloopbytes=int64#10
# asm 2: shr  $4,<mainloopbytes=%r12
shr  $4,%r12

# qhasm:     mainloopbytes <<= 4
# asm 1: shl  $4,<mainloopbytes=int64#10
# asm 2: shl  $4,<mainloopbytes=%r12
shl  $4,%r12
# comment:fp stack unchanged by fallthrough

# qhasm:   happy:
._happy:

# qhasm:   len -= mainloopbytes
# asm 1: sub  <mainloopbytes=int64#10,<len=int64#5
# asm 2: sub  <mainloopbytes=%r12,<len=%r8
sub  %r12,%r8

# qhasm:   precompute:
._precompute:

# qhasm:   y1 = n1
# asm 1: movd   <n1=int6464#9,>y1=int64#3
# asm 2: movd   <n1=%xmm8,>y1=%rdx
movd   %xmm8,%rdx

# qhasm:   y2 = n2
# asm 1: movd   <n2=int6464#10,>y2=int64#4
# asm 2: movd   <n2=%xmm9,>y2=%rcx
movd   %xmm9,%rcx

# qhasm:   y3 = n3
# asm 1: movd   <n3=int6464#11,>y3=int64#7
# asm 2: movd   <n3=%xmm10,>y3=%rax
movd   %xmm10,%rax

# qhasm:   y0 ^= r0
# asm 1: xorq <r0=stack64#8,<y0=int64#14
# asm 2: xorq <r0=88(%rsp),<y0=%rbx
xorq 88(%rsp),%rbx

# qhasm:   y1 ^= r1
# asm 1: xorq <r1=stack64#9,<y1=int64#3
# asm 2: xorq <r1=96(%rsp),<y1=%rdx
xorq 96(%rsp),%rdx

# qhasm:   y2 ^= r2
# asm 1: xorq <r2=stack64#10,<y2=int64#4
# asm 2: xorq <r2=104(%rsp),<y2=%rcx
xorq 104(%rsp),%rcx

# qhasm:   y3 ^= r3
# asm 1: xorq <r3=stack64#11,<y3=int64#7
# asm 2: xorq <r3=112(%rsp),<y3=%rax
xorq 112(%rsp),%rax

# qhasm:   p03 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#14%next8,>p03=int64#1d
# asm 2: movzbl  <y0=%bh,>p03=%edi
movzbl  %bh,%edi

# qhasm:   (uint32) y0 >>>= 16
# asm 1: ror  $16,<y0=int64#14d
# asm 2: ror  $16,<y0=%ebx
ror  $16,%ebx

# qhasm:   z3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>z3=int64#11d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>z3=%r13d
movl   2(%r11,%rdi,8),%r13d

# qhasm:   p02 = y0 & 255
# asm 1: movzbl  <y0=int64#14b,>p02=int64#1d
# asm 2: movzbl  <y0=%bl,>p02=%edi
movzbl  %bl,%edi

# qhasm:   z2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>z2=int64#12d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>z2=%r14d
movl   1(%r11,%rdi,8),%r14d

# qhasm:   p01 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#14%next8,>p01=int64#1d
# asm 2: movzbl  <y0=%bh,>p01=%edi
movzbl  %bh,%edi

# qhasm:   z1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>z1=int64#13d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>z1=%r15d
movl   4(%r11,%rdi,8),%r15d

# qhasm:   (uint32) y0 <<<= 16
# asm 1: rol  $16,<y0=int64#14d
# asm 2: rol  $16,<y0=%ebx
rol  $16,%ebx

# qhasm:   p10 = y1 & 255
# asm 1: movzbl  <y1=int64#3b,>p10=int64#1d
# asm 2: movzbl  <y1=%dl,>p10=%edi
movzbl  %dl,%edi

# qhasm:   (uint32) z1 ^= *(uint32 *) (table + 3 + p10 * 8)
# asm 1: xorl 3(<table=int64#9,<p10=int64#1,8),<z1=int64#13d
# asm 2: xorl 3(<table=%r11,<p10=%rdi,8),<z1=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:   p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#3%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%dh,>p11=%edi
movzbl  %dh,%edi

# qhasm:   z0 = *(uint32 *) (table + 2 + p11 * 8)
# asm 1: movl   2(<table=int64#9,<p11=int64#1,8),>z0=int64#15d
# asm 2: movl   2(<table=%r11,<p11=%rdi,8),>z0=%ebp
movl   2(%r11,%rdi,8),%ebp

# qhasm:   (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#3d
# asm 2: shr  $16,<y1=%edx
shr  $16,%edx

# qhasm:   p12 = y1 & 255
# asm 1: movzbl  <y1=int64#3b,>p12=int64#1d
# asm 2: movzbl  <y1=%dl,>p12=%edi
movzbl  %dl,%edi

# qhasm:   (uint32) z3 ^= *(uint32 *) (table + 1 + p12 * 8)
# asm 1: xorl 1(<table=int64#9,<p12=int64#1,8),<z3=int64#11d
# asm 2: xorl 1(<table=%r11,<p12=%rdi,8),<z3=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:   p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#3%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%dh,>p13=%edi
movzbl  %dh,%edi

# qhasm:   (uint32) z2 ^= *(uint32 *) (table + 4 + p13 * 8)
# asm 1: xorl 4(<table=int64#9,<p13=int64#1,8),<z2=int64#12d
# asm 2: xorl 4(<table=%r11,<p13=%rdi,8),<z2=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:   p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:   (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#12d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%r14d
xorl 3(%r11,%rdi,8),%r14d

# qhasm:   p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:   (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#13d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%r15d
xorl 2(%r11,%rdi,8),%r15d

# qhasm:   (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:   p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:   (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#15d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%ebp
xorl 1(%r11,%rdi,8),%ebp

# qhasm:   p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:   (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#11d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r13d
xorl 4(%r11,%rdi,8),%r13d

# qhasm:   p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:   (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#11d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r13d
xorl 3(%r11,%rdi,8),%r13d

# qhasm:   p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:   (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#12d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%r14d
xorl 2(%r11,%rdi,8),%r14d

# qhasm:   (uint32) y3 >>= 16
# asm 1: shr  $16,<y3=int64#7d
# asm 2: shr  $16,<y3=%eax
shr  $16,%eax

# qhasm:   p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:   (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#13d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%r15d
xorl 1(%r11,%rdi,8),%r15d

# qhasm:   p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:   (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#15d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%ebp
xorl 4(%r11,%rdi,8),%ebp

# qhasm:   y1 = r5
# asm 1: movq <r5=stack64#13,>y1=int64#3
# asm 2: movq <r5=128(%rsp),>y1=%rdx
movq 128(%rsp),%rdx

# qhasm:   y1 ^= z1
# asm 1: xor  <z1=int64#13,<y1=int64#3
# asm 2: xor  <z1=%r15,<y1=%rdx
xor  %r15,%rdx

# qhasm:   y2 = r6
# asm 1: movq <r6=stack64#14,>y2=int64#4
# asm 2: movq <r6=136(%rsp),>y2=%rcx
movq 136(%rsp),%rcx

# qhasm:   y2 ^= z2
# asm 1: xor  <z2=int64#12,<y2=int64#4
# asm 2: xor  <z2=%r14,<y2=%rcx
xor  %r14,%rcx

# qhasm:   y3 = r7
# asm 1: movq <r7=stack64#15,>y3=int64#7
# asm 2: movq <r7=144(%rsp),>y3=%rax
movq 144(%rsp),%rax

# qhasm:   y3 ^= z3
# asm 1: xor  <z3=int64#11,<y3=int64#7
# asm 2: xor  <z3=%r13,<y3=%rax
xor  %r13,%rax

# qhasm:   z0 ^= r4
# asm 1: xorq <r4=stack64#12,<z0=int64#15
# asm 2: xorq <r4=120(%rsp),<z0=%rbp
xorq 120(%rsp),%rbp

# qhasm:   pre10 = z0
# asm 1: movq <z0=int64#15,>pre10=stack64#21
# asm 2: movq <z0=%rbp,>pre10=192(%rsp)
movq %rbp,192(%rsp)

# qhasm:   p10 = y1 & 255
# asm 1: movzbl  <y1=int64#3b,>p10=int64#1d
# asm 2: movzbl  <y1=%dl,>p10=%edi
movzbl  %dl,%edi

# qhasm:   z1 = *(uint32 *) (table + 3 + p10 * 8)
# asm 1: movl   3(<table=int64#9,<p10=int64#1,8),>z1=int64#11d
# asm 2: movl   3(<table=%r11,<p10=%rdi,8),>z1=%r13d
movl   3(%r11,%rdi,8),%r13d

# qhasm:   p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#3%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%dh,>p11=%edi
movzbl  %dh,%edi

# qhasm:   z0 = *(uint32 *) (table + 2 + p11 * 8)
# asm 1: movl   2(<table=int64#9,<p11=int64#1,8),>z0=int64#12d
# asm 2: movl   2(<table=%r11,<p11=%rdi,8),>z0=%r14d
movl   2(%r11,%rdi,8),%r14d

# qhasm:   (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#3d
# asm 2: shr  $16,<y1=%edx
shr  $16,%edx

# qhasm:   p12 = y1 & 255
# asm 1: movzbl  <y1=int64#3b,>p12=int64#1d
# asm 2: movzbl  <y1=%dl,>p12=%edi
movzbl  %dl,%edi

# qhasm:   z3 = *(uint32 *) (table + 1 + p12 * 8)
# asm 1: movl   1(<table=int64#9,<p12=int64#1,8),>z3=int64#13d
# asm 2: movl   1(<table=%r11,<p12=%rdi,8),>z3=%r15d
movl   1(%r11,%rdi,8),%r15d

# qhasm:   p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#3%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%dh,>p13=%edi
movzbl  %dh,%edi

# qhasm:   z2 = *(uint32 *) (table + 4 + p13 * 8)
# asm 1: movl   4(<table=int64#9,<p13=int64#1,8),>z2=int64#3d
# asm 2: movl   4(<table=%r11,<p13=%rdi,8),>z2=%edx
movl   4(%r11,%rdi,8),%edx

# qhasm:   p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:   (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#3d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%edx
xorl 3(%r11,%rdi,8),%edx

# qhasm:   p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:   (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#11d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%r13d
xorl 2(%r11,%rdi,8),%r13d

# qhasm:   (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:   p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:   (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#12d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%r14d
xorl 1(%r11,%rdi,8),%r14d

# qhasm:   p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:   (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#13d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r15d
xorl 4(%r11,%rdi,8),%r15d

# qhasm:   p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:   (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#13d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:   p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:   (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#3d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%edx
xorl 2(%r11,%rdi,8),%edx

# qhasm:   (uint32) y3 >>= 16
# asm 1: shr  $16,<y3=int64#7d
# asm 2: shr  $16,<y3=%eax
shr  $16,%eax

# qhasm:   p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:   (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#11d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:   p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:   (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#12d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:   z0 ^= r8
# asm 1: xorq <r8=stack64#16,<z0=int64#12
# asm 2: xorq <r8=152(%rsp),<z0=%r14
xorq 152(%rsp),%r14

# qhasm:   z1 ^= r9
# asm 1: xorq <r9=stack64#17,<z1=int64#11
# asm 2: xorq <r9=160(%rsp),<z1=%r13
xorq 160(%rsp),%r13

# qhasm:   z2 ^= r10
# asm 1: xorq <r10=stack64#18,<z2=int64#3
# asm 2: xorq <r10=168(%rsp),<z2=%rdx
xorq 168(%rsp),%rdx

# qhasm:   z3 ^= r11
# asm 1: xorq <r11=stack64#19,<z3=int64#13
# asm 2: xorq <r11=176(%rsp),<z3=%r15
xorq 176(%rsp),%r15

# qhasm:   pre20 = z0
# asm 1: movq <z0=int64#12,>pre20=stack64#22
# asm 2: movq <z0=%r14,>pre20=200(%rsp)
movq %r14,200(%rsp)

# qhasm:   pre21 = z1
# asm 1: movq <z1=int64#11,>pre21=stack64#23
# asm 2: movq <z1=%r13,>pre21=208(%rsp)
movq %r13,208(%rsp)

# qhasm:   pre22 = z2
# asm 1: movq <z2=int64#3,>pre22=stack64#24
# asm 2: movq <z2=%rdx,>pre22=216(%rsp)
movq %rdx,216(%rsp)

# qhasm:   pre23 = z3
# asm 1: movq <z3=int64#13,>pre23=stack64#25
# asm 2: movq <z3=%r15,>pre23=224(%rsp)
movq %r15,224(%rsp)

# qhasm:   y0 ^= r0
# asm 1: xorq <r0=stack64#8,<y0=int64#14
# asm 2: xorq <r0=88(%rsp),<y0=%rbx
xorq 88(%rsp),%rbx

# qhasm:   mainloop:
._mainloop:

# qhasm:     y0 ^= r0
# asm 1: xorq <r0=stack64#8,<y0=int64#14
# asm 2: xorq <r0=88(%rsp),<y0=%rbx
xorq 88(%rsp),%rbx

# qhasm:     p00 = y0 & 255
# asm 1: movzbl  <y0=int64#14b,>p00=int64#1d
# asm 2: movzbl  <y0=%bl,>p00=%edi
movzbl  %bl,%edi

# qhasm:     z0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>z0=int64#14d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>z0=%ebx
movl   3(%r11,%rdi,8),%ebx

# qhasm:     z0 ^= pre10
# asm 1: xorq <pre10=stack64#21,<z0=int64#14
# asm 2: xorq <pre10=192(%rsp),<z0=%rbx
xorq 192(%rsp),%rbx

# qhasm:     p00 = z0 & 255
# asm 1: movzbl  <z0=int64#14b,>p00=int64#1d
# asm 2: movzbl  <z0=%bl,>p00=%edi
movzbl  %bl,%edi

# qhasm:     y0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>y0=int64#3d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>y0=%edx
movl   3(%r11,%rdi,8),%edx

# qhasm:     p03 = (z0 >> 8) & 255
# asm 1: movzbl  <z0=int64#14%next8,>p03=int64#1d
# asm 2: movzbl  <z0=%bh,>p03=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z0 >>= 16
# asm 1: shr  $16,<z0=int64#14d
# asm 2: shr  $16,<z0=%ebx
shr  $16,%ebx

# qhasm:     y3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>y3=int64#7d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>y3=%eax
movl   2(%r11,%rdi,8),%eax

# qhasm:     p02 = z0 & 255
# asm 1: movzbl  <z0=int64#14b,>p02=int64#1d
# asm 2: movzbl  <z0=%bl,>p02=%edi
movzbl  %bl,%edi

# qhasm:     y2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>y2=int64#4d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>y2=%ecx
movl   1(%r11,%rdi,8),%ecx

# qhasm:     p01 = (z0 >> 8) & 255
# asm 1: movzbl  <z0=int64#14%next8,>p01=int64#1d
# asm 2: movzbl  <z0=%bh,>p01=%edi
movzbl  %bh,%edi

# qhasm:     y1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>y1=int64#14d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>y1=%ebx
movl   4(%r11,%rdi,8),%ebx

# qhasm:     y0 ^= pre20
# asm 1: xorq <pre20=stack64#22,<y0=int64#3
# asm 2: xorq <pre20=200(%rsp),<y0=%rdx
xorq 200(%rsp),%rdx

# qhasm:     y1 ^= pre21
# asm 1: xorq <pre21=stack64#23,<y1=int64#14
# asm 2: xorq <pre21=208(%rsp),<y1=%rbx
xorq 208(%rsp),%rbx

# qhasm:     y2 ^= pre22
# asm 1: xorq <pre22=stack64#24,<y2=int64#4
# asm 2: xorq <pre22=216(%rsp),<y2=%rcx
xorq 216(%rsp),%rcx

# qhasm:     y3 ^= pre23
# asm 1: xorq <pre23=stack64#25,<y3=int64#7
# asm 2: xorq <pre23=224(%rsp),<y3=%rax
xorq 224(%rsp),%rax

# qhasm:     round3:
._round3:

# qhasm:     p00 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p00=int64#1d
# asm 2: movzbl  <y0=%dl,>p00=%edi
movzbl  %dl,%edi

# qhasm:     z0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>z0=int64#11d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>z0=%r13d
movl   3(%r11,%rdi,8),%r13d

# qhasm:     p03 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p03=int64#1d
# asm 2: movzbl  <y0=%dh,>p03=%edi
movzbl  %dh,%edi

# qhasm:     (uint32) y0 >>= 16
# asm 1: shr  $16,<y0=int64#3d
# asm 2: shr  $16,<y0=%edx
shr  $16,%edx

# qhasm:     z3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>z3=int64#12d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>z3=%r14d
movl   2(%r11,%rdi,8),%r14d

# qhasm:     p02 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p02=int64#1d
# asm 2: movzbl  <y0=%dl,>p02=%edi
movzbl  %dl,%edi

# qhasm:     z2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>z2=int64#13d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>z2=%r15d
movl   1(%r11,%rdi,8),%r15d

# qhasm:     p01 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p01=int64#1d
# asm 2: movzbl  <y0=%dh,>p01=%edi
movzbl  %dh,%edi

# qhasm:     z1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>z1=int64#15d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>z1=%ebp
movl   4(%r11,%rdi,8),%ebp

# qhasm:     y0 = r12
# asm 1: movd <r12=int3232#1,>y0=int64#3
# asm 2: movd <r12=%mm0,>y0=%rdx
movd %mm0,%rdx

# qhasm:     p10 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p10=int64#1d
# asm 2: movzbl  <y1=%bl,>p10=%edi
movzbl  %bl,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 3 + p10 * 8)
# asm 1: xorl 3(<table=int64#9,<p10=int64#1,8),<z1=int64#15d
# asm 2: xorl 3(<table=%r11,<p10=%rdi,8),<z1=%ebp
xorl 3(%r11,%rdi,8),%ebp

# qhasm:     p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%bh,>p11=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 2 + p11 * 8)
# asm 1: xorl 2(<table=int64#9,<p11=int64#1,8),<z0=int64#11d
# asm 2: xorl 2(<table=%r11,<p11=%rdi,8),<z0=%r13d
xorl 2(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#14d
# asm 2: shr  $16,<y1=%ebx
shr  $16,%ebx

# qhasm:     p12 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p12=int64#1d
# asm 2: movzbl  <y1=%bl,>p12=%edi
movzbl  %bl,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 1 + p12 * 8)
# asm 1: xorl 1(<table=int64#9,<p12=int64#1,8),<z3=int64#12d
# asm 2: xorl 1(<table=%r11,<p12=%rdi,8),<z3=%r14d
xorl 1(%r11,%rdi,8),%r14d

# qhasm:     p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%bh,>p13=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 4 + p13 * 8)
# asm 1: xorl 4(<table=int64#9,<p13=int64#1,8),<z2=int64#13d
# asm 2: xorl 4(<table=%r11,<p13=%rdi,8),<z2=%r15d
xorl 4(%r11,%rdi,8),%r15d

# qhasm:     y1 = r13
# asm 1: movd <r13=int3232#2,>y1=int64#14
# asm 2: movd <r13=%mm1,>y1=%rbx
movd %mm1,%rbx

# qhasm:     p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:     pr1 = y1
# asm 1: movd   <y1=int64#14,>pr1=int6464#12
# asm 2: movd   <y1=%rbx,>pr1=%xmm11
movd   %rbx,%xmm11

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#13d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:     p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#15d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%ebp
xorl 2(%r11,%rdi,8),%ebp

# qhasm:     (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:     p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#11d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#11d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%r13d
xorl 4(%r11,%rdi,8),%r13d

# qhasm:     p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#12d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:     y2 = r14
# asm 1: movd <r14=int3232#3,>y2=int64#4
# asm 2: movd <r14=%mm2,>y2=%rcx
movd %mm2,%rcx

# qhasm:     pr2 = y2
# asm 1: movd   <y2=int64#4,>pr2=int6464#13
# asm 2: movd   <y2=%rcx,>pr2=%xmm12
movd   %rcx,%xmm12

# qhasm:     p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#15d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%ebp
xorl 1(%r11,%rdi,8),%ebp

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#13d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%r15d
xorl 2(%r11,%rdi,8),%r15d

# qhasm:     y0 ^= z0
# asm 1: xor  <z0=int64#11,<y0=int64#3
# asm 2: xor  <z0=%r13,<y0=%rdx
xor  %r13,%rdx

# qhasm:     p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#12d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r14d
xorl 3(%r11,%rdi,8),%r14d

# qhasm:     y3 = r15
# asm 1: movd <r15=int3232#4,>y3=int64#7
# asm 2: movd <r15=%mm3,>y3=%rax
movd %mm3,%rax

# qhasm:     pr3 = y3
# asm 1: movd   <y3=int64#7,>pr3=int6464#14
# asm 2: movd   <y3=%rax,>pr3=%xmm13
movd   %rax,%xmm13

# qhasm:     y1 ^= z1
# asm 1: xor  <z1=int64#15,<y1=int64#14
# asm 2: xor  <z1=%rbp,<y1=%rbx
xor  %rbp,%rbx

# qhasm:     y2 ^= z2
# asm 1: xor  <z2=int64#13,<y2=int64#4
# asm 2: xor  <z2=%r15,<y2=%rcx
xor  %r15,%rcx

# qhasm:     y3 ^= z3
# asm 1: xor  <z3=int64#12,<y3=int64#7
# asm 2: xor  <z3=%r14,<y3=%rax
xor  %r14,%rax

# qhasm:     round4:
._round4:

# qhasm:     p00 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p00=int64#1d
# asm 2: movzbl  <y0=%dl,>p00=%edi
movzbl  %dl,%edi

# qhasm:     z0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>z0=int64#11d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>z0=%r13d
movl   3(%r11,%rdi,8),%r13d

# qhasm:     p03 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p03=int64#1d
# asm 2: movzbl  <y0=%dh,>p03=%edi
movzbl  %dh,%edi

# qhasm:     (uint32) y0 >>= 16
# asm 1: shr  $16,<y0=int64#3d
# asm 2: shr  $16,<y0=%edx
shr  $16,%edx

# qhasm:     z3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>z3=int64#12d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>z3=%r14d
movl   2(%r11,%rdi,8),%r14d

# qhasm:     p02 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p02=int64#1d
# asm 2: movzbl  <y0=%dl,>p02=%edi
movzbl  %dl,%edi

# qhasm:     z2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>z2=int64#13d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>z2=%r15d
movl   1(%r11,%rdi,8),%r15d

# qhasm:     p01 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p01=int64#1d
# asm 2: movzbl  <y0=%dh,>p01=%edi
movzbl  %dh,%edi

# qhasm:     z1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>z1=int64#15d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>z1=%ebp
movl   4(%r11,%rdi,8),%ebp

# qhasm:     y0 = r16
# asm 1: movd   <r16=int6464#1,>y0=int64#3
# asm 2: movd   <r16=%xmm0,>y0=%rdx
movd   %xmm0,%rdx

# qhasm:     p10 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p10=int64#1d
# asm 2: movzbl  <y1=%bl,>p10=%edi
movzbl  %bl,%edi

# qhasm:     ty0 = y0
# asm 1: movd   <y0=int64#3,>ty0=int6464#15
# asm 2: movd   <y0=%rdx,>ty0=%xmm14
movd   %rdx,%xmm14

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 3 + p10 * 8)
# asm 1: xorl 3(<table=int64#9,<p10=int64#1,8),<z1=int64#15d
# asm 2: xorl 3(<table=%r11,<p10=%rdi,8),<z1=%ebp
xorl 3(%r11,%rdi,8),%ebp

# qhasm:     p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%bh,>p11=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 2 + p11 * 8)
# asm 1: xorl 2(<table=int64#9,<p11=int64#1,8),<z0=int64#11d
# asm 2: xorl 2(<table=%r11,<p11=%rdi,8),<z0=%r13d
xorl 2(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#14d
# asm 2: shr  $16,<y1=%ebx
shr  $16,%ebx

# qhasm:     p12 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p12=int64#1d
# asm 2: movzbl  <y1=%bl,>p12=%edi
movzbl  %bl,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 1 + p12 * 8)
# asm 1: xorl 1(<table=int64#9,<p12=int64#1,8),<z3=int64#12d
# asm 2: xorl 1(<table=%r11,<p12=%rdi,8),<z3=%r14d
xorl 1(%r11,%rdi,8),%r14d

# qhasm:     p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%bh,>p13=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 4 + p13 * 8)
# asm 1: xorl 4(<table=int64#9,<p13=int64#1,8),<z2=int64#13d
# asm 2: xorl 4(<table=%r11,<p13=%rdi,8),<z2=%r15d
xorl 4(%r11,%rdi,8),%r15d

# qhasm:     pr1 ^= ty0
# asm 1: pxor  <ty0=int6464#15,<pr1=int6464#12
# asm 2: pxor  <ty0=%xmm14,<pr1=%xmm11
pxor  %xmm14,%xmm11

# qhasm:     p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:     pr2 ^= pr1
# asm 1: pxor  <pr1=int6464#12,<pr2=int6464#13
# asm 2: pxor  <pr1=%xmm11,<pr2=%xmm12
pxor  %xmm11,%xmm12

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#13d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:     p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#15d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%ebp
xorl 2(%r11,%rdi,8),%ebp

# qhasm:     pr3 ^= pr2
# asm 1: pxor  <pr2=int6464#13,<pr3=int6464#14
# asm 2: pxor  <pr2=%xmm12,<pr3=%xmm13
pxor  %xmm12,%xmm13

# qhasm:     (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:     p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#11d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#11d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%r13d
xorl 4(%r11,%rdi,8),%r13d

# qhasm:     p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#12d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:     y1 = pr1
# asm 1: movd   <pr1=int6464#12,>y1=int64#14
# asm 2: movd   <pr1=%xmm11,>y1=%rbx
movd   %xmm11,%rbx

# qhasm:     y2 = pr2
# asm 1: movd   <pr2=int6464#13,>y2=int64#4
# asm 2: movd   <pr2=%xmm12,>y2=%rcx
movd   %xmm12,%rcx

# qhasm:     p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#15d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%ebp
xorl 1(%r11,%rdi,8),%ebp

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#13d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%r15d
xorl 2(%r11,%rdi,8),%r15d

# qhasm:     y0 ^= z0
# asm 1: xor  <z0=int64#11,<y0=int64#3
# asm 2: xor  <z0=%r13,<y0=%rdx
xor  %r13,%rdx

# qhasm:     p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#12d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r14d
xorl 3(%r11,%rdi,8),%r14d

# qhasm:     y3 = pr3
# asm 1: movd   <pr3=int6464#14,>y3=int64#7
# asm 2: movd   <pr3=%xmm13,>y3=%rax
movd   %xmm13,%rax

# qhasm:     y1 ^= z1
# asm 1: xor  <z1=int64#15,<y1=int64#14
# asm 2: xor  <z1=%rbp,<y1=%rbx
xor  %rbp,%rbx

# qhasm:     y2 ^= z2
# asm 1: xor  <z2=int64#13,<y2=int64#4
# asm 2: xor  <z2=%r15,<y2=%rcx
xor  %r15,%rcx

# qhasm:     y3 ^= z3
# asm 1: xor  <z3=int64#12,<y3=int64#7
# asm 2: xor  <z3=%r14,<y3=%rax
xor  %r14,%rax

# qhasm:     round5:
._round5:

# qhasm:     p00 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p00=int64#1d
# asm 2: movzbl  <y0=%dl,>p00=%edi
movzbl  %dl,%edi

# qhasm:     z0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>z0=int64#11d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>z0=%r13d
movl   3(%r11,%rdi,8),%r13d

# qhasm:     p03 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p03=int64#1d
# asm 2: movzbl  <y0=%dh,>p03=%edi
movzbl  %dh,%edi

# qhasm:     (uint32) y0 >>= 16
# asm 1: shr  $16,<y0=int64#3d
# asm 2: shr  $16,<y0=%edx
shr  $16,%edx

# qhasm:     z3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>z3=int64#12d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>z3=%r14d
movl   2(%r11,%rdi,8),%r14d

# qhasm:     p02 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p02=int64#1d
# asm 2: movzbl  <y0=%dl,>p02=%edi
movzbl  %dl,%edi

# qhasm:     z2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>z2=int64#13d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>z2=%r15d
movl   1(%r11,%rdi,8),%r15d

# qhasm:     p01 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p01=int64#1d
# asm 2: movzbl  <y0=%dh,>p01=%edi
movzbl  %dh,%edi

# qhasm:     z1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>z1=int64#15d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>z1=%ebp
movl   4(%r11,%rdi,8),%ebp

# qhasm:     y0 = r20
# asm 1: movd   <r20=int6464#2,>y0=int64#3
# asm 2: movd   <r20=%xmm1,>y0=%rdx
movd   %xmm1,%rdx

# qhasm:     p10 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p10=int64#1d
# asm 2: movzbl  <y1=%bl,>p10=%edi
movzbl  %bl,%edi

# qhasm:     ty0 = y0
# asm 1: movd   <y0=int64#3,>ty0=int6464#15
# asm 2: movd   <y0=%rdx,>ty0=%xmm14
movd   %rdx,%xmm14

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 3 + p10 * 8)
# asm 1: xorl 3(<table=int64#9,<p10=int64#1,8),<z1=int64#15d
# asm 2: xorl 3(<table=%r11,<p10=%rdi,8),<z1=%ebp
xorl 3(%r11,%rdi,8),%ebp

# qhasm:     p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%bh,>p11=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 2 + p11 * 8)
# asm 1: xorl 2(<table=int64#9,<p11=int64#1,8),<z0=int64#11d
# asm 2: xorl 2(<table=%r11,<p11=%rdi,8),<z0=%r13d
xorl 2(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#14d
# asm 2: shr  $16,<y1=%ebx
shr  $16,%ebx

# qhasm:     p12 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p12=int64#1d
# asm 2: movzbl  <y1=%bl,>p12=%edi
movzbl  %bl,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 1 + p12 * 8)
# asm 1: xorl 1(<table=int64#9,<p12=int64#1,8),<z3=int64#12d
# asm 2: xorl 1(<table=%r11,<p12=%rdi,8),<z3=%r14d
xorl 1(%r11,%rdi,8),%r14d

# qhasm:     p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%bh,>p13=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 4 + p13 * 8)
# asm 1: xorl 4(<table=int64#9,<p13=int64#1,8),<z2=int64#13d
# asm 2: xorl 4(<table=%r11,<p13=%rdi,8),<z2=%r15d
xorl 4(%r11,%rdi,8),%r15d

# qhasm:     pr1 ^= ty0
# asm 1: pxor  <ty0=int6464#15,<pr1=int6464#12
# asm 2: pxor  <ty0=%xmm14,<pr1=%xmm11
pxor  %xmm14,%xmm11

# qhasm:     p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:     pr2 ^= pr1
# asm 1: pxor  <pr1=int6464#12,<pr2=int6464#13
# asm 2: pxor  <pr1=%xmm11,<pr2=%xmm12
pxor  %xmm11,%xmm12

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#13d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:     p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#15d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%ebp
xorl 2(%r11,%rdi,8),%ebp

# qhasm:     pr3 ^= pr2
# asm 1: pxor  <pr2=int6464#13,<pr3=int6464#14
# asm 2: pxor  <pr2=%xmm12,<pr3=%xmm13
pxor  %xmm12,%xmm13

# qhasm:     (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:     p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#11d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#11d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%r13d
xorl 4(%r11,%rdi,8),%r13d

# qhasm:     p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#12d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:     y1 = pr1
# asm 1: movd   <pr1=int6464#12,>y1=int64#14
# asm 2: movd   <pr1=%xmm11,>y1=%rbx
movd   %xmm11,%rbx

# qhasm:     y2 = pr2
# asm 1: movd   <pr2=int6464#13,>y2=int64#4
# asm 2: movd   <pr2=%xmm12,>y2=%rcx
movd   %xmm12,%rcx

# qhasm:     p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#15d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%ebp
xorl 1(%r11,%rdi,8),%ebp

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#13d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%r15d
xorl 2(%r11,%rdi,8),%r15d

# qhasm:     y0 ^= z0
# asm 1: xor  <z0=int64#11,<y0=int64#3
# asm 2: xor  <z0=%r13,<y0=%rdx
xor  %r13,%rdx

# qhasm:     p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#12d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r14d
xorl 3(%r11,%rdi,8),%r14d

# qhasm:     y3 = pr3
# asm 1: movd   <pr3=int6464#14,>y3=int64#7
# asm 2: movd   <pr3=%xmm13,>y3=%rax
movd   %xmm13,%rax

# qhasm:     y1 ^= z1
# asm 1: xor  <z1=int64#15,<y1=int64#14
# asm 2: xor  <z1=%rbp,<y1=%rbx
xor  %rbp,%rbx

# qhasm:     y2 ^= z2
# asm 1: xor  <z2=int64#13,<y2=int64#4
# asm 2: xor  <z2=%r15,<y2=%rcx
xor  %r15,%rcx

# qhasm:     y3 ^= z3
# asm 1: xor  <z3=int64#12,<y3=int64#7
# asm 2: xor  <z3=%r14,<y3=%rax
xor  %r14,%rax

# qhasm:     round6:
._round6:

# qhasm:     p00 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p00=int64#1d
# asm 2: movzbl  <y0=%dl,>p00=%edi
movzbl  %dl,%edi

# qhasm:     z0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>z0=int64#11d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>z0=%r13d
movl   3(%r11,%rdi,8),%r13d

# qhasm:     p03 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p03=int64#1d
# asm 2: movzbl  <y0=%dh,>p03=%edi
movzbl  %dh,%edi

# qhasm:     (uint32) y0 >>= 16
# asm 1: shr  $16,<y0=int64#3d
# asm 2: shr  $16,<y0=%edx
shr  $16,%edx

# qhasm:     z3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>z3=int64#12d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>z3=%r14d
movl   2(%r11,%rdi,8),%r14d

# qhasm:     p02 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p02=int64#1d
# asm 2: movzbl  <y0=%dl,>p02=%edi
movzbl  %dl,%edi

# qhasm:     z2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>z2=int64#13d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>z2=%r15d
movl   1(%r11,%rdi,8),%r15d

# qhasm:     p01 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p01=int64#1d
# asm 2: movzbl  <y0=%dh,>p01=%edi
movzbl  %dh,%edi

# qhasm:     z1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>z1=int64#15d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>z1=%ebp
movl   4(%r11,%rdi,8),%ebp

# qhasm:     y0 = r24
# asm 1: movd   <r24=int6464#3,>y0=int64#3
# asm 2: movd   <r24=%xmm2,>y0=%rdx
movd   %xmm2,%rdx

# qhasm:     p10 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p10=int64#1d
# asm 2: movzbl  <y1=%bl,>p10=%edi
movzbl  %bl,%edi

# qhasm:     ty0 = y0
# asm 1: movd   <y0=int64#3,>ty0=int6464#15
# asm 2: movd   <y0=%rdx,>ty0=%xmm14
movd   %rdx,%xmm14

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 3 + p10 * 8)
# asm 1: xorl 3(<table=int64#9,<p10=int64#1,8),<z1=int64#15d
# asm 2: xorl 3(<table=%r11,<p10=%rdi,8),<z1=%ebp
xorl 3(%r11,%rdi,8),%ebp

# qhasm:     p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%bh,>p11=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 2 + p11 * 8)
# asm 1: xorl 2(<table=int64#9,<p11=int64#1,8),<z0=int64#11d
# asm 2: xorl 2(<table=%r11,<p11=%rdi,8),<z0=%r13d
xorl 2(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#14d
# asm 2: shr  $16,<y1=%ebx
shr  $16,%ebx

# qhasm:     p12 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p12=int64#1d
# asm 2: movzbl  <y1=%bl,>p12=%edi
movzbl  %bl,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 1 + p12 * 8)
# asm 1: xorl 1(<table=int64#9,<p12=int64#1,8),<z3=int64#12d
# asm 2: xorl 1(<table=%r11,<p12=%rdi,8),<z3=%r14d
xorl 1(%r11,%rdi,8),%r14d

# qhasm:     p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%bh,>p13=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 4 + p13 * 8)
# asm 1: xorl 4(<table=int64#9,<p13=int64#1,8),<z2=int64#13d
# asm 2: xorl 4(<table=%r11,<p13=%rdi,8),<z2=%r15d
xorl 4(%r11,%rdi,8),%r15d

# qhasm:     pr1 ^= ty0
# asm 1: pxor  <ty0=int6464#15,<pr1=int6464#12
# asm 2: pxor  <ty0=%xmm14,<pr1=%xmm11
pxor  %xmm14,%xmm11

# qhasm:     p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:     pr2 ^= pr1
# asm 1: pxor  <pr1=int6464#12,<pr2=int6464#13
# asm 2: pxor  <pr1=%xmm11,<pr2=%xmm12
pxor  %xmm11,%xmm12

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#13d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:     p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#15d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%ebp
xorl 2(%r11,%rdi,8),%ebp

# qhasm:     pr3 ^= pr2
# asm 1: pxor  <pr2=int6464#13,<pr3=int6464#14
# asm 2: pxor  <pr2=%xmm12,<pr3=%xmm13
pxor  %xmm12,%xmm13

# qhasm:     (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:     p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#11d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#11d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%r13d
xorl 4(%r11,%rdi,8),%r13d

# qhasm:     p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#12d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:     y1 = pr1
# asm 1: movd   <pr1=int6464#12,>y1=int64#14
# asm 2: movd   <pr1=%xmm11,>y1=%rbx
movd   %xmm11,%rbx

# qhasm:     y2 = pr2
# asm 1: movd   <pr2=int6464#13,>y2=int64#4
# asm 2: movd   <pr2=%xmm12,>y2=%rcx
movd   %xmm12,%rcx

# qhasm:     p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#15d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%ebp
xorl 1(%r11,%rdi,8),%ebp

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#13d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%r15d
xorl 2(%r11,%rdi,8),%r15d

# qhasm:     y0 ^= z0
# asm 1: xor  <z0=int64#11,<y0=int64#3
# asm 2: xor  <z0=%r13,<y0=%rdx
xor  %r13,%rdx

# qhasm:     p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#12d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r14d
xorl 3(%r11,%rdi,8),%r14d

# qhasm:     y3 = pr3
# asm 1: movd   <pr3=int6464#14,>y3=int64#7
# asm 2: movd   <pr3=%xmm13,>y3=%rax
movd   %xmm13,%rax

# qhasm:     y1 ^= z1
# asm 1: xor  <z1=int64#15,<y1=int64#14
# asm 2: xor  <z1=%rbp,<y1=%rbx
xor  %rbp,%rbx

# qhasm:     y2 ^= z2
# asm 1: xor  <z2=int64#13,<y2=int64#4
# asm 2: xor  <z2=%r15,<y2=%rcx
xor  %r15,%rcx

# qhasm:     y3 ^= z3
# asm 1: xor  <z3=int64#12,<y3=int64#7
# asm 2: xor  <z3=%r14,<y3=%rax
xor  %r14,%rax

# qhasm:     round7:
._round7:

# qhasm:     p00 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p00=int64#1d
# asm 2: movzbl  <y0=%dl,>p00=%edi
movzbl  %dl,%edi

# qhasm:     z0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>z0=int64#11d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>z0=%r13d
movl   3(%r11,%rdi,8),%r13d

# qhasm:     p03 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p03=int64#1d
# asm 2: movzbl  <y0=%dh,>p03=%edi
movzbl  %dh,%edi

# qhasm:     (uint32) y0 >>= 16
# asm 1: shr  $16,<y0=int64#3d
# asm 2: shr  $16,<y0=%edx
shr  $16,%edx

# qhasm:     z3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>z3=int64#12d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>z3=%r14d
movl   2(%r11,%rdi,8),%r14d

# qhasm:     p02 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p02=int64#1d
# asm 2: movzbl  <y0=%dl,>p02=%edi
movzbl  %dl,%edi

# qhasm:     z2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>z2=int64#13d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>z2=%r15d
movl   1(%r11,%rdi,8),%r15d

# qhasm:     p01 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p01=int64#1d
# asm 2: movzbl  <y0=%dh,>p01=%edi
movzbl  %dh,%edi

# qhasm:     z1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>z1=int64#15d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>z1=%ebp
movl   4(%r11,%rdi,8),%ebp

# qhasm:     y0 = r28
# asm 1: movd   <r28=int6464#4,>y0=int64#3
# asm 2: movd   <r28=%xmm3,>y0=%rdx
movd   %xmm3,%rdx

# qhasm:     p10 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p10=int64#1d
# asm 2: movzbl  <y1=%bl,>p10=%edi
movzbl  %bl,%edi

# qhasm:     ty0 = y0
# asm 1: movd   <y0=int64#3,>ty0=int6464#15
# asm 2: movd   <y0=%rdx,>ty0=%xmm14
movd   %rdx,%xmm14

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 3 + p10 * 8)
# asm 1: xorl 3(<table=int64#9,<p10=int64#1,8),<z1=int64#15d
# asm 2: xorl 3(<table=%r11,<p10=%rdi,8),<z1=%ebp
xorl 3(%r11,%rdi,8),%ebp

# qhasm:     p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%bh,>p11=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 2 + p11 * 8)
# asm 1: xorl 2(<table=int64#9,<p11=int64#1,8),<z0=int64#11d
# asm 2: xorl 2(<table=%r11,<p11=%rdi,8),<z0=%r13d
xorl 2(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#14d
# asm 2: shr  $16,<y1=%ebx
shr  $16,%ebx

# qhasm:     p12 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p12=int64#1d
# asm 2: movzbl  <y1=%bl,>p12=%edi
movzbl  %bl,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 1 + p12 * 8)
# asm 1: xorl 1(<table=int64#9,<p12=int64#1,8),<z3=int64#12d
# asm 2: xorl 1(<table=%r11,<p12=%rdi,8),<z3=%r14d
xorl 1(%r11,%rdi,8),%r14d

# qhasm:     p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%bh,>p13=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 4 + p13 * 8)
# asm 1: xorl 4(<table=int64#9,<p13=int64#1,8),<z2=int64#13d
# asm 2: xorl 4(<table=%r11,<p13=%rdi,8),<z2=%r15d
xorl 4(%r11,%rdi,8),%r15d

# qhasm:     pr1 ^= ty0
# asm 1: pxor  <ty0=int6464#15,<pr1=int6464#12
# asm 2: pxor  <ty0=%xmm14,<pr1=%xmm11
pxor  %xmm14,%xmm11

# qhasm:     p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:     pr2 ^= pr1
# asm 1: pxor  <pr1=int6464#12,<pr2=int6464#13
# asm 2: pxor  <pr1=%xmm11,<pr2=%xmm12
pxor  %xmm11,%xmm12

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#13d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:     p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#15d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%ebp
xorl 2(%r11,%rdi,8),%ebp

# qhasm:     pr3 ^= pr2
# asm 1: pxor  <pr2=int6464#13,<pr3=int6464#14
# asm 2: pxor  <pr2=%xmm12,<pr3=%xmm13
pxor  %xmm12,%xmm13

# qhasm:     (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:     p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#11d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#11d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%r13d
xorl 4(%r11,%rdi,8),%r13d

# qhasm:     p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#12d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:     y1 = pr1
# asm 1: movd   <pr1=int6464#12,>y1=int64#14
# asm 2: movd   <pr1=%xmm11,>y1=%rbx
movd   %xmm11,%rbx

# qhasm:     y2 = pr2
# asm 1: movd   <pr2=int6464#13,>y2=int64#4
# asm 2: movd   <pr2=%xmm12,>y2=%rcx
movd   %xmm12,%rcx

# qhasm:     p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#15d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%ebp
xorl 1(%r11,%rdi,8),%ebp

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#13d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%r15d
xorl 2(%r11,%rdi,8),%r15d

# qhasm:     y0 ^= z0
# asm 1: xor  <z0=int64#11,<y0=int64#3
# asm 2: xor  <z0=%r13,<y0=%rdx
xor  %r13,%rdx

# qhasm:     p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#12d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r14d
xorl 3(%r11,%rdi,8),%r14d

# qhasm:     y3 = pr3
# asm 1: movd   <pr3=int6464#14,>y3=int64#7
# asm 2: movd   <pr3=%xmm13,>y3=%rax
movd   %xmm13,%rax

# qhasm:     y1 ^= z1
# asm 1: xor  <z1=int64#15,<y1=int64#14
# asm 2: xor  <z1=%rbp,<y1=%rbx
xor  %rbp,%rbx

# qhasm:     y2 ^= z2
# asm 1: xor  <z2=int64#13,<y2=int64#4
# asm 2: xor  <z2=%r15,<y2=%rcx
xor  %r15,%rcx

# qhasm:     y3 ^= z3
# asm 1: xor  <z3=int64#12,<y3=int64#7
# asm 2: xor  <z3=%r14,<y3=%rax
xor  %r14,%rax

# qhasm:     round8:
._round8:

# qhasm:     p00 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p00=int64#1d
# asm 2: movzbl  <y0=%dl,>p00=%edi
movzbl  %dl,%edi

# qhasm:     z0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>z0=int64#11d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>z0=%r13d
movl   3(%r11,%rdi,8),%r13d

# qhasm:     p03 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p03=int64#1d
# asm 2: movzbl  <y0=%dh,>p03=%edi
movzbl  %dh,%edi

# qhasm:     (uint32) y0 >>= 16
# asm 1: shr  $16,<y0=int64#3d
# asm 2: shr  $16,<y0=%edx
shr  $16,%edx

# qhasm:     z3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>z3=int64#12d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>z3=%r14d
movl   2(%r11,%rdi,8),%r14d

# qhasm:     p02 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p02=int64#1d
# asm 2: movzbl  <y0=%dl,>p02=%edi
movzbl  %dl,%edi

# qhasm:     z2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>z2=int64#13d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>z2=%r15d
movl   1(%r11,%rdi,8),%r15d

# qhasm:     p01 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p01=int64#1d
# asm 2: movzbl  <y0=%dh,>p01=%edi
movzbl  %dh,%edi

# qhasm:     z1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>z1=int64#15d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>z1=%ebp
movl   4(%r11,%rdi,8),%ebp

# qhasm:     y0 = r32
# asm 1: movd   <r32=int6464#5,>y0=int64#3
# asm 2: movd   <r32=%xmm4,>y0=%rdx
movd   %xmm4,%rdx

# qhasm:     p10 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p10=int64#1d
# asm 2: movzbl  <y1=%bl,>p10=%edi
movzbl  %bl,%edi

# qhasm:     ty0 = y0
# asm 1: movd   <y0=int64#3,>ty0=int6464#15
# asm 2: movd   <y0=%rdx,>ty0=%xmm14
movd   %rdx,%xmm14

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 3 + p10 * 8)
# asm 1: xorl 3(<table=int64#9,<p10=int64#1,8),<z1=int64#15d
# asm 2: xorl 3(<table=%r11,<p10=%rdi,8),<z1=%ebp
xorl 3(%r11,%rdi,8),%ebp

# qhasm:     p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%bh,>p11=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 2 + p11 * 8)
# asm 1: xorl 2(<table=int64#9,<p11=int64#1,8),<z0=int64#11d
# asm 2: xorl 2(<table=%r11,<p11=%rdi,8),<z0=%r13d
xorl 2(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#14d
# asm 2: shr  $16,<y1=%ebx
shr  $16,%ebx

# qhasm:     p12 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p12=int64#1d
# asm 2: movzbl  <y1=%bl,>p12=%edi
movzbl  %bl,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 1 + p12 * 8)
# asm 1: xorl 1(<table=int64#9,<p12=int64#1,8),<z3=int64#12d
# asm 2: xorl 1(<table=%r11,<p12=%rdi,8),<z3=%r14d
xorl 1(%r11,%rdi,8),%r14d

# qhasm:     p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%bh,>p13=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 4 + p13 * 8)
# asm 1: xorl 4(<table=int64#9,<p13=int64#1,8),<z2=int64#13d
# asm 2: xorl 4(<table=%r11,<p13=%rdi,8),<z2=%r15d
xorl 4(%r11,%rdi,8),%r15d

# qhasm:     pr1 ^= ty0
# asm 1: pxor  <ty0=int6464#15,<pr1=int6464#12
# asm 2: pxor  <ty0=%xmm14,<pr1=%xmm11
pxor  %xmm14,%xmm11

# qhasm:     p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:     pr2 ^= pr1
# asm 1: pxor  <pr1=int6464#12,<pr2=int6464#13
# asm 2: pxor  <pr1=%xmm11,<pr2=%xmm12
pxor  %xmm11,%xmm12

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#13d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:     p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#15d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%ebp
xorl 2(%r11,%rdi,8),%ebp

# qhasm:     pr3 ^= pr2
# asm 1: pxor  <pr2=int6464#13,<pr3=int6464#14
# asm 2: pxor  <pr2=%xmm12,<pr3=%xmm13
pxor  %xmm12,%xmm13

# qhasm:     (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:     p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#11d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#11d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%r13d
xorl 4(%r11,%rdi,8),%r13d

# qhasm:     p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#12d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:     y1 = pr1
# asm 1: movd   <pr1=int6464#12,>y1=int64#14
# asm 2: movd   <pr1=%xmm11,>y1=%rbx
movd   %xmm11,%rbx

# qhasm:     y2 = pr2
# asm 1: movd   <pr2=int6464#13,>y2=int64#4
# asm 2: movd   <pr2=%xmm12,>y2=%rcx
movd   %xmm12,%rcx

# qhasm:     p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#15d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%ebp
xorl 1(%r11,%rdi,8),%ebp

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#13d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%r15d
xorl 2(%r11,%rdi,8),%r15d

# qhasm:     y0 ^= z0
# asm 1: xor  <z0=int64#11,<y0=int64#3
# asm 2: xor  <z0=%r13,<y0=%rdx
xor  %r13,%rdx

# qhasm:     p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#12d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r14d
xorl 3(%r11,%rdi,8),%r14d

# qhasm:     y3 = pr3
# asm 1: movd   <pr3=int6464#14,>y3=int64#7
# asm 2: movd   <pr3=%xmm13,>y3=%rax
movd   %xmm13,%rax

# qhasm:     y1 ^= z1
# asm 1: xor  <z1=int64#15,<y1=int64#14
# asm 2: xor  <z1=%rbp,<y1=%rbx
xor  %rbp,%rbx

# qhasm:     y2 ^= z2
# asm 1: xor  <z2=int64#13,<y2=int64#4
# asm 2: xor  <z2=%r15,<y2=%rcx
xor  %r15,%rcx

# qhasm:     y3 ^= z3
# asm 1: xor  <z3=int64#12,<y3=int64#7
# asm 2: xor  <z3=%r14,<y3=%rax
xor  %r14,%rax

# qhasm:     round9:
._round9:

# qhasm:     p00 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p00=int64#1d
# asm 2: movzbl  <y0=%dl,>p00=%edi
movzbl  %dl,%edi

# qhasm:     z0 = *(uint32 *) (table + 3 + p00 * 8)
# asm 1: movl   3(<table=int64#9,<p00=int64#1,8),>z0=int64#11d
# asm 2: movl   3(<table=%r11,<p00=%rdi,8),>z0=%r13d
movl   3(%r11,%rdi,8),%r13d

# qhasm:     p03 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p03=int64#1d
# asm 2: movzbl  <y0=%dh,>p03=%edi
movzbl  %dh,%edi

# qhasm:     (uint32) y0 >>= 16
# asm 1: shr  $16,<y0=int64#3d
# asm 2: shr  $16,<y0=%edx
shr  $16,%edx

# qhasm:     z3 = *(uint32 *) (table + 2 + p03 * 8)
# asm 1: movl   2(<table=int64#9,<p03=int64#1,8),>z3=int64#12d
# asm 2: movl   2(<table=%r11,<p03=%rdi,8),>z3=%r14d
movl   2(%r11,%rdi,8),%r14d

# qhasm:     p02 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>p02=int64#1d
# asm 2: movzbl  <y0=%dl,>p02=%edi
movzbl  %dl,%edi

# qhasm:     z2 = *(uint32 *) (table + 1 + p02 * 8)
# asm 1: movl   1(<table=int64#9,<p02=int64#1,8),>z2=int64#13d
# asm 2: movl   1(<table=%r11,<p02=%rdi,8),>z2=%r15d
movl   1(%r11,%rdi,8),%r15d

# qhasm:     p01 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>p01=int64#1d
# asm 2: movzbl  <y0=%dh,>p01=%edi
movzbl  %dh,%edi

# qhasm:     z1 = *(uint32 *) (table + 4 + p01 * 8)
# asm 1: movl   4(<table=int64#9,<p01=int64#1,8),>z1=int64#15d
# asm 2: movl   4(<table=%r11,<p01=%rdi,8),>z1=%ebp
movl   4(%r11,%rdi,8),%ebp

# qhasm:     y0 = r36
# asm 1: movd   <r36=int6464#6,>y0=int64#3
# asm 2: movd   <r36=%xmm5,>y0=%rdx
movd   %xmm5,%rdx

# qhasm:     p10 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p10=int64#1d
# asm 2: movzbl  <y1=%bl,>p10=%edi
movzbl  %bl,%edi

# qhasm:     ty0 = y0
# asm 1: movd   <y0=int64#3,>ty0=int6464#15
# asm 2: movd   <y0=%rdx,>ty0=%xmm14
movd   %rdx,%xmm14

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 3 + p10 * 8)
# asm 1: xorl 3(<table=int64#9,<p10=int64#1,8),<z1=int64#15d
# asm 2: xorl 3(<table=%r11,<p10=%rdi,8),<z1=%ebp
xorl 3(%r11,%rdi,8),%ebp

# qhasm:     p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%bh,>p11=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 2 + p11 * 8)
# asm 1: xorl 2(<table=int64#9,<p11=int64#1,8),<z0=int64#11d
# asm 2: xorl 2(<table=%r11,<p11=%rdi,8),<z0=%r13d
xorl 2(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#14d
# asm 2: shr  $16,<y1=%ebx
shr  $16,%ebx

# qhasm:     p12 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p12=int64#1d
# asm 2: movzbl  <y1=%bl,>p12=%edi
movzbl  %bl,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 1 + p12 * 8)
# asm 1: xorl 1(<table=int64#9,<p12=int64#1,8),<z3=int64#12d
# asm 2: xorl 1(<table=%r11,<p12=%rdi,8),<z3=%r14d
xorl 1(%r11,%rdi,8),%r14d

# qhasm:     p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%bh,>p13=%edi
movzbl  %bh,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 4 + p13 * 8)
# asm 1: xorl 4(<table=int64#9,<p13=int64#1,8),<z2=int64#13d
# asm 2: xorl 4(<table=%r11,<p13=%rdi,8),<z2=%r15d
xorl 4(%r11,%rdi,8),%r15d

# qhasm:     pr1 ^= ty0
# asm 1: pxor  <ty0=int6464#15,<pr1=int6464#12
# asm 2: pxor  <ty0=%xmm14,<pr1=%xmm11
pxor  %xmm14,%xmm11

# qhasm:     p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:     pr2 ^= pr1
# asm 1: pxor  <pr1=int6464#12,<pr2=int6464#13
# asm 2: pxor  <pr1=%xmm11,<pr2=%xmm12
pxor  %xmm11,%xmm12

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 3 + p20 * 8)
# asm 1: xorl 3(<table=int64#9,<p20=int64#1,8),<z2=int64#13d
# asm 2: xorl 3(<table=%r11,<p20=%rdi,8),<z2=%r15d
xorl 3(%r11,%rdi,8),%r15d

# qhasm:     p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 2 + p21 * 8)
# asm 1: xorl 2(<table=int64#9,<p21=int64#1,8),<z1=int64#15d
# asm 2: xorl 2(<table=%r11,<p21=%rdi,8),<z1=%ebp
xorl 2(%r11,%rdi,8),%ebp

# qhasm:     pr3 ^= pr2
# asm 1: pxor  <pr2=int6464#13,<pr3=int6464#14
# asm 2: pxor  <pr2=%xmm12,<pr3=%xmm13
pxor  %xmm12,%xmm13

# qhasm:     (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:     p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 1 + p22 * 8)
# asm 1: xorl 1(<table=int64#9,<p22=int64#1,8),<z0=int64#11d
# asm 2: xorl 1(<table=%r11,<p22=%rdi,8),<z0=%r13d
xorl 1(%r11,%rdi,8),%r13d

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z0 ^= *(uint32 *) (table + 4 + p33 * 8)
# asm 1: xorl 4(<table=int64#9,<p33=int64#1,8),<z0=int64#11d
# asm 2: xorl 4(<table=%r11,<p33=%rdi,8),<z0=%r13d
xorl 4(%r11,%rdi,8),%r13d

# qhasm:     p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 4 + p23 * 8)
# asm 1: xorl 4(<table=int64#9,<p23=int64#1,8),<z3=int64#12d
# asm 2: xorl 4(<table=%r11,<p23=%rdi,8),<z3=%r14d
xorl 4(%r11,%rdi,8),%r14d

# qhasm:     y1 = pr1
# asm 1: movd   <pr1=int6464#12,>y1=int64#14
# asm 2: movd   <pr1=%xmm11,>y1=%rbx
movd   %xmm11,%rbx

# qhasm:     y2 = pr2
# asm 1: movd   <pr2=int6464#13,>y2=int64#4
# asm 2: movd   <pr2=%xmm12,>y2=%rcx
movd   %xmm12,%rcx

# qhasm:     p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z1 ^= *(uint32 *) (table + 1 + p32 * 8)
# asm 1: xorl 1(<table=int64#9,<p32=int64#1,8),<z1=int64#15d
# asm 2: xorl 1(<table=%r11,<p32=%rdi,8),<z1=%ebp
xorl 1(%r11,%rdi,8),%ebp

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:     (uint32) z2 ^= *(uint32 *) (table + 2 + p31 * 8)
# asm 1: xorl 2(<table=int64#9,<p31=int64#1,8),<z2=int64#13d
# asm 2: xorl 2(<table=%r11,<p31=%rdi,8),<z2=%r15d
xorl 2(%r11,%rdi,8),%r15d

# qhasm:     y0 ^= z0
# asm 1: xor  <z0=int64#11,<y0=int64#3
# asm 2: xor  <z0=%r13,<y0=%rdx
xor  %r13,%rdx

# qhasm:     p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:     (uint32) z3 ^= *(uint32 *) (table + 3 + p30 * 8)
# asm 1: xorl 3(<table=int64#9,<p30=int64#1,8),<z3=int64#12d
# asm 2: xorl 3(<table=%r11,<p30=%rdi,8),<z3=%r14d
xorl 3(%r11,%rdi,8),%r14d

# qhasm:     y3 = pr3
# asm 1: movd   <pr3=int6464#14,>y3=int64#7
# asm 2: movd   <pr3=%xmm13,>y3=%rax
movd   %xmm13,%rax

# qhasm:     y1 ^= z1
# asm 1: xor  <z1=int64#15,<y1=int64#14
# asm 2: xor  <z1=%rbp,<y1=%rbx
xor  %rbp,%rbx

# qhasm:     y2 ^= z2
# asm 1: xor  <z2=int64#13,<y2=int64#4
# asm 2: xor  <z2=%r15,<y2=%rcx
xor  %r15,%rcx

# qhasm:     y3 ^= z3
# asm 1: xor  <z3=int64#12,<y3=int64#7
# asm 2: xor  <z3=%r14,<y3=%rax
xor  %r14,%rax

# qhasm:     round10:
._round10:

# qhasm:     z0 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>z0=int64#1d
# asm 2: movzbl  <y0=%dl,>z0=%edi
movzbl  %dl,%edi

# qhasm:     z0 = *(uint8 *) (table + 1 + z0 * 8)
# asm 1: movzbq 1(<table=int64#9,<z0=int64#1,8),>z0=int64#11
# asm 2: movzbq 1(<table=%r11,<z0=%rdi,8),>z0=%r13
movzbq 1(%r11,%rdi,8),%r13

# qhasm:     z3 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>z3=int64#1d
# asm 2: movzbl  <y0=%dh,>z3=%edi
movzbl  %dh,%edi

# qhasm:     z3 = *(uint16 *) (table + z3 * 8)
# asm 1: movzwq (<table=int64#9,<z3=int64#1,8),>z3=int64#12
# asm 2: movzwq (<table=%r11,<z3=%rdi,8),>z3=%r14
movzwq (%r11,%rdi,8),%r14

# qhasm:     (uint32) y0 >>= 16
# asm 1: shr  $16,<y0=int64#3d
# asm 2: shr  $16,<y0=%edx
shr  $16,%edx

# qhasm:     z2 = y0 & 255
# asm 1: movzbl  <y0=int64#3b,>z2=int64#1d
# asm 2: movzbl  <y0=%dl,>z2=%edi
movzbl  %dl,%edi

# qhasm:     z2 = *(uint32 *) (table + 2048 + z2 * 8)
# asm 1: movl   2048(<table=int64#9,<z2=int64#1,8),>z2=int64#13d
# asm 2: movl   2048(<table=%r11,<z2=%rdi,8),>z2=%r15d
movl   2048(%r11,%rdi,8),%r15d

# qhasm:     z1 = (y0 >> 8) & 255
# asm 1: movzbl  <y0=int64#3%next8,>z1=int64#1d
# asm 2: movzbl  <y0=%dh,>z1=%edi
movzbl  %dh,%edi

# qhasm:     z1 = *(uint32 *) (table + 2052 + z1 * 8)
# asm 1: movl   2052(<table=int64#9,<z1=int64#1,8),>z1=int64#3d
# asm 2: movl   2052(<table=%r11,<z1=%rdi,8),>z1=%edx
movl   2052(%r11,%rdi,8),%edx

# qhasm:     y0 = r40
# asm 1: movd   <r40=int6464#7,>y0=int64#15
# asm 2: movd   <r40=%xmm6,>y0=%rbp
movd   %xmm6,%rbp

# qhasm:     p10 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p10=int64#1d
# asm 2: movzbl  <y1=%bl,>p10=%edi
movzbl  %bl,%edi

# qhasm:     p10 = *(uint8 *) (table + 1 + p10 * 8)
# asm 1: movzbq 1(<table=int64#9,<p10=int64#1,8),>p10=int64#1
# asm 2: movzbq 1(<table=%r11,<p10=%rdi,8),>p10=%rdi
movzbq 1(%r11,%rdi,8),%rdi

# qhasm:     z1 ^= p10
# asm 1: xor  <p10=int64#1,<z1=int64#3
# asm 2: xor  <p10=%rdi,<z1=%rdx
xor  %rdi,%rdx

# qhasm:     p11 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p11=int64#1d
# asm 2: movzbl  <y1=%bh,>p11=%edi
movzbl  %bh,%edi

# qhasm:     p11 = *(uint16 *) (table + p11 * 8)
# asm 1: movzwq (<table=int64#9,<p11=int64#1,8),>p11=int64#1
# asm 2: movzwq (<table=%r11,<p11=%rdi,8),>p11=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm:     z0 ^= p11
# asm 1: xor  <p11=int64#1,<z0=int64#11
# asm 2: xor  <p11=%rdi,<z0=%r13
xor  %rdi,%r13

# qhasm:     (uint32) y1 >>= 16
# asm 1: shr  $16,<y1=int64#14d
# asm 2: shr  $16,<y1=%ebx
shr  $16,%ebx

# qhasm:     p12 = y1 & 255
# asm 1: movzbl  <y1=int64#14b,>p12=int64#1d
# asm 2: movzbl  <y1=%bl,>p12=%edi
movzbl  %bl,%edi

# qhasm:     p12 = *(uint32 *) (table + 2048 + p12 * 8)
# asm 1: movl   2048(<table=int64#9,<p12=int64#1,8),>p12=int64#1d
# asm 2: movl   2048(<table=%r11,<p12=%rdi,8),>p12=%edi
movl   2048(%r11,%rdi,8),%edi

# qhasm:     z3 ^= p12
# asm 1: xor  <p12=int64#1,<z3=int64#12
# asm 2: xor  <p12=%rdi,<z3=%r14
xor  %rdi,%r14

# qhasm:     p13 = (y1 >> 8) & 255
# asm 1: movzbl  <y1=int64#14%next8,>p13=int64#1d
# asm 2: movzbl  <y1=%bh,>p13=%edi
movzbl  %bh,%edi

# qhasm:     p13 = *(uint32 *) (table + 2052 + p13 * 8)
# asm 1: movl   2052(<table=int64#9,<p13=int64#1,8),>p13=int64#1d
# asm 2: movl   2052(<table=%r11,<p13=%rdi,8),>p13=%edi
movl   2052(%r11,%rdi,8),%edi

# qhasm:     z2 ^= p13
# asm 1: xor  <p13=int64#1,<z2=int64#13
# asm 2: xor  <p13=%rdi,<z2=%r15
xor  %rdi,%r15

# qhasm:     y1 = pr1
# asm 1: movd   <pr1=int6464#12,>y1=int64#14
# asm 2: movd   <pr1=%xmm11,>y1=%rbx
movd   %xmm11,%rbx

# qhasm:     p20 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p20=int64#1d
# asm 2: movzbl  <y2=%cl,>p20=%edi
movzbl  %cl,%edi

# qhasm:     y1 ^= y0
# asm 1: xor  <y0=int64#15,<y1=int64#14
# asm 2: xor  <y0=%rbp,<y1=%rbx
xor  %rbp,%rbx

# qhasm:     p20 = *(uint8 *) (table + 1 + p20 * 8)
# asm 1: movzbq 1(<table=int64#9,<p20=int64#1,8),>p20=int64#1
# asm 2: movzbq 1(<table=%r11,<p20=%rdi,8),>p20=%rdi
movzbq 1(%r11,%rdi,8),%rdi

# qhasm:     z2 ^= p20
# asm 1: xor  <p20=int64#1,<z2=int64#13
# asm 2: xor  <p20=%rdi,<z2=%r15
xor  %rdi,%r15

# qhasm:     p21 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p21=int64#1d
# asm 2: movzbl  <y2=%ch,>p21=%edi
movzbl  %ch,%edi

# qhasm:     p21 = *(uint16 *) (table + p21 * 8)
# asm 1: movzwq (<table=int64#9,<p21=int64#1,8),>p21=int64#1
# asm 2: movzwq (<table=%r11,<p21=%rdi,8),>p21=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm:     z1 ^= p21
# asm 1: xor  <p21=int64#1,<z1=int64#3
# asm 2: xor  <p21=%rdi,<z1=%rdx
xor  %rdi,%rdx

# qhasm:     (uint32) y2 >>= 16
# asm 1: shr  $16,<y2=int64#4d
# asm 2: shr  $16,<y2=%ecx
shr  $16,%ecx

# qhasm:     p22 = y2 & 255
# asm 1: movzbl  <y2=int64#4b,>p22=int64#1d
# asm 2: movzbl  <y2=%cl,>p22=%edi
movzbl  %cl,%edi

# qhasm:     p22 = *(uint32 *) (table + 2048 + p22 * 8)
# asm 1: movl   2048(<table=int64#9,<p22=int64#1,8),>p22=int64#1d
# asm 2: movl   2048(<table=%r11,<p22=%rdi,8),>p22=%edi
movl   2048(%r11,%rdi,8),%edi

# qhasm:     z0 ^= p22
# asm 1: xor  <p22=int64#1,<z0=int64#11
# asm 2: xor  <p22=%rdi,<z0=%r13
xor  %rdi,%r13

# qhasm:     p23 = (y2 >> 8) & 255
# asm 1: movzbl  <y2=int64#4%next8,>p23=int64#1d
# asm 2: movzbl  <y2=%ch,>p23=%edi
movzbl  %ch,%edi

# qhasm:     p23 = *(uint32 *) (table + 2052 + p23 * 8)
# asm 1: movl   2052(<table=int64#9,<p23=int64#1,8),>p23=int64#1d
# asm 2: movl   2052(<table=%r11,<p23=%rdi,8),>p23=%edi
movl   2052(%r11,%rdi,8),%edi

# qhasm:     y2 = pr2
# asm 1: movd   <pr2=int6464#13,>y2=int64#4
# asm 2: movd   <pr2=%xmm12,>y2=%rcx
movd   %xmm12,%rcx

# qhasm:     z3 ^= p23
# asm 1: xor  <p23=int64#1,<z3=int64#12
# asm 2: xor  <p23=%rdi,<z3=%r14
xor  %rdi,%r14

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     y2 ^= y1
# asm 1: xor  <y1=int64#14,<y2=int64#4
# asm 2: xor  <y1=%rbx,<y2=%rcx
xor  %rbx,%rcx

# qhasm:     p33 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p33=int64#1d
# asm 2: movzbl  <y3=%ah,>p33=%edi
movzbl  %ah,%edi

# qhasm:     p33 = *(uint32 *) (table + 2052 + p33 * 8)
# asm 1: movl   2052(<table=int64#9,<p33=int64#1,8),>p33=int64#1d
# asm 2: movl   2052(<table=%r11,<p33=%rdi,8),>p33=%edi
movl   2052(%r11,%rdi,8),%edi

# qhasm:     z0 ^= p33
# asm 1: xor  <p33=int64#1,<z0=int64#11
# asm 2: xor  <p33=%rdi,<z0=%r13
xor  %rdi,%r13

# qhasm:     p32 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p32=int64#1d
# asm 2: movzbl  <y3=%al,>p32=%edi
movzbl  %al,%edi

# qhasm:     p32 = *(uint32 *) (table + 2048 + p32 * 8)
# asm 1: movl   2048(<table=int64#9,<p32=int64#1,8),>p32=int64#1d
# asm 2: movl   2048(<table=%r11,<p32=%rdi,8),>p32=%edi
movl   2048(%r11,%rdi,8),%edi

# qhasm:     z1 ^= p32
# asm 1: xor  <p32=int64#1,<z1=int64#3
# asm 2: xor  <p32=%rdi,<z1=%rdx
xor  %rdi,%rdx

# qhasm:     (uint32) y3 >>>= 16
# asm 1: ror  $16,<y3=int64#7d
# asm 2: ror  $16,<y3=%eax
ror  $16,%eax

# qhasm:     p31 = (y3 >> 8) & 255
# asm 1: movzbl  <y3=int64#7%next8,>p31=int64#1d
# asm 2: movzbl  <y3=%ah,>p31=%edi
movzbl  %ah,%edi

# qhasm:     p31 = *(uint16 *) (table + p31 * 8)
# asm 1: movzwq (<table=int64#9,<p31=int64#1,8),>p31=int64#1
# asm 2: movzwq (<table=%r11,<p31=%rdi,8),>p31=%rdi
movzwq (%r11,%rdi,8),%rdi

# qhasm:     z2 ^= p31
# asm 1: xor  <p31=int64#1,<z2=int64#13
# asm 2: xor  <p31=%rdi,<z2=%r15
xor  %rdi,%r15

# qhasm:     p30 = y3 & 255
# asm 1: movzbl  <y3=int64#7b,>p30=int64#1d
# asm 2: movzbl  <y3=%al,>p30=%edi
movzbl  %al,%edi

# qhasm:     p30 = *(uint8 *) (table + 1 + p30 * 8)
# asm 1: movzbq 1(<table=int64#9,<p30=int64#1,8),>p30=int64#1
# asm 2: movzbq 1(<table=%r11,<p30=%rdi,8),>p30=%rdi
movzbq 1(%r11,%rdi,8),%rdi

# qhasm:     z3 ^= p30
# asm 1: xor  <p30=int64#1,<z3=int64#12
# asm 2: xor  <p30=%rdi,<z3=%r14
xor  %rdi,%r14

# qhasm:     y3 = pr3
# asm 1: movd   <pr3=int6464#14,>y3=int64#1
# asm 2: movd   <pr3=%xmm13,>y3=%rdi
movd   %xmm13,%rdi

# qhasm:     y3 ^= y2
# asm 1: xor  <y2=int64#4,<y3=int64#1
# asm 2: xor  <y2=%rcx,<y3=%rdi
xor  %rcx,%rdi

# qhasm:     z0 ^= y0
# asm 1: xor  <y0=int64#15,<z0=int64#11
# asm 2: xor  <y0=%rbp,<z0=%r13
xor  %rbp,%r13

# qhasm:     z1 ^= y1
# asm 1: xor  <y1=int64#14,<z1=int64#3
# asm 2: xor  <y1=%rbx,<z1=%rdx
xor  %rbx,%rdx

# qhasm:     z2 ^= y2
# asm 1: xor  <y2=int64#4,<z2=int64#13
# asm 2: xor  <y2=%rcx,<z2=%r15
xor  %rcx,%r15

# qhasm:     z3 ^= y3
# asm 1: xor  <y3=int64#1,<z3=int64#12
# asm 2: xor  <y3=%rdi,<z3=%r14
xor  %rdi,%r14

# qhasm:     (uint32) z0 ^= *(uint32 *) (in + 0)
# asm 1: xorl 0(<in=int64#2),<z0=int64#11d
# asm 2: xorl 0(<in=%rsi),<z0=%r13d
xorl 0(%rsi),%r13d

# qhasm:     (uint32) z1 ^= *(uint32 *) (in + 4)
# asm 1: xorl 4(<in=int64#2),<z1=int64#3d
# asm 2: xorl 4(<in=%rsi),<z1=%edx
xorl 4(%rsi),%edx

# qhasm:     (uint32) z2 ^= *(uint32 *) (in + 8)
# asm 1: xorl 8(<in=int64#2),<z2=int64#13d
# asm 2: xorl 8(<in=%rsi),<z2=%r15d
xorl 8(%rsi),%r15d

# qhasm:     (uint32) z3 ^= *(uint32 *) (in + 12)
# asm 1: xorl 12(<in=int64#2),<z3=int64#12d
# asm 2: xorl 12(<in=%rsi),<z3=%r14d
xorl 12(%rsi),%r14d

# qhasm:     in += 16
# asm 1: add  $16,<in=int64#2
# asm 2: add  $16,<in=%rsi
add  $16,%rsi

# qhasm:     *(uint32 *) (out + 0) = z0
# asm 1: movl   <z0=int64#11d,0(<out=int64#8)
# asm 2: movl   <z0=%r13d,0(<out=%r10)
movl   %r13d,0(%r10)

# qhasm:     *(uint32 *) (out + 4) = z1
# asm 1: movl   <z1=int64#3d,4(<out=int64#8)
# asm 2: movl   <z1=%edx,4(<out=%r10)
movl   %edx,4(%r10)

# qhasm:     *(uint32 *) (out + 8) = z2
# asm 1: movl   <z2=int64#13d,8(<out=int64#8)
# asm 2: movl   <z2=%r15d,8(<out=%r10)
movl   %r15d,8(%r10)

# qhasm:     *(uint32 *) (out + 12) = z3
# asm 1: movl   <z3=int64#12d,12(<out=int64#8)
# asm 2: movl   <z3=%r14d,12(<out=%r10)
movl   %r14d,12(%r10)

# qhasm:     out += 16
# asm 1: add  $16,<out=int64#8
# asm 2: add  $16,<out=%r10
add  $16,%r10

# qhasm:     y0 = n0
# asm 1: movd   <n0=int6464#8,>y0=int64#14
# asm 2: movd   <n0=%xmm7,>y0=%rbx
movd   %xmm7,%rbx

# qhasm:     y0 += 1
# asm 1: add  $1,<y0=int64#14
# asm 2: add  $1,<y0=%rbx
add  $1,%rbx

# qhasm:     n0 = y0
# asm 1: movd   <y0=int64#14,>n0=int6464#8
# asm 2: movd   <y0=%rbx,>n0=%xmm7
movd   %rbx,%xmm7

# qhasm:     unsigned>? mainloopbytes -= 16
# asm 1: sub  $16,<mainloopbytes=int64#10
# asm 2: sub  $16,<mainloopbytes=%r12
sub  $16,%r12
# comment:fp stack unchanged by jump

# qhasm:     goto mainloop if unsigned>
ja ._mainloop

# qhasm:   signed>? =? len - 0
# asm 1: cmp  $0,<len=int64#5
# asm 2: cmp  $0,<len=%r8
cmp  $0,%r8
# comment:fp stack unchanged by jump

# qhasm:     goto done if =
je ._done
# comment:fp stack unchanged by jump

# qhasm:     goto processlastbytes if !signed>
jle ._processlastbytes

# qhasm:   unsigned<? len - 16
# asm 1: cmp  $16,<len=int64#5
# asm 2: cmp  $16,<len=%r8
cmp  $16,%r8
# comment:fp stack unchanged by jump

# qhasm:     goto outerloop if !unsigned<
jae ._outerloop

# qhasm:   tmpinp = &tmpin
# asm 1: leaq <tmpin=stack128#1,>tmpinp=int64#1
# asm 2: leaq <tmpin=0(%rsp),>tmpinp=%rdi
leaq 0(%rsp),%rdi

# qhasm:   lentmp = len
# asm 1: mov  <len=int64#5,>lentmp=int64#4
# asm 2: mov  <len=%r8,>lentmp=%rcx
mov  %r8,%rcx

# qhasm:   outstack = out
# asm 1: movq <out=int64#8,>outstack=stack64#20
# asm 2: movq <out=%r10,>outstack=184(%rsp)
movq %r10,184(%rsp)

# qhasm:   while (lentmp) { *tmpinp++ = *in++; --lentmp }
rep movsb

# qhasm:   in = &tmpin
# asm 1: leaq <tmpin=stack128#1,>in=int64#2
# asm 2: leaq <tmpin=0(%rsp),>in=%rsi
leaq 0(%rsp),%rsi

# qhasm:   out = &tmpin
# asm 1: leaq <tmpin=stack128#1,>out=int64#8
# asm 2: leaq <tmpin=0(%rsp),>out=%r10
leaq 0(%rsp),%r10

# qhasm:   len -= 16
# asm 1: sub  $16,<len=int64#5
# asm 2: sub  $16,<len=%r8
sub  $16,%r8

# qhasm:   mainloopbytes = 16
# asm 1: mov  $16,>mainloopbytes=int64#10
# asm 2: mov  $16,>mainloopbytes=%r12
mov  $16,%r12

# qhasm:   tmp = y0 & 255
# asm 1: movzbl  <y0=int64#14b,>tmp=int64#1d
# asm 2: movzbl  <y0=%bl,>tmp=%edi
movzbl  %bl,%edi

# qhasm:   =? tmp - 0 
# asm 1: cmp  $0,<tmp=int64#1
# asm 2: cmp  $0,<tmp=%rdi
cmp  $0,%rdi
# comment:fp stack unchanged by jump

# qhasm:     goto mainloop if !=
jne ._mainloop
# comment:fp stack unchanged by jump

# qhasm:     goto precompute
jmp ._precompute

# qhasm: processlastbytes:
._processlastbytes:

# qhasm: len += 16
# asm 1: add  $16,<len=int64#5
# asm 2: add  $16,<len=%r8
add  $16,%r8

# qhasm: tmpinp = &tmpin
# asm 1: leaq <tmpin=stack128#1,>tmpinp=int64#2
# asm 2: leaq <tmpin=0(%rsp),>tmpinp=%rsi
leaq 0(%rsp),%rsi

# qhasm: out = outstack
# asm 1: movq <outstack=stack64#20,>out=int64#1
# asm 2: movq <outstack=184(%rsp),>out=%rdi
movq 184(%rsp),%rdi

# qhasm: lentmp = len
# asm 1: mov  <len=int64#5,>lentmp=int64#4
# asm 2: mov  <len=%r8,>lentmp=%rcx
mov  %r8,%rcx

# qhasm: while (lentmp) { *out++ = *tmpinp++; --lentmp }
rep movsb
# comment:fp stack unchanged by fallthrough

# qhasm: done:
._done:

# qhasm:   y1 = n1
# asm 1: movd   <n1=int6464#9,>y1=int64#1
# asm 2: movd   <n1=%xmm8,>y1=%rdi
movd   %xmm8,%rdi

# qhasm:   y2 = n2
# asm 1: movd   <n2=int6464#10,>y2=int64#2
# asm 2: movd   <n2=%xmm9,>y2=%rsi
movd   %xmm9,%rsi

# qhasm:   y3 = n3
# asm 1: movd   <n3=int6464#11,>y3=int64#3
# asm 2: movd   <n3=%xmm10,>y3=%rdx
movd   %xmm10,%rdx

# qhasm: *(uint32 *) (c + 56) = y0
# asm 1: movl   <y0=int64#14d,56(<c=int64#6)
# asm 2: movl   <y0=%ebx,56(<c=%r9)
movl   %ebx,56(%r9)

# qhasm: *(uint32 *) (c + 60) = y1
# asm 1: movl   <y1=int64#1d,60(<c=int64#6)
# asm 2: movl   <y1=%edi,60(<c=%r9)
movl   %edi,60(%r9)

# qhasm: *(uint32 *) (c + 64) = y2
# asm 1: movl   <y2=int64#2d,64(<c=int64#6)
# asm 2: movl   <y2=%esi,64(<c=%r9)
movl   %esi,64(%r9)

# qhasm: *(uint32 *) (c + 68) = y3
# asm 1: movl   <y3=int64#3d,68(<c=int64#6)
# asm 2: movl   <y3=%edx,68(<c=%r9)
movl   %edx,68(%r9)
# comment:fp stack unchanged by fallthrough

# qhasm: nothingtodo:
._nothingtodo:

# qhasm: emms
emms

# qhasm: r11_caller = r11_stack
# asm 1: movq <r11_stack=stack64#1,>r11_caller=int64#9
# asm 2: movq <r11_stack=32(%rsp),>r11_caller=%r11
movq 32(%rsp),%r11

# qhasm: r12_caller = r12_stack
# asm 1: movq <r12_stack=stack64#2,>r12_caller=int64#10
# asm 2: movq <r12_stack=40(%rsp),>r12_caller=%r12
movq 40(%rsp),%r12

# qhasm: r13_caller = r13_stack
# asm 1: movq <r13_stack=stack64#3,>r13_caller=int64#11
# asm 2: movq <r13_stack=48(%rsp),>r13_caller=%r13
movq 48(%rsp),%r13

# qhasm: r14_caller = r14_stack
# asm 1: movq <r14_stack=stack64#4,>r14_caller=int64#12
# asm 2: movq <r14_stack=56(%rsp),>r14_caller=%r14
movq 56(%rsp),%r14

# qhasm: r15_caller = r15_stack
# asm 1: movq <r15_stack=stack64#5,>r15_caller=int64#13
# asm 2: movq <r15_stack=64(%rsp),>r15_caller=%r15
movq 64(%rsp),%r15

# qhasm: rbx_caller = rbx_stack
# asm 1: movq <rbx_stack=stack64#6,>rbx_caller=int64#14
# asm 2: movq <rbx_stack=72(%rsp),>rbx_caller=%rbx
movq 72(%rsp),%rbx

# qhasm: rbp_caller = rbp_stack
# asm 1: movq <rbp_stack=stack64#7,>rbp_caller=int64#15
# asm 2: movq <rbp_stack=80(%rsp),>rbp_caller=%rbp
movq 80(%rsp),%rbp

# qhasm: leave
add %r11,%rsp
mov %rdi,%rax
mov %rsi,%rdx
ret

# constants
.data
.section .rodata
.p2align 6

aes_constants:
aes_tablex:
.byte 0x00
aes_table2:
.byte 0x63
aes_table1:
.byte 0xa5
aes_table0:
.byte 0xc6
aes_table3:
.long 0xc6a56363
.long 0xf8847c00
.long 0xf8847c7c
.long 0xee997700
.long 0xee997777
.long 0xf68d7b00
.long 0xf68d7b7b
.long 0xff0df200
.long 0xff0df2f2
.long 0xd6bd6b00
.long 0xd6bd6b6b
.long 0xdeb16f00
.long 0xdeb16f6f
.long 0x9154c500
.long 0x9154c5c5
.long 0x60503000
.long 0x60503030
.long 0x02030100
.long 0x02030101
.long 0xcea96700
.long 0xcea96767
.long 0x567d2b00
.long 0x567d2b2b
.long 0xe719fe00
.long 0xe719fefe
.long 0xb562d700
.long 0xb562d7d7
.long 0x4de6ab00
.long 0x4de6abab
.long 0xec9a7600
.long 0xec9a7676
.long 0x8f45ca00
.long 0x8f45caca
.long 0x1f9d8200
.long 0x1f9d8282
.long 0x8940c900
.long 0x8940c9c9
.long 0xfa877d00
.long 0xfa877d7d
.long 0xef15fa00
.long 0xef15fafa
.long 0xb2eb5900
.long 0xb2eb5959
.long 0x8ec94700
.long 0x8ec94747
.long 0xfb0bf000
.long 0xfb0bf0f0
.long 0x41ecad00
.long 0x41ecadad
.long 0xb367d400
.long 0xb367d4d4
.long 0x5ffda200
.long 0x5ffda2a2
.long 0x45eaaf00
.long 0x45eaafaf
.long 0x23bf9c00
.long 0x23bf9c9c
.long 0x53f7a400
.long 0x53f7a4a4
.long 0xe4967200
.long 0xe4967272
.long 0x9b5bc000
.long 0x9b5bc0c0
.long 0x75c2b700
.long 0x75c2b7b7
.long 0xe11cfd00
.long 0xe11cfdfd
.long 0x3dae9300
.long 0x3dae9393
.long 0x4c6a2600
.long 0x4c6a2626
.long 0x6c5a3600
.long 0x6c5a3636
.long 0x7e413f00
.long 0x7e413f3f
.long 0xf502f700
.long 0xf502f7f7
.long 0x834fcc00
.long 0x834fcccc
.long 0x685c3400
.long 0x685c3434
.long 0x51f4a500
.long 0x51f4a5a5
.long 0xd134e500
.long 0xd134e5e5
.long 0xf908f100
.long 0xf908f1f1
.long 0xe2937100
.long 0xe2937171
.long 0xab73d800
.long 0xab73d8d8
.long 0x62533100
.long 0x62533131
.long 0x2a3f1500
.long 0x2a3f1515
.long 0x080c0400
.long 0x080c0404
.long 0x9552c700
.long 0x9552c7c7
.long 0x46652300
.long 0x46652323
.long 0x9d5ec300
.long 0x9d5ec3c3
.long 0x30281800
.long 0x30281818
.long 0x37a19600
.long 0x37a19696
.long 0x0a0f0500
.long 0x0a0f0505
.long 0x2fb59a00
.long 0x2fb59a9a
.long 0x0e090700
.long 0x0e090707
.long 0x24361200
.long 0x24361212
.long 0x1b9b8000
.long 0x1b9b8080
.long 0xdf3de200
.long 0xdf3de2e2
.long 0xcd26eb00
.long 0xcd26ebeb
.long 0x4e692700
.long 0x4e692727
.long 0x7fcdb200
.long 0x7fcdb2b2
.long 0xea9f7500
.long 0xea9f7575
.long 0x121b0900
.long 0x121b0909
.long 0x1d9e8300
.long 0x1d9e8383
.long 0x58742c00
.long 0x58742c2c
.long 0x342e1a00
.long 0x342e1a1a
.long 0x362d1b00
.long 0x362d1b1b
.long 0xdcb26e00
.long 0xdcb26e6e
.long 0xb4ee5a00
.long 0xb4ee5a5a
.long 0x5bfba000
.long 0x5bfba0a0
.long 0xa4f65200
.long 0xa4f65252
.long 0x764d3b00
.long 0x764d3b3b
.long 0xb761d600
.long 0xb761d6d6
.long 0x7dceb300
.long 0x7dceb3b3
.long 0x527b2900
.long 0x527b2929
.long 0xdd3ee300
.long 0xdd3ee3e3
.long 0x5e712f00
.long 0x5e712f2f
.long 0x13978400
.long 0x13978484
.long 0xa6f55300
.long 0xa6f55353
.long 0xb968d100
.long 0xb968d1d1
.long 0x00000000
.long 0x00000000
.long 0xc12ced00
.long 0xc12ceded
.long 0x40602000
.long 0x40602020
.long 0xe31ffc00
.long 0xe31ffcfc
.long 0x79c8b100
.long 0x79c8b1b1
.long 0xb6ed5b00
.long 0xb6ed5b5b
.long 0xd4be6a00
.long 0xd4be6a6a
.long 0x8d46cb00
.long 0x8d46cbcb
.long 0x67d9be00
.long 0x67d9bebe
.long 0x724b3900
.long 0x724b3939
.long 0x94de4a00
.long 0x94de4a4a
.long 0x98d44c00
.long 0x98d44c4c
.long 0xb0e85800
.long 0xb0e85858
.long 0x854acf00
.long 0x854acfcf
.long 0xbb6bd000
.long 0xbb6bd0d0
.long 0xc52aef00
.long 0xc52aefef
.long 0x4fe5aa00
.long 0x4fe5aaaa
.long 0xed16fb00
.long 0xed16fbfb
.long 0x86c54300
.long 0x86c54343
.long 0x9ad74d00
.long 0x9ad74d4d
.long 0x66553300
.long 0x66553333
.long 0x11948500
.long 0x11948585
.long 0x8acf4500
.long 0x8acf4545
.long 0xe910f900
.long 0xe910f9f9
.long 0x04060200
.long 0x04060202
.long 0xfe817f00
.long 0xfe817f7f
.long 0xa0f05000
.long 0xa0f05050
.long 0x78443c00
.long 0x78443c3c
.long 0x25ba9f00
.long 0x25ba9f9f
.long 0x4be3a800
.long 0x4be3a8a8
.long 0xa2f35100
.long 0xa2f35151
.long 0x5dfea300
.long 0x5dfea3a3
.long 0x80c04000
.long 0x80c04040
.long 0x058a8f00
.long 0x058a8f8f
.long 0x3fad9200
.long 0x3fad9292
.long 0x21bc9d00
.long 0x21bc9d9d
.long 0x70483800
.long 0x70483838
.long 0xf104f500
.long 0xf104f5f5
.long 0x63dfbc00
.long 0x63dfbcbc
.long 0x77c1b600
.long 0x77c1b6b6
.long 0xaf75da00
.long 0xaf75dada
.long 0x42632100
.long 0x42632121
.long 0x20301000
.long 0x20301010
.long 0xe51aff00
.long 0xe51affff
.long 0xfd0ef300
.long 0xfd0ef3f3
.long 0xbf6dd200
.long 0xbf6dd2d2
.long 0x814ccd00
.long 0x814ccdcd
.long 0x18140c00
.long 0x18140c0c
.long 0x26351300
.long 0x26351313
.long 0xc32fec00
.long 0xc32fecec
.long 0xbee15f00
.long 0xbee15f5f
.long 0x35a29700
.long 0x35a29797
.long 0x88cc4400
.long 0x88cc4444
.long 0x2e391700
.long 0x2e391717
.long 0x9357c400
.long 0x9357c4c4
.long 0x55f2a700
.long 0x55f2a7a7
.long 0xfc827e00
.long 0xfc827e7e
.long 0x7a473d00
.long 0x7a473d3d
.long 0xc8ac6400
.long 0xc8ac6464
.long 0xbae75d00
.long 0xbae75d5d
.long 0x322b1900
.long 0x322b1919
.long 0xe6957300
.long 0xe6957373
.long 0xc0a06000
.long 0xc0a06060
.long 0x19988100
.long 0x19988181
.long 0x9ed14f00
.long 0x9ed14f4f
.long 0xa37fdc00
.long 0xa37fdcdc
.long 0x44662200
.long 0x44662222
.long 0x547e2a00
.long 0x547e2a2a
.long 0x3bab9000
.long 0x3bab9090
.long 0x0b838800
.long 0x0b838888
.long 0x8cca4600
.long 0x8cca4646
.long 0xc729ee00
.long 0xc729eeee
.long 0x6bd3b800
.long 0x6bd3b8b8
.long 0x283c1400
.long 0x283c1414
.long 0xa779de00
.long 0xa779dede
.long 0xbce25e00
.long 0xbce25e5e
.long 0x161d0b00
.long 0x161d0b0b
.long 0xad76db00
.long 0xad76dbdb
.long 0xdb3be000
.long 0xdb3be0e0
.long 0x64563200
.long 0x64563232
.long 0x744e3a00
.long 0x744e3a3a
.long 0x141e0a00
.long 0x141e0a0a
.long 0x92db4900
.long 0x92db4949
.long 0x0c0a0600
.long 0x0c0a0606
.long 0x486c2400
.long 0x486c2424
.long 0xb8e45c00
.long 0xb8e45c5c
.long 0x9f5dc200
.long 0x9f5dc2c2
.long 0xbd6ed300
.long 0xbd6ed3d3
.long 0x43efac00
.long 0x43efacac
.long 0xc4a66200
.long 0xc4a66262
.long 0x39a89100
.long 0x39a89191
.long 0x31a49500
.long 0x31a49595
.long 0xd337e400
.long 0xd337e4e4
.long 0xf28b7900
.long 0xf28b7979
.long 0xd532e700
.long 0xd532e7e7
.long 0x8b43c800
.long 0x8b43c8c8
.long 0x6e593700
.long 0x6e593737
.long 0xdab76d00
.long 0xdab76d6d
.long 0x018c8d00
.long 0x018c8d8d
.long 0xb164d500
.long 0xb164d5d5
.long 0x9cd24e00
.long 0x9cd24e4e
.long 0x49e0a900
.long 0x49e0a9a9
.long 0xd8b46c00
.long 0xd8b46c6c
.long 0xacfa5600
.long 0xacfa5656
.long 0xf307f400
.long 0xf307f4f4
.long 0xcf25ea00
.long 0xcf25eaea
.long 0xcaaf6500
.long 0xcaaf6565
.long 0xf48e7a00
.long 0xf48e7a7a
.long 0x47e9ae00
.long 0x47e9aeae
.long 0x10180800
.long 0x10180808
.long 0x6fd5ba00
.long 0x6fd5baba
.long 0xf0887800
.long 0xf0887878
.long 0x4a6f2500
.long 0x4a6f2525
.long 0x5c722e00
.long 0x5c722e2e
.long 0x38241c00
.long 0x38241c1c
.long 0x57f1a600
.long 0x57f1a6a6
.long 0x73c7b400
.long 0x73c7b4b4
.long 0x9751c600
.long 0x9751c6c6
.long 0xcb23e800
.long 0xcb23e8e8
.long 0xa17cdd00
.long 0xa17cdddd
.long 0xe89c7400
.long 0xe89c7474
.long 0x3e211f00
.long 0x3e211f1f
.long 0x96dd4b00
.long 0x96dd4b4b
.long 0x61dcbd00
.long 0x61dcbdbd
.long 0x0d868b00
.long 0x0d868b8b
.long 0x0f858a00
.long 0x0f858a8a
.long 0xe0907000
.long 0xe0907070
.long 0x7c423e00
.long 0x7c423e3e
.long 0x71c4b500
.long 0x71c4b5b5
.long 0xccaa6600
.long 0xccaa6666
.long 0x90d84800
.long 0x90d84848
.long 0x06050300
.long 0x06050303
.long 0xf701f600
.long 0xf701f6f6
.long 0x1c120e00
.long 0x1c120e0e
.long 0xc2a36100
.long 0xc2a36161
.long 0x6a5f3500
.long 0x6a5f3535
.long 0xaef95700
.long 0xaef95757
.long 0x69d0b900
.long 0x69d0b9b9
.long 0x17918600
.long 0x17918686
.long 0x9958c100
.long 0x9958c1c1
.long 0x3a271d00
.long 0x3a271d1d
.long 0x27b99e00
.long 0x27b99e9e
.long 0xd938e100
.long 0xd938e1e1
.long 0xeb13f800
.long 0xeb13f8f8
.long 0x2bb39800
.long 0x2bb39898
.long 0x22331100
.long 0x22331111
.long 0xd2bb6900
.long 0xd2bb6969
.long 0xa970d900
.long 0xa970d9d9
.long 0x07898e00
.long 0x07898e8e
.long 0x33a79400
.long 0x33a79494
.long 0x2db69b00
.long 0x2db69b9b
.long 0x3c221e00
.long 0x3c221e1e
.long 0x15928700
.long 0x15928787
.long 0xc920e900
.long 0xc920e9e9
.long 0x8749ce00
.long 0x8749cece
.long 0xaaff5500
.long 0xaaff5555
.long 0x50782800
.long 0x50782828
.long 0xa57adf00
.long 0xa57adfdf
.long 0x038f8c00
.long 0x038f8c8c
.long 0x59f8a100
.long 0x59f8a1a1
.long 0x09808900
.long 0x09808989
.long 0x1a170d00
.long 0x1a170d0d
.long 0x65dabf00
.long 0x65dabfbf
.long 0xd731e600
.long 0xd731e6e6
.long 0x84c64200
.long 0x84c64242
.long 0xd0b86800
.long 0xd0b86868
.long 0x82c34100
.long 0x82c34141
.long 0x29b09900
.long 0x29b09999
.long 0x5a772d00
.long 0x5a772d2d
.long 0x1e110f00
.long 0x1e110f0f
.long 0x7bcbb000
.long 0x7bcbb0b0
.long 0xa8fc5400
.long 0xa8fc5454
.long 0x6dd6bb00
.long 0x6dd6bbbb
.long 0x2c3a1600
.long 0x2c3a1616


.long 0x00630000
.long 0x63000000
.long 0x007c0000
.long 0x7c000000
.long 0x00770000
.long 0x77000000
.long 0x007b0000
.long 0x7b000000
.long 0x00f20000
.long 0xf2000000
.long 0x006b0000
.long 0x6b000000
.long 0x006f0000
.long 0x6f000000
.long 0x00c50000
.long 0xc5000000
.long 0x00300000
.long 0x30000000
.long 0x00010000
.long 0x01000000
.long 0x00670000
.long 0x67000000
.long 0x002b0000
.long 0x2b000000
.long 0x00fe0000
.long 0xfe000000
.long 0x00d70000
.long 0xd7000000
.long 0x00ab0000
.long 0xab000000
.long 0x00760000
.long 0x76000000
.long 0x00ca0000
.long 0xca000000
.long 0x00820000
.long 0x82000000
.long 0x00c90000
.long 0xc9000000
.long 0x007d0000
.long 0x7d000000
.long 0x00fa0000
.long 0xfa000000
.long 0x00590000
.long 0x59000000
.long 0x00470000
.long 0x47000000
.long 0x00f00000
.long 0xf0000000
.long 0x00ad0000
.long 0xad000000
.long 0x00d40000
.long 0xd4000000
.long 0x00a20000
.long 0xa2000000
.long 0x00af0000
.long 0xaf000000
.long 0x009c0000
.long 0x9c000000
.long 0x00a40000
.long 0xa4000000
.long 0x00720000
.long 0x72000000
.long 0x00c00000
.long 0xc0000000
.long 0x00b70000
.long 0xb7000000
.long 0x00fd0000
.long 0xfd000000
.long 0x00930000
.long 0x93000000
.long 0x00260000
.long 0x26000000
.long 0x00360000
.long 0x36000000
.long 0x003f0000
.long 0x3f000000
.long 0x00f70000
.long 0xf7000000
.long 0x00cc0000
.long 0xcc000000
.long 0x00340000
.long 0x34000000
.long 0x00a50000
.long 0xa5000000
.long 0x00e50000
.long 0xe5000000
.long 0x00f10000
.long 0xf1000000
.long 0x00710000
.long 0x71000000
.long 0x00d80000
.long 0xd8000000
.long 0x00310000
.long 0x31000000
.long 0x00150000
.long 0x15000000
.long 0x00040000
.long 0x04000000
.long 0x00c70000
.long 0xc7000000
.long 0x00230000
.long 0x23000000
.long 0x00c30000
.long 0xc3000000
.long 0x00180000
.long 0x18000000
.long 0x00960000
.long 0x96000000
.long 0x00050000
.long 0x05000000
.long 0x009a0000
.long 0x9a000000
.long 0x00070000
.long 0x07000000
.long 0x00120000
.long 0x12000000
.long 0x00800000
.long 0x80000000
.long 0x00e20000
.long 0xe2000000
.long 0x00eb0000
.long 0xeb000000
.long 0x00270000
.long 0x27000000
.long 0x00b20000
.long 0xb2000000
.long 0x00750000
.long 0x75000000
.long 0x00090000
.long 0x09000000
.long 0x00830000
.long 0x83000000
.long 0x002c0000
.long 0x2c000000
.long 0x001a0000
.long 0x1a000000
.long 0x001b0000
.long 0x1b000000
.long 0x006e0000
.long 0x6e000000
.long 0x005a0000
.long 0x5a000000
.long 0x00a00000
.long 0xa0000000
.long 0x00520000
.long 0x52000000
.long 0x003b0000
.long 0x3b000000
.long 0x00d60000
.long 0xd6000000
.long 0x00b30000
.long 0xb3000000
.long 0x00290000
.long 0x29000000
.long 0x00e30000
.long 0xe3000000
.long 0x002f0000
.long 0x2f000000
.long 0x00840000
.long 0x84000000
.long 0x00530000
.long 0x53000000
.long 0x00d10000
.long 0xd1000000
.long 0x00000000
.long 0x00000000
.long 0x00ed0000
.long 0xed000000
.long 0x00200000
.long 0x20000000
.long 0x00fc0000
.long 0xfc000000
.long 0x00b10000
.long 0xb1000000
.long 0x005b0000
.long 0x5b000000
.long 0x006a0000
.long 0x6a000000
.long 0x00cb0000
.long 0xcb000000
.long 0x00be0000
.long 0xbe000000
.long 0x00390000
.long 0x39000000
.long 0x004a0000
.long 0x4a000000
.long 0x004c0000
.long 0x4c000000
.long 0x00580000
.long 0x58000000
.long 0x00cf0000
.long 0xcf000000
.long 0x00d00000
.long 0xd0000000
.long 0x00ef0000
.long 0xef000000
.long 0x00aa0000
.long 0xaa000000
.long 0x00fb0000
.long 0xfb000000
.long 0x00430000
.long 0x43000000
.long 0x004d0000
.long 0x4d000000
.long 0x00330000
.long 0x33000000
.long 0x00850000
.long 0x85000000
.long 0x00450000
.long 0x45000000
.long 0x00f90000
.long 0xf9000000
.long 0x00020000
.long 0x02000000
.long 0x007f0000
.long 0x7f000000
.long 0x00500000
.long 0x50000000
.long 0x003c0000
.long 0x3c000000
.long 0x009f0000
.long 0x9f000000
.long 0x00a80000
.long 0xa8000000
.long 0x00510000
.long 0x51000000
.long 0x00a30000
.long 0xa3000000
.long 0x00400000
.long 0x40000000
.long 0x008f0000
.long 0x8f000000
.long 0x00920000
.long 0x92000000
.long 0x009d0000
.long 0x9d000000
.long 0x00380000
.long 0x38000000
.long 0x00f50000
.long 0xf5000000
.long 0x00bc0000
.long 0xbc000000
.long 0x00b60000
.long 0xb6000000
.long 0x00da0000
.long 0xda000000
.long 0x00210000
.long 0x21000000
.long 0x00100000
.long 0x10000000
.long 0x00ff0000
.long 0xff000000
.long 0x00f30000
.long 0xf3000000
.long 0x00d20000
.long 0xd2000000
.long 0x00cd0000
.long 0xcd000000
.long 0x000c0000
.long 0x0c000000
.long 0x00130000
.long 0x13000000
.long 0x00ec0000
.long 0xec000000
.long 0x005f0000
.long 0x5f000000
.long 0x00970000
.long 0x97000000
.long 0x00440000
.long 0x44000000
.long 0x00170000
.long 0x17000000
.long 0x00c40000
.long 0xc4000000
.long 0x00a70000
.long 0xa7000000
.long 0x007e0000
.long 0x7e000000
.long 0x003d0000
.long 0x3d000000
.long 0x00640000
.long 0x64000000
.long 0x005d0000
.long 0x5d000000
.long 0x00190000
.long 0x19000000
.long 0x00730000
.long 0x73000000
.long 0x00600000
.long 0x60000000
.long 0x00810000
.long 0x81000000
.long 0x004f0000
.long 0x4f000000
.long 0x00dc0000
.long 0xdc000000
.long 0x00220000
.long 0x22000000
.long 0x002a0000
.long 0x2a000000
.long 0x00900000
.long 0x90000000
.long 0x00880000
.long 0x88000000
.long 0x00460000
.long 0x46000000
.long 0x00ee0000
.long 0xee000000
.long 0x00b80000
.long 0xb8000000
.long 0x00140000
.long 0x14000000
.long 0x00de0000
.long 0xde000000
.long 0x005e0000
.long 0x5e000000
.long 0x000b0000
.long 0x0b000000
.long 0x00db0000
.long 0xdb000000
.long 0x00e00000
.long 0xe0000000
.long 0x00320000
.long 0x32000000
.long 0x003a0000
.long 0x3a000000
.long 0x000a0000
.long 0x0a000000
.long 0x00490000
.long 0x49000000
.long 0x00060000
.long 0x06000000
.long 0x00240000
.long 0x24000000
.long 0x005c0000
.long 0x5c000000
.long 0x00c20000
.long 0xc2000000
.long 0x00d30000
.long 0xd3000000
.long 0x00ac0000
.long 0xac000000
.long 0x00620000
.long 0x62000000
.long 0x00910000
.long 0x91000000
.long 0x00950000
.long 0x95000000
.long 0x00e40000
.long 0xe4000000
.long 0x00790000
.long 0x79000000
.long 0x00e70000
.long 0xe7000000
.long 0x00c80000
.long 0xc8000000
.long 0x00370000
.long 0x37000000
.long 0x006d0000
.long 0x6d000000
.long 0x008d0000
.long 0x8d000000
.long 0x00d50000
.long 0xd5000000
.long 0x004e0000
.long 0x4e000000
.long 0x00a90000
.long 0xa9000000
.long 0x006c0000
.long 0x6c000000
.long 0x00560000
.long 0x56000000
.long 0x00f40000
.long 0xf4000000
.long 0x00ea0000
.long 0xea000000
.long 0x00650000
.long 0x65000000
.long 0x007a0000
.long 0x7a000000
.long 0x00ae0000
.long 0xae000000
.long 0x00080000
.long 0x08000000
.long 0x00ba0000
.long 0xba000000
.long 0x00780000
.long 0x78000000
.long 0x00250000
.long 0x25000000
.long 0x002e0000
.long 0x2e000000
.long 0x001c0000
.long 0x1c000000
.long 0x00a60000
.long 0xa6000000
.long 0x00b40000
.long 0xb4000000
.long 0x00c60000
.long 0xc6000000
.long 0x00e80000
.long 0xe8000000
.long 0x00dd0000
.long 0xdd000000
.long 0x00740000
.long 0x74000000
.long 0x001f0000
.long 0x1f000000
.long 0x004b0000
.long 0x4b000000
.long 0x00bd0000
.long 0xbd000000
.long 0x008b0000
.long 0x8b000000
.long 0x008a0000
.long 0x8a000000
.long 0x00700000
.long 0x70000000
.long 0x003e0000
.long 0x3e000000
.long 0x00b50000
.long 0xb5000000
.long 0x00660000
.long 0x66000000
.long 0x00480000
.long 0x48000000
.long 0x00030000
.long 0x03000000
.long 0x00f60000
.long 0xf6000000
.long 0x000e0000
.long 0x0e000000
.long 0x00610000
.long 0x61000000
.long 0x00350000
.long 0x35000000
.long 0x00570000
.long 0x57000000
.long 0x00b90000
.long 0xb9000000
.long 0x00860000
.long 0x86000000
.long 0x00c10000
.long 0xc1000000
.long 0x001d0000
.long 0x1d000000
.long 0x009e0000
.long 0x9e000000
.long 0x00e10000
.long 0xe1000000
.long 0x00f80000
.long 0xf8000000
.long 0x00980000
.long 0x98000000
.long 0x00110000
.long 0x11000000
.long 0x00690000
.long 0x69000000
.long 0x00d90000
.long 0xd9000000
.long 0x008e0000
.long 0x8e000000
.long 0x00940000
.long 0x94000000
.long 0x009b0000
.long 0x9b000000
.long 0x001e0000
.long 0x1e000000
.long 0x00870000
.long 0x87000000
.long 0x00e90000
.long 0xe9000000
.long 0x00ce0000
.long 0xce000000
.long 0x00550000
.long 0x55000000
.long 0x00280000
.long 0x28000000
.long 0x00df0000
.long 0xdf000000
.long 0x008c0000
.long 0x8c000000
.long 0x00a10000
.long 0xa1000000
.long 0x00890000
.long 0x89000000
.long 0x000d0000
.long 0x0d000000
.long 0x00bf0000
.long 0xbf000000
.long 0x00e60000
.long 0xe6000000
.long 0x00420000
.long 0x42000000
.long 0x00680000
.long 0x68000000
.long 0x00410000
.long 0x41000000
.long 0x00990000
.long 0x99000000
.long 0x002d0000
.long 0x2d000000
.long 0x000f0000
.long 0x0f000000
.long 0x00b00000
.long 0xb0000000
.long 0x00540000
.long 0x54000000
.long 0x00bb0000
.long 0xbb000000
.long 0x00160000
.long 0x16000000
