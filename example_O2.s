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
.L47:
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
.L49:
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
.L51:
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
.L53:
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
	bne .L56
	b .L58
.L54:
	b .L55
.L55:
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
	bne .L65
	b .L67
.L56:
	mov r0, #1
	bl set_b
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L54
	b .L61
.L58:
	b .L55
.L61:
	b .L55
.L63:
	b .L64
.L64:
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
	bne .L73
	b .L77
.L65:
	mov r0, #1
	bl set_b
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L63
	b .L70
.L67:
	b .L64
.L70:
	b .L64
.L73:
	b .L74
.L74:
	ldr r0, addr_d0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	b .L81
.L77:
	b .L74
.L79:
	b .L80
.L80:
	ldr r0, addr_d0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L81:
	mov r0, #3
	bl set_d
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L79
	b .L83
	b .F0
.LTORG
addr_a0:
	.word a
addr_b0:
	.word b
addr_d0:
	.word d
.F0:
.L83:
	b .L80

addr_a1:
	.word a
addr_b1:
	.word b
addr_d1:
	.word d
	.ident "ZWJM"
