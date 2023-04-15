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
	ldr r0, =0
	str r0, [fp, #-40]
	b .L153
.L153:
	ldr r0, [fp, #-40]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L154
	b .L158
.L154:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vsub.f32 s1, s2, s1
	ldr r2, [fp, #-28]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-20]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vsub.f32 s1, s2, s1
	ldr r2, [fp, #-32]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s2, [r0]
	ldr r2, [fp, #-24]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s1, [r0]
	vsub.f32 s1, s2, s1
	ldr r2, [fp, #-36]
	ldr r1, [fp, #-40]
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s1, [r0]
	ldr r0, [fp, #-40]
	add r0, r0, #1
	str r0, [fp, #-40]
	b .L153
.L155:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L158:
	b .L155

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #136
.L174:
	ldr r1, =3
	ldr r0, addr_N0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_M0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_L0
	str r1, [r0]
	ldr r0, =0
	str r0, [fp, #-124]
	b .L185
.L185:
	ldr r0, [fp, #-124]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L186
	b .L190
.L186:
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-12
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-24
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-36
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-60
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	ldr r1, [fp, #-124]
	mov r2, #-72
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s4, [r0]
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L185
.L187:
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
	str r0, [fp, #-132]
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
	ldr r3, [fp, #-132]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	bl sub
	add sp, sp, #20
	str r0, [fp, #-124]
	b .L192
.L190:
	b .L187
.L192:
	ldr r0, [fp, #-124]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L193
	b .L197
.L193:
	ldr r1, [fp, #-124]
	mov r2, #-96
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L192
	b .F0
.LTORG
addr_N0:
	.word N
addr_M0:
	.word M
addr_L0:
	.word L
.F0:
.L194:
	ldr r0, =10
	str r0, [fp, #-128]
	ldr r0, =0
	str r0, [fp, #-124]
	ldr r0, [fp, #-128]
	bl putch
	b .L199
.L197:
	b .L194
.L199:
	ldr r0, [fp, #-124]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L200
	b .L204
.L200:
	ldr r1, [fp, #-124]
	mov r2, #-108
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L199
.L201:
	ldr r0, =10
	str r0, [fp, #-128]
	ldr r0, =0
	str r0, [fp, #-124]
	ldr r0, [fp, #-128]
	bl putch
	b .L206
.L204:
	b .L201
.L206:
	ldr r0, [fp, #-124]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L207
	b .L211
.L207:
	ldr r1, [fp, #-124]
	mov r2, #-120
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	str r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-124]
	b .L206
.L208:
	ldr r0, =10
	str r0, [fp, #-128]
	mov r0, r0
	bl putch
	mov r0, #0
	add sp, sp, #136
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L211:
	b .L208

addr_N1:
	.word N
addr_M1:
	.word M
addr_L1:
	.word L
	.ident "ZWJM"
