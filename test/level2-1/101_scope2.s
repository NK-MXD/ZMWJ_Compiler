	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L31:
	ldr r1, =3389
	ldr r0, addr_k0
	str r1, [r0]
	ldr r0, addr_k0
	ldr r1, [r0]
	ldr r0, =10000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L32
	b .L36
.L32:
	ldr r0, addr_k0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_k0
	str r1, [r0]
	ldr r0, =112
	str r0, [fp, #-4]
	b .L38
.L33:
	ldr r0, addr_k0
	ldr r0, [r0]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L36:
	b .L33
.L38:
	ldr r0, [fp, #-4]
	cmp r0, #10
	movgt r0, #1
	movle r0, #0
	bgt .L39
	b .L43
.L39:
	ldr r0, [fp, #-4]
	sub r0, r0, #88
	str r0, [fp, #-4]
	mov r1, r0
	ldr r0, =1000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L44
	b .L48
.L40:
	ldr r0, [fp, #-4]
	bl putint
	b .L33
.L43:
	b .L40
.L44:
	ldr r0, =9
	str r0, [fp, #-8]
	ldr r0, =11
	str r0, [fp, #-12]
	ldr r0, =10
	str r0, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, =11
	str r0, [fp, #-16]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r0, r1, r0
	str r0, [fp, #-4]
	b .L45
.L45:
	ldr r0, [fp, #-4]
	cmp r0, #10
	movgt r0, #1
	movle r0, #0
	bgt .L39
	b .L56
.L48:
	b .L45
.L56:
	b .L40

addr_k0:
	.word k
	.ident "ZWJM"
