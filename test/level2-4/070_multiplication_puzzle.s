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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L75:
	ldr r0, =6
	str r0, [fp, #-4]
	ldr r0, =3
	str r0, [fp, #-8]
	b .L82
.L82:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L83
	b .L87
.L83:
	ldr r0, =0
	str r0, [fp, #-12]
	b .L88
.L84:
	mov r2, #0
	ldr r1, addr_dp0
	mov r0, #40
	mla r2, r2, r0, r1
	ldr r0, [fp, #-4]
	sub r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	bl putint
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L87:
	b .L84
.L88:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L89
	b .L93
.L89:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	sub r0, r0, #1
	str r0, [fp, #-20]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L94
.L90:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r1, r0
	ldr r0, [fp, #-4]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L83
	b .L142
.L93:
	b .L90
.L94:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L95
	b .L99
.L95:
	ldr r2, [fp, #-12]
	ldr r1, addr_dp0
	mov r0, #40
	mla r2, r2, r0, r1
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	ldr r3, [fp, #-16]
	ldr r2, addr_dp0
	mov r1, #40
	mla r3, r3, r1, r2
	ldr r2, [fp, #-20]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	add r1, r0, r1
	ldr r3, [fp, #-12]
	ldr r2, addr_a0
	mov r0, #4
	mla r0, r3, r0, r2
	ldr r0, [r0]
	ldr r4, [fp, #-16]
	ldr r3, addr_a0
	mov r2, #4
	mla r2, r4, r2, r3
	ldr r2, [r2]
	mul r0, r0, r2
	ldr r4, [fp, #-20]
	ldr r3, addr_a0
	mov r2, #4
	mla r2, r4, r2, r3
	ldr r2, [r2]
	mla r0, r0, r2, r1
	str r0, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_dp0
	mov r0, #40
	mla r2, r2, r0, r1
	ldr r1, [fp, #-20]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L107
	b .L114
.L96:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	mov r2, r0
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L89
	b .L136
.L99:
	b .L96
.L107:
	ldr r0, [fp, #-24]
	ldr r3, [fp, #-12]
	ldr r2, addr_dp0
	mov r1, #40
	mla r3, r3, r1, r2
	ldr r2, [fp, #-20]
	mov r1, #4
	mla r1, r2, r1, r3
	str r0, [r1]
	b .L108
.L108:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	mov r1, r0
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L95
	b .L127
.L109:
	ldr r0, [fp, #-24]
	ldr r3, [fp, #-12]
	ldr r2, addr_dp0
	mov r1, #40
	mla r3, r3, r1, r2
	ldr r2, [fp, #-20]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L107
	b .L120
	b .F0
.LTORG
addr_a0:
	.word a
addr_dp0:
	.word dp
.F0:
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
	.ident "ZWJM"
