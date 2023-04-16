	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global fun
	.type fun , %function
fun:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L28:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L32
.L32:
	ldr r1, [fp, #-8]
	ldr r0, =0
	cmp r1, #0
	movgt r0, #1
	movle r0, #0
	bgt .L33
	b .L37
.L33:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r0, [fp, #-8]
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r0, r1
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L56
	b .L42
.L34:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L37:
	ldr r0, =0
	b .L34
.L42:
	b .L34
.L56:
	b .L33

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L43:
	bl getint
	mov r4, r0
	bl getint
	mov r1, r0
	mov r0, r4
	bl fun
	bl putint
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
