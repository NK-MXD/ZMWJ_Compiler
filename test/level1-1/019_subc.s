	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L4:
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	sub r5, r4, #2
	mov r0, r5
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
