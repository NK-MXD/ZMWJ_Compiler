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
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L133:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #28]
	str r3, [fp, #-20]
	ldr r3, [fp, #32]
	str r3, [fp, #-24]
	ldr r3, [fp, #36]
	str r3, [fp, #-28]
	ldr r3, [fp, #40]
	str r3, [fp, #-32]
	ldr r3, [fp, #44]
	str r3, [fp, #-36]
	ldr r4, =0
	str r4, [fp, #-40]
	b .L144
.L144:
	ldr r4, [fp, #-40]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L145
	b .L149
.L145:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-40]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	sub r6, r4, r5
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-40]
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	str r6, [r5]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-20]
	ldr r6, [fp, #-40]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	sub r6, r4, r5
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-40]
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	str r6, [r5]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-40]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-40]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	sub r6, r4, r5
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-40]
	mov r7, #4
	mul r8, r5, r7
	add r5, r4, r8
	str r6, [r5]
	ldr r4, [fp, #-40]
	add r5, r4, #1
	str r5, [fp, #-40]
	ldr r4, [fp, #-40]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L145
	b .L169
.L146:
	mov r0, #0
	add sp, sp, #40
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L149:
	b .L146
.L169:
	b .L146

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #148
.L170:
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
	b .L181
.L181:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L182
	b .L186
.L182:
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-12
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-24
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-36
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-48
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-60
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	ldr r5, [fp, #-124]
	mov r6, #-72
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-124]
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L182
	b .L191
.L183:
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
	b .L193
.L186:
	b .L183
.L191:
	b .L183
.L193:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L194
	b .L198
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
	ldr r4, [fp, #-124]
	mov r5, #-96
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
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
	blt .L194
	b .L204
.L195:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, =0
	str r4, [fp, #-124]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	b .L205
.L198:
	b .L195
.L204:
	b .L195
.L205:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L206
	b .L210
.L206:
	ldr r4, [fp, #-124]
	mov r5, #-108
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
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
	blt .L206
	b .L216
.L207:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, =0
	str r4, [fp, #-124]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	b .L217
.L210:
	b .L207
.L216:
	b .L207
.L217:
	ldr r4, [fp, #-124]
	cmp r4, #3
	movlt r4, #1
	movge r4, #0
	blt .L218
	b .L222
.L218:
	ldr r4, [fp, #-124]
	mov r5, #-120
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
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
	blt .L218
	b .L228
.L219:
	ldr r4, =10
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #148
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L222:
	b .L219
.L228:
	b .L219

addr_N1:
	.word N
addr_M1:
	.word M
addr_L1:
	.word L
