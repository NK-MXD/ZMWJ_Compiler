	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global enc
	.type enc , %function
enc:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L34:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #25
	movgt r0, #1
	movle r0, #0
	bgt .L36
	b .L41
.L36:
	ldr r0, [fp, #-4]
	add r0, r0, #60
	str r0, [fp, #-4]
	b .L38
.L37:
	ldr r0, [fp, #-4]
	sub r0, r0, #15
	str r0, [fp, #-4]
	b .L38
.L38:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L41:
	b .L37

	.global dec
	.type dec , %function
dec:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L42:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #85
	movgt r0, #1
	movle r0, #0
	bgt .L44
	b .L49
.L44:
	ldr r0, [fp, #-4]
	sub r0, r0, #59
	str r0, [fp, #-4]
	b .L46
.L45:
	ldr r0, [fp, #-4]
	add r0, r0, #14
	str r0, [fp, #-4]
	b .L46
.L46:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L49:
	b .L45

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L50:
	ldr r0, =400
	bl enc
	bl dec
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
