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
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L4:
	ldr r4, =10
	ldr r5, addr_a0
	str r4, [r5]
	ldr r4, addr_a0
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	bgt .L5
	b .L9
.L5:
	mov r0, #1
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L6:
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L9:
	b .L6

addr_a0:
	.word a
	.ident "ZWJM"
