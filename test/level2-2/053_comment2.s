	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L5:
	ldr r0, =10
	str r0, [fp, #-4]
	ldr r0, =2
	str r0, [fp, #-8]
	mov r0, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"