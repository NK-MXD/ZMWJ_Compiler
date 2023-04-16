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
	sub sp, sp, #8
.L32:
	str r0, [fp, #-4]
	b .L36
.L36:
	ldr r0, [fp, #-4]
	add r3, r0, #1
	ldr r0, =0
	mov r1, r0
	ldr r0, =1
	ldr r2, =1
	cmp r2, r3
	movlt r2, #1
	movge r2, #0
	blt .L37
	b .L41
.L37:
	ldr r3, [fp, #-4]
	sdiv r2, r3, r0
	mul r2, r2, r0
	sub r2, r3, r2
	cmp r2, #0
	moveq r2, #1
	movne r2, #0
	beq .L42
	b .L46
.L38:
	mov r0, r1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L41:
	ldr r0, =0
	mov r1, r0
	ldr r0, =1
	b .L38
.L42:
	add r1, r1, r0
	mov r4, r1
	b .L43
.L43:
	add r3, r0, #1
	ldr r0, [fp, #-4]
	add r2, r0, #1
	mov r1, r4
	mov r0, r3
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L37
	b .L53
.L46:
	mov r4, r1
	b .L43
.L53:
	mov r1, r4
	b .L38

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L54:
	ldr r1, =4
	ldr r0, addr_N0
	str r1, [r0]
	ldr r1, =10
	ldr r0, addr_newline0
	str r1, [r0]
	ldr r0, =1478
	bl factor
	pop {r3, r4, fp, lr}
	bx lr

addr_N0:
	.word N
addr_newline0:
	.word newline
	.ident "ZWJM"
