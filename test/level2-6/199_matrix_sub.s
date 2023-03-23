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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #40
.L142:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #48]
	str r3, [fp, #-20]
	ldr r3, [fp, #52]
	str r3, [fp, #-24]
	ldr r3, [fp, #56]
	str r3, [fp, #-28]
	ldr r3, [fp, #60]
	str r3, [fp, #-32]
	ldr r3, [fp, #64]
	str r3, [fp, #-36]
	ldr r4, =0
	str r4, [fp, #-40]
	b .L153
.L153:
	ldr r4, [fp, #-40]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L154
	b .L158
.L154:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vsub.f32 s7, s5, s6
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s7, [r5]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vsub.f32 s7, s5, s6
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s7, [r5]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vsub.f32 s7, s5, s6
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s7, [r5]
	ldr r4, [fp, #-40]
	add r5, r4, #1
	str r5, [fp, #-40]
	ldr r4, [fp, #-40]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L154
	b .L178
.L155:
	mov r0, #0
	add sp, sp, #40
	vpop {s4, s5, s6, s7}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L158:
	b .L155
.L178:
	b .L155

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #152
.L179:
	ldr r4, =3
	ldr r5, addr_N0
	str r4, [r5]
	ldr r4, =3
	ldr r5, addr_M0
	str r4, [r5]
	ldr r4, =3
	ldr r5, addr_L0
	str r4, [r5]
	ldr r4, =0
	str r4, [fp, #-124]
	b .L190
.L190:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L191
	b .L195
.L191:
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-12
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-24
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-36
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-60
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-124]
	mov r5, #-72
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L191
	b .L200
.L192:
	mov r4, #0
	mov r5, #-12
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #-24
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r4, #0
	mov r7, #-36
	mov r8, #4
	mul r9, r4, r8
	add r4, fp, r7
	add r7, r4, r9
	mov r4, #0
	mov r8, #-48
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-132]
	mov r4, #0
	mov r8, #-60
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-136]
	mov r4, #0
	mov r8, #-72
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-140]
	mov r4, #0
	mov r8, #-96
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-144]
	mov r4, #0
	mov r8, #-108
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	str r8, [fp, #-148]
	mov r4, #0
	mov r8, #-120
	mov r9, #4
	mul r10, r4, r9
	add r4, fp, r8
	add r8, r4, r10
	mov r0, r5
	mov r1, r6
	mov r2, r7
	ldr r4, [fp, #-132]
	mov r3, r4
	push {r8}
	ldr r4, [fp, #-148]
	push {r4}
	ldr r4, [fp, #-144]
	push {r4}
	ldr r4, [fp, #-140]
	push {r4}
	ldr r4, [fp, #-136]
	push {r4}
	bl sub
	add sp, sp, #20
	mov r4, r0
	str r4, [fp, #-124]
	b .L202
	b .F0
.LTORG
addr_N0:
	.word N
addr_M0:
	.word M
addr_L0:
	.word L
.F0:
.L195:
	b .L192
.L200:
	b .L192
.L202:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L203
	b .L207
.L203:
	ldr r4, [fp, #-124]
	mov r5, #-96
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L203
	b .L213
.L204:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, =0
	str r4, [fp, #-124]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	b .L214
.L207:
	b .L204
.L213:
	b .L204
.L214:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L215
	b .L219
.L215:
	ldr r4, [fp, #-124]
	mov r5, #-108
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L215
	b .L225
.L216:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, =0
	str r4, [fp, #-124]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	b .L226
.L219:
	b .L216
.L225:
	b .L216
.L226:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L227
	b .L231
.L227:
	ldr r4, [fp, #-124]
	mov r5, #-120
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L227
	b .L237
.L228:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #152
	vpop {s4, s5, s6, s7}
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L231:
	b .L228
.L237:
	b .L228

addr_N1:
	.word N
addr_M1:
	.word M
addr_L1:
	.word L
	.ident "ZWJM"
