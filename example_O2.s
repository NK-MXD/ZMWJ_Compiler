	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.text
	.global set_a
	.type set_a , %function
set_a:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L25:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_a0
	str r1, [r0]
	ldr r0, addr_a0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global set_b
	.type set_b , %function
set_b:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L27:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_b0
	str r1, [r0]
	ldr r0, addr_b0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global set_d
	.type set_d , %function
set_d:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L29:
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, addr_d0
	str r1, [r0]
	ldr r0, addr_d0
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L31:
	ldr r1, =2
	ldr r0, addr_d0
	str r1, [r0]
	b .L35
.L35:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

addr_a0:
	.word a
addr_b0:
	.word b
addr_d0:
	.word d
	.ident "ZWJM"
