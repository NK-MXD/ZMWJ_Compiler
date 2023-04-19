	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.text
	.global set_a
	.type set_a , %function
set_a:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L57:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_a0
	str r1, [r0]
	ldr r0, addr_a0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global set_b
	.type set_b , %function
set_b:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L59:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_b0
	str r1, [r0]
	ldr r0, addr_b0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global set_d
	.type set_d , %function
set_d:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L61:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_d0
	str r1, [r0]
	ldr r0, addr_d0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L63:
	ldr r1, =2
	ldr r0, addr_a0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_b0
	str r1, [r0]
	mov r0, #0
	bl set_a
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L66
	b .L68
.L64:
	b .L65
.L65:
	ldr r0, addr_a0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_b0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r1, =2
	ldr r0, addr_a0
	str r1, [r0]
	ldr r1, =3
	ldr r0, addr_b0
	str r1, [r0]
	mov r0, #0
	bl set_a
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L75
	b .L77
.L66:
	mov r0, #1
	bl set_b
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L64
	b .L71
.L68:
	b .L65
.L71:
	b .L65
.L73:
	b .L74
.L74:
	ldr r0, addr_a0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_b0
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	ldr r1, =2
	ldr r0, addr_d0
	str r1, [r0]
	b .L85
.L75:
	mov r0, #1
	bl set_b
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L73
	b .L80
.L77:
	b .L74
.L80:
	b .L74
.L83:
	b .L84
.L84:
	ldr r0, addr_d0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	mov r0, #3
	bl set_d
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L91
	b .L93
.L85:
	mov r0, #3
	bl set_d
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L83
	b .L87
.L87:
	b .L84
.L89:
	ldr r1, =2
	ldr r0, addr_d0
	str r1, [r0]
	b .L90
.L90:
	mov r0, #3
	bl set_d
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L98
	b .L103
	b .F0
.LTORG
addr_a0:
	.word a
addr_b0:
	.word b
addr_d0:
	.word d
.F0:
.L91:
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L89
	b .L96
.L93:
	b .L90
.L96:
	b .L90
.L98:
	ldr r1, =4
	ldr r0, addr_d1
	str r1, [r0]
	b .L99
.L99:
	ldr r0, addr_d1
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L100:
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L98
	b .L106
.L103:
	b .L100
.L106:
	b .L99

addr_a1:
	.word a
addr_b1:
	.word b
addr_d1:
	.word d
	.ident "ZWJM"
