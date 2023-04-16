	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.global M
	.align 4
	.size M, 4
M:
	.word 0
	.global L
	.align 4
	.size L, 4
L:
	.word 0
	.text
	.global sub
	.type sub , %function
sub:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L142:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r3, [fp, #32]
	str r3, [fp, #-36]
	b .L153
.L153:
	ldr r0, =0
	ldr r1, =0
	cmp r1, #3
	movlt r1, #1
	movge r1, #0
	blt .L154
	b .L158
.L154:
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r0, r1, r2
	vldr.32 s2, [r1]
	ldr r2, [fp, #-16]
	mov r1, #4
	mla r1, r0, r1, r2
	vldr.32 s1, [r1]
	vsub.f32 s1, s2, s1
	ldr r2, [fp, #-28]
	mov r1, #4
	mla r1, r0, r1, r2
	vstr.32 s1, [r1]
	ldr r2, [fp, #-8]
	mov r1, #4
	mla r1, r0, r1, r2
	vldr.32 s2, [r1]
	ldr r2, [fp, #-20]
	mov r1, #4
	mla r1, r0, r1, r2
	vldr.32 s1, [r1]
	vsub.f32 s1, s2, s1
	ldr r2, [fp, #-32]
	mov r1, #4
	mla r1, r0, r1, r2
	vstr.32 s1, [r1]
	ldr r2, [fp, #-12]
	mov r1, #4
	mla r1, r0, r1, r2
	vldr.32 s2, [r1]
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r0, r1, r2
	vldr.32 s1, [r1]
	vsub.f32 s1, s2, s1
	ldr r2, [fp, #-36]
	mov r1, #4
	mla r1, r0, r1, r2
	vstr.32 s1, [r1]
	add r1, r0, #1
	cmp r1, #3
	movlt r0, #1
	movge r0, #0
	blt .L287
	b .L178
.L155:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L158:
	ldr r0, =0
	b .L155
.L178:
	b .L155
.L287:
	mov r0, r1
	b .L154

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #128
.L179:
	ldr r1, =3
	ldr r0, addr_N0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_M0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_L0
	str r1, [r0]
	b .L190
.L190:
	ldr r0, =0
	ldr r1, =0
	cmp r1, #3
	movlt r1, #1
	movge r1, #0
	blt .L191
	b .L195
.L191:
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	mov r3, #-12
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-24
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-36
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-48
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-60
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	mov r3, #-72
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	vstr.32 s4, [r1]
	add r1, r0, #1
	cmp r1, #3
	movlt r0, #1
	movge r0, #0
	blt .L290
	b .L200
.L192:
	mov r1, #0
	mov r2, #-12
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r3, r0, r1
	mov r1, #0
	mov r2, #-24
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r9, r0, r1
	mov r1, #0
	mov r2, #-36
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r10, r0, r1
	mov r1, #0
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r0, [fp, #-124]
	mov r1, #0
	mov r2, #-60
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r8, r0, r1
	mov r1, #0
	mov r2, #-72
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r7, r0, r1
	mov r2, #0
	mov r1, #-96
	mov r0, #4
	mul r0, r2, r0
	add r1, fp, r1
	add r6, r1, r0
	mov r1, #0
	mov r2, #-108
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r5, r0, r1
	mov r1, #0
	mov r2, #-120
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r3
	mov r1, r9
	mov r2, r10
	ldr r3, [fp, #-124]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	bl sub
	add sp, sp, #20
	mov r1, r0
	b .L202
.L195:
	ldr r0, =0
	b .L192
.L200:
	b .L192
.L202:
	ldr r0, =0
	mov r4, r1
	cmp r1, #3
	movlt r0, #1
	movge r0, #0
	blt .L203
	b .L207
.L203:
	mov r2, #-96
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl putint
	add r1, r4, #1
	cmp r1, #3
	movlt r0, #1
	movge r0, #0
	blt .L294
	b .L213
.L204:
	mov r0, #10
	bl putch
	b .L214
.L207:
	ldr r0, =0
	b .L204
.L213:
	b .L204
.L214:
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L215
	b .L219
	b .F0
.LTORG
addr_N0:
	.word N
addr_M0:
	.word M
addr_L0:
	.word L
.F0:
.L215:
	mov r2, #-108
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl putint
	add r1, r4, #1
	cmp r1, #3
	movlt r0, #1
	movge r0, #0
	blt .L299
	b .L225
.L216:
	mov r0, #10
	bl putch
	b .L226
.L219:
	ldr r0, =10
	ldr r0, =0
	b .L216
.L225:
	b .L216
.L226:
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L227
	b .L231
.L227:
	mov r2, #-120
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl putint
	add r1, r4, #1
	cmp r1, #3
	movlt r0, #1
	movge r0, #0
	blt .L304
	b .L237
.L228:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #128
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L231:
	ldr r0, =10
	ldr r0, =0
	b .L228
.L237:
	b .L228
.L290:
	mov r0, r1
	b .L191
.L294:
	mov r4, r1
	b .L203
.L299:
	mov r4, r1
	b .L215
.L304:
	mov r4, r1
	b .L227

addr_N1:
	.word N
addr_M1:
	.word M
addr_L1:
	.word L
	.ident "ZWJM"
