	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global enc
	.type enc , %function
enc:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L34:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #25
	movgt r4, #1
	movle r4, #0
	bgt .L36
	b .L41
.L36:
	ldr r4, [fp, #-4]
	add r5, r4, #60
	str r5, [fp, #-4]
	b .L38
.L37:
	ldr r4, [fp, #-4]
	sub r5, r4, #15
	str r5, [fp, #-4]
	b .L38
.L38:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L41:
	b .L37

	.global dec
	.type dec , %function
dec:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L42:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #85
	movgt r4, #1
	movle r4, #0
	bgt .L44
	b .L49
.L44:
	ldr r4, [fp, #-4]
	sub r5, r4, #59
	str r5, [fp, #-4]
	b .L46
.L45:
	ldr r4, [fp, #-4]
	add r5, r4, #14
	str r5, [fp, #-4]
	b .L46
.L46:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L49:
	b .L45

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L50:
	ldr r4, =400
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl enc
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl dec
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putch
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
