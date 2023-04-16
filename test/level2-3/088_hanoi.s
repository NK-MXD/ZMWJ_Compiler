	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global move
	.type move , %function
move:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L38:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, [fp, #-4]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, [fp, #-8]
	bl putint
	mov r0, #44
	bl putch
	mov r0, #32
	bl putch
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global hanoi
	.type hanoi , %function
hanoi:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L41:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r0, [fp, #-4]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L46
	b .L51
.L46:
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-16]
	bl move
	b .L48
.L47:
	ldr r0, [fp, #-4]
	sub r4, r0, #1
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-16]
	ldr r3, [fp, #-12]
	mov r0, r4
	bl hanoi
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-16]
	bl move
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r2, [fp, #-8]
	ldr r3, [fp, #-16]
	mov r0, r4
	bl hanoi
	b .L48
.L48:
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L51:
	b .L47

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L52:
	bl getint
	b .L54
.L54:
	mov r4, r0
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L55
	b .L59
.L55:
	bl getint
	mov r1, #1
	mov r2, #2
	mov r3, #3
	bl hanoi
	mov r0, #10
	bl putch
	sub r1, r4, #1
	cmp r1, #0
	movgt r0, #1
	movle r0, #0
	bgt .L72
	b .L64
.L56:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L59:
	b .L56
.L64:
	b .L56
.L72:
	mov r4, r1
	b .L55

	.ident "ZWJM"
