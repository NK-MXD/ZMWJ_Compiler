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
.L4:
	ldr r0, =10
	str r0, [fp, #-4]
	mov r0, r0
	add r0, r0, r0
	add r0, r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
