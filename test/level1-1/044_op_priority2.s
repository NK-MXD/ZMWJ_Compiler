	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L15:
	ldr r0, =10
	str r0, [fp, #-4]
	ldr r0, =4
	str r0, [fp, #-8]
	ldr r0, =2
	str r0, [fp, #-12]
	ldr r0, =2
	str r0, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	add r2, r1, r0
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	sub r0, r1, r0
	mul r0, r2, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
