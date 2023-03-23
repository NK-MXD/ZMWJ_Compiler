	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global fun
	.type fun , %function
fun:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L28:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L32
.L32:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L33
	b .L37
.L33:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	str r5, [fp, #-12]
	ldr r4, [fp, #-8]
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L33
	b .L42
.L34:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L37:
	b .L34
.L42:
	b .L34

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L43:
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r0, r4
	mov r1, r5
	bl fun
	mov r4, r0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	mov r0, r4
	bl putint
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
