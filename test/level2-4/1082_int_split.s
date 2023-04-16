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
	.global split
	.type split , %function
split:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L45:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, addr_N0
	ldr r0, [r0]
	sub r2, r0, #1
	b .L49
.L49:
	ldr r0, =0
	sub r1, r0, #1
	mov r0, r2
	cmp r2, r1
	movne r1, #1
	moveq r1, #0
	bne .L50
	b .L54
.L50:
	ldr r3, [fp, #-4]
	ldr r2, =10
	sdiv r1, r3, r2
	mul r1, r1, r2
	sub r3, r3, r1
	ldr r2, [fp, #-8]
	mov r1, #4
	mla r1, r0, r1, r2
	str r3, [r1]
	ldr r4, [fp, #-4]
	ldr r1, =3435973837
	umull r1, r2, r4, r1
	mov r3, r2, ASR#3
	mov r1, r2, LSR#31
	add r3, r3, r1
	ldr r1, =10
	sdiv r3, r4, r1
	str r3, [fp, #-4]
	sub r1, r0, #1
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L99
	b .L61
.L51:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L54:
	b .L51
.L61:
	b .L51
.L99:
	mov r0, r1
	b .L50

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L62:
	ldr r1, =4
	ldr r0, addr_N0
	str r1, [r0]
	ldr r1, =10
	ldr r0, addr_newline0
	str r1, [r0]
	mov r1, #0
	mov r2, #-16
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =1478
	bl split
	b .L67
.L67:
	ldr r0, =0
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L68
	b .L72
.L68:
	mov r2, #-16
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	ldr r0, addr_newline0
	ldr r0, [r0]
	bl putch
	add r1, r4, #1
	cmp r1, #4
	movlt r0, #1
	movge r0, #0
	blt .L103
	b .L78
.L69:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L72:
	ldr r0, =0
	ldr r0, =0
	b .L69
.L78:
	b .L69
.L103:
	mov r4, r1
	b .L68

addr_N0:
	.word N
addr_newline0:
	.word newline
	.ident "ZWJM"
