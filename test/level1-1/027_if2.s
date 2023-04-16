	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L4:
	ldr r1, =10
	ldr r0, addr_a0
	str r1, [r0]
	ldr r0, addr_a0
	ldr r0, [r0]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L5
	b .L10
.L5:
	mov r0, #1
	pop {r3, r4, fp, lr}
	bx lr
.L6:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L10:
	b .L6

addr_a0:
	.word a
	.ident "ZWJM"
