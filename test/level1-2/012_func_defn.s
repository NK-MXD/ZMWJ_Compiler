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
	.global func
	.type func , %function
func:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L13:
	str r0, [fp, #-4]
	mov r0, r0
	sub r0, r0, #1
	str r0, [fp, #-4]
	mov r0, r0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L15:
	ldr r1, =10
	ldr r0, addr_a0
	str r1, [r0]
	ldr r0, addr_a0
	ldr r0, [r0]
	bl func
	pop {r3, r4, fp, lr}
	bx lr

addr_a0:
	.word a
	.ident "ZWJM"
