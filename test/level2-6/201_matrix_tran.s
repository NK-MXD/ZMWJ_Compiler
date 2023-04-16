	.arch armv8-a
	.arch_extension crc
	.arm
	.data
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
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global tran
	.type tran , %function
tran:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L138:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #32]
	str r3, [fp, #-20]
	ldr r3, [fp, #36]
	str r3, [fp, #-24]
	ldr r3, [fp, #40]
	str r3, [fp, #-28]
	ldr r3, [fp, #44]
	str r3, [fp, #-32]
	ldr r3, [fp, #48]
	str r3, [fp, #-36]
	ldr r5, [fp, #-12]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r5
	vldr.32 s1, [r0]
	ldr r4, [fp, #-32]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r4
	vstr.32 s1, [r0]
	ldr r3, [fp, #-8]
	mov r1, #2
	mov r0, #4
	mla r0, r1, r0, r3
	vldr.32 s1, [r0]
	ldr r2, [fp, #-36]
	mov r1, #1
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r3
	vldr.32 s1, [r0]
	ldr r1, [fp, #-28]
	mov r6, #1
	mov r0, #4
	mla r0, r6, r0, r1
	vstr.32 s1, [r0]
	mov r6, #0
	mov r0, #4
	mla r0, r6, r0, r5
	vldr.32 s1, [r0]
	mov r6, #2
	mov r0, #4
	mla r0, r6, r0, r1
	vstr.32 s1, [r0]
	ldr r0, [fp, #-4]
	mov r7, #1
	mov r6, #4
	mla r6, r7, r6, r0
	vldr.32 s1, [r6]
	mov r7, #0
	mov r6, #4
	mla r6, r7, r6, r4
	vstr.32 s1, [r6]
	mov r7, #2
	mov r6, #4
	mla r6, r7, r6, r0
	vldr.32 s1, [r6]
	mov r7, #0
	mov r6, #4
	mla r6, r7, r6, r2
	vstr.32 s1, [r6]
	mov r7, #1
	mov r6, #4
	mla r3, r7, r6, r3
	vldr.32 s1, [r3]
	mov r6, #1
	mov r3, #4
	mla r3, r6, r3, r4
	vstr.32 s1, [r3]
	mov r4, #2
	mov r3, #4
	mla r3, r4, r3, r5
	vldr.32 s1, [r3]
	mov r4, #2
	mov r3, #4
	mla r2, r4, r3, r2
	vstr.32 s1, [r2]
	mov r3, #0
	mov r2, #4
	mla r0, r3, r2, r0
	vldr.32 s1, [r0]
	mov r2, #0
	mov r0, #4
	mla r0, r2, r0, r1
	vstr.32 s1, [r0]
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #128
.L176:
	ldr r1, =3
	ldr r0, addr_N0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_M0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_L0
	str r1, [r0]
	b .L187
.L187:
	ldr r0, addr_M0
	ldr r2, [r0]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L188
	b .L192
.L188:
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
	ldr r0, addr_M0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L283
	b .L198
.L189:
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
	bl tran
	add sp, sp, #20
	mov r2, r0
	b .L200
.L192:
	ldr r0, =0
	b .L189
.L198:
	b .L189
.L200:
	ldr r0, addr_N0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L201
	b .L205
.L201:
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
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L287
	b .L212
	b .F0
.LTORG
addr_M0:
	.word M
addr_L0:
	.word L
addr_N0:
	.word N
.F0:
.L202:
	mov r0, #10
	bl putch
	b .L213
.L205:
	ldr r0, =0
	b .L202
.L212:
	b .L202
.L213:
	ldr r0, addr_N1
	ldr r1, [r0]
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L214
	b .L218
.L214:
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
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L292
	b .L225
.L215:
	mov r0, #10
	bl putch
	b .L226
.L218:
	ldr r0, =10
	ldr r0, =0
	b .L215
.L225:
	b .L215
.L226:
	ldr r0, addr_N1
	ldr r1, [r0]
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
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
	ldr r0, addr_N1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L297
	b .L238
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
.L238:
	b .L228
.L283:
	mov r0, r1
	b .L188
.L287:
	mov r4, r1
	b .L201
.L292:
	mov r4, r1
	b .L214
.L297:
	mov r4, r1
	b .L227

addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
	.ident "ZWJM"
