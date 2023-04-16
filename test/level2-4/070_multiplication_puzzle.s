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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
.L75:
	b .L82
.L82:
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	ldr r1, =0
	ldr r1, =3
	mov r7, r1
	ldr r1, =3
	cmp r1, #6
	movle r1, #1
	movgt r1, #0
	ble .L83
	b .L87
.L83:
	b .L88
.L84:
	mov r2, #0
	ldr r1, addr_dp0
	mov r0, #40
	mla r2, r2, r0, r1
	ldr r0, =6
	sub r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	bl putint
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L87:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =3
	b .L84
.L88:
	ldr r1, =6
	sub r1, r1, r7
	add r6, r1, #1
	mov r3, r2
	mov r1, r4
	mov r1, r0
	ldr r1, =0
	ldr r5, =0
	cmp r5, r6
	movlt r5, #1
	movge r5, #0
	blt .L89
	b .L93
.L89:
	add r0, r1, r7
	sub r0, r0, #1
	add r4, r1, #1
	b .L94
.L90:
	add r3, r7, #1
	mov r4, r1
	mov r7, r3
	cmp r3, #6
	movle r1, #1
	movgt r1, #0
	ble .L83
	b .L142
.L93:
	mov r1, r4
	ldr r3, =0
	b .L90
.L94:
	mov r2, r3
	mov r2, r4
	cmp r4, r0
	movlt r5, #1
	movge r5, #0
	blt .L95
	b .L99
.L95:
	ldr r4, addr_dp0
	mov r3, #40
	mla r4, r1, r3, r4
	mov r3, #4
	mla r3, r2, r3, r4
	ldr r4, [r3]
	ldr r3, addr_dp0
	mov r5, #40
	mla r3, r2, r5, r3
	mov r5, #4
	mla r3, r0, r5, r3
	ldr r3, [r3]
	add r6, r4, r3
	ldr r3, addr_a0
	mov r4, #4
	mla r3, r1, r4, r3
	ldr r5, [r3]
	ldr r4, addr_a0
	mov r3, #4
	mla r3, r2, r3, r4
	ldr r3, [r3]
	mul r5, r5, r3
	ldr r4, addr_a0
	mov r3, #4
	mla r3, r0, r3, r4
	ldr r3, [r3]
	mla r3, r5, r3, r6
	ldr r4, addr_dp0
	mov r5, #40
	mla r4, r1, r5, r4
	mov r5, #4
	mla r4, r0, r5, r4
	ldr r4, [r4]
	cmp r4, #0
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
	add r2, r1, #1
	ldr r1, =6
	sub r1, r1, r7
	add r4, r1, #1
	mov r3, r6
	mov r1, r0
	mov r1, r5
	mov r1, r2
	cmp r2, r4
	movlt r2, #1
	movge r2, #0
	blt .L89
	b .L136
.L99:
	mov r6, r3
	mov r5, r4
	b .L96
.L107:
	ldr r4, addr_dp0
	mov r5, #40
	mla r4, r1, r5, r4
	mov r5, #4
	mla r4, r0, r5, r4
	str r3, [r4]
	b .L108
.L108:
	add r4, r2, #1
	mov r2, r3
	mov r2, r4
	cmp r4, r0
	movlt r5, #1
	movge r5, #0
	blt .L95
	b .L127
.L109:
	ldr r4, addr_dp0
	mov r5, #40
	mla r4, r1, r5, r4
	mov r5, #4
	mla r4, r0, r5, r4
	ldr r4, [r4]
	cmp r3, r4
	movlt r4, #1
	movge r4, #0
	blt .L107
	b .L120
.L114:
	b .L109
.L120:
	b .L108
.L127:
	mov r6, r3
	mov r5, r4
	b .L96
.L136:
	mov r2, r6
	mov r1, r0
	mov r0, r5
	b .L90
	b .F0
.LTORG
addr_a0:
	.word a
addr_dp0:
	.word dp
.F0:
.L142:
	b .L84

addr_a1:
	.word a
addr_dp1:
	.word dp
	.ident "ZWJM"
