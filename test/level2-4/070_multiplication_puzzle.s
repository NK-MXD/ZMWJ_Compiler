	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 24
a:
	.word 10
	.word 1
	.word 50
	.word 50
	.word 20
	.word 5
	.comm dp, 400, 4
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L75:
	ldr r4, =6
	str r4, [fp, #-4]
	ldr r4, =3
	str r4, [fp, #-8]
	b .L82
.L82:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L83
	b .L87
.L83:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L88
.L84:
	mov r4, #0
	ldr r5, addr_dp0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-4]
	sub r6, r4, #1
	mov r4, #4
	mul r7, r6, r4
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L87:
	b .L84
.L88:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	sub r7, r5, r6
	add r5, r7, #1
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L89
	b .L93
.L89:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	sub r4, r6, #1
	str r4, [fp, #-20]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L94
.L90:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L83
	b .L142
.L93:
	b .L90
.L94:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L95
	b .L99
.L95:
	ldr r4, [fp, #-12]
	ldr r5, addr_dp0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, addr_dp0
	mov r7, #40
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-20]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [r4]
	add r4, r5, r6
	ldr r5, [fp, #-12]
	ldr r6, addr_a0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [r6]
	ldr r6, [fp, #-16]
	ldr r7, addr_a0
	mov r8, #4
	mul r9, r6, r8
	add r6, r7, r9
	mov r7, r6
	ldr r6, [r7]
	mul r7, r5, r6
	ldr r5, [fp, #-20]
	ldr r6, addr_a0
	mov r8, #4
	mul r9, r5, r8
	add r5, r6, r9
	mov r6, r5
	ldr r5, [r6]
	mul r6, r7, r5
	add r5, r4, r6
	str r5, [fp, #-24]
	ldr r4, [fp, #-12]
	ldr r5, addr_dp0
	mov r6, #40
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-20]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L107
	b .L114
.L96:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	sub r7, r5, r6
	add r5, r7, #1
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L89
	b .L136
.L99:
	b .L96
.L107:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-12]
	ldr r6, addr_dp0
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-20]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	b .L108
	b .F0
.LTORG
addr_a0:
	.word a
addr_dp0:
	.word dp
.F0:
.L108:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L95
	b .L127
.L109:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-12]
	ldr r6, addr_dp1
	mov r7, #40
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-20]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L107
	b .L120
.L114:
	b .L109
.L120:
	b .L108
.L127:
	b .L96
.L136:
	b .L90
.L142:
	b .L84

addr_a1:
	.word a
addr_dp1:
	.word dp
