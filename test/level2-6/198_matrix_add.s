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
	.global add
	.type add , %function
add:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L147:
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
	b .L158
.L158:
	ldr r0, addr_M0
	ldr r2, [r0]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L159
	b .L163
.L159:
	ldr r2, [fp, #-4]
	mov r1, #4
	mla r1, r0, r1, r2
	vldr.32 s2, [r1]
	ldr r2, [fp, #-16]
	mov r1, #4
	mla r1, r0, r1, r2
	vldr.32 s1, [r1]
	vadd.f32 s1, s2, s1
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
	vadd.f32 s1, s2, s1
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
	vadd.f32 s1, s2, s1
	ldr r2, [fp, #-36]
	mov r1, #4
	mla r1, r0, r1, r2
	vstr.32 s1, [r1]
	add r1, r0, #1
	ldr r0, addr_M0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L297
	b .L184
.L160:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L163:
	ldr r0, =0
	b .L160
.L184:
	b .L160
.L297:
	mov r0, r1
	b .L159

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #128
.L185:
	ldr r1, =3
	ldr r0, addr_N0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_M0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_L0
	str r1, [r0]
	b .L196
.L196:
	ldr r0, addr_M0
	ldr r2, [r0]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L197
	b .L201
.L197:
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
	blt .L300
	b .L207
.L198:
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
	bl add
	add sp, sp, #20
	mov r2, r0
	b .L209
.L201:
	ldr r0, =0
	b .L198
.L207:
	b .L198
.L209:
	ldr r0, addr_N0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L210
	b .L214
.L210:
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
	blt .L304
	b .L221
	b .F0
.LTORG
addr_M0:
	.word M
addr_L0:
	.word L
addr_N0:
	.word N
.F0:
.L211:
	mov r0, #10
	bl putch
	b .L222
.L214:
	ldr r0, =0
	b .L211
.L221:
	b .L211
.L222:
	ldr r0, addr_N1
	ldr r1, [r0]
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L223
	b .L227
.L223:
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
	blt .L309
	b .L234
.L224:
	mov r0, #10
	bl putch
	b .L235
.L227:
	ldr r0, =10
	ldr r0, =0
	b .L224
.L234:
	b .L224
.L235:
	ldr r0, addr_N1
	ldr r1, [r0]
	ldr r0, =10
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L236
	b .L240
.L236:
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
	blt .L314
	b .L247
.L237:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #128
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L240:
	ldr r0, =10
	ldr r0, =0
	b .L237
.L247:
	b .L237
.L300:
	mov r0, r1
	b .L197
.L304:
	mov r4, r1
	b .L210
.L309:
	mov r4, r1
	b .L223
.L314:
	mov r4, r1
	b .L236

addr_M1:
	.word M
addr_L1:
	.word L
addr_N1:
	.word N
	.ident "ZWJM"
