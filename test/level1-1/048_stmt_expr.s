	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.section .rodata
	.global n
	.align 4
	.size n, 4
n:
	.word 10
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L19:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =1
	ldr r5, addr_k0
	str r4, [r5]
	b .L21
.L21:
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	sub r5, r6, #1
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L22
	b .L26
.L22:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, addr_k0
	ldr r5, [r4]
	add r4, r5, #1
	ldr r4, addr_k0
	ldr r5, [r4]
	ldr r4, addr_k0
	ldr r6, [r4]
	add r4, r5, r6
	ldr r5, addr_k0
	str r4, [r5]
	ldr r4, [fp, #-4]
	ldr r5, addr_n0
	ldr r6, [r5]
	sub r5, r6, #1
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L22
	b .L33
.L23:
	ldr r4, addr_k0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	ldr r4, addr_k0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L26:
	b .L23
.L33:
	b .L23

addr_k0:
	.word k
addr_n0:
	.word n
