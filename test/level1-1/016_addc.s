	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global a
	.align 4
	.size a, 4
a:
	.word 10
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L3:
	ldr r4, addr_a0
	ldr r5, [r4]
	add r4, r5, #5
	mov r0, r4
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

addr_a0:
	.word a
	.ident "ZWJM"
