	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.global newline
	.align 4
	.size newline, 4
newline:
	.word 0
	.text
	.global factor
	.type factor , %function
factor:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L32:
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-12]
	ldr r0, =1
	str r0, [fp, #-8]
	b .L36
.L36:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L41
.L37:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L42
	b .L46
.L38:
	ldr r0, [fp, #-12]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L41:
	b .L38
.L42:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-12]
	b .L43
.L43:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L53
.L46:
	b .L43
.L53:
	b .L38

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L54:
	ldr r1, =4
	ldr r0, addr_N0
	str r1, [r0]
	ldr r1, =10
	ldr r0, addr_newline0
	str r1, [r0]
	ldr r0, =1478
	str r0, [fp, #-8]
	mov r0, r0
	bl factor
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr

addr_N0:
	.word N
addr_newline0:
	.word newline
	.ident "ZWJM"
