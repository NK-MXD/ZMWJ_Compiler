	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global insert
	.type insert , %function
insert:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-12]
	b .L73
.L73:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	movgt r0, #1
	movle r0, #0
	bgt .L93
	b .L81
.L74:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	movgt r0, #1
	movle r0, #0
	bgt .L93
	b .L98
.L75:
	ldr r0, addr_N0
	ldr r0, [r0]
	str r0, [fp, #-16]
	b .L102
.L81:
	b .L75
.L93:
	ldr r1, [fp, #-12]
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L74
	b .L101
.L98:
	b .L75
.L101:
	b .L75
.L102:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L103
	b .L107
.L103:
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-16]
	sub r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	mov r1, r0
	ldr r0, [fp, #-12]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L103
	b .L117
.L104:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L107:
	b .L104
.L117:
	b .L104

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L118:
	ldr r1, =10
	ldr r0, addr_N0
	str r1, [r0]
	mov r1, #0
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =1
	str r0, [r1]
	mov r1, #1
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =3
	str r0, [r1]
	mov r1, #2
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =4
	str r0, [r1]
	mov r1, #3
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =7
	str r0, [r1]
	mov r1, #4
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =8
	str r0, [r1]
	mov r1, #5
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =11
	str r0, [r1]
	mov r1, #6
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =13
	str r0, [r1]
	mov r1, #7
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =18
	str r0, [r1]
	mov r1, #8
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =56
	str r0, [r1]
	mov r1, #9
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =78
	str r0, [r1]
	ldr r0, =0
	str r0, [fp, #-52]
	bl getint
	str r0, [fp, #-48]
	mov r1, #0
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, [fp, #-48]
	bl insert
	str r0, [fp, #-48]
	b .L122
.L122:
	ldr r1, [fp, #-52]
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L123
	b .L127
.L123:
	ldr r1, [fp, #-52]
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [fp, #-48]
	mov r0, r0
	bl putint
	ldr r0, =10
	str r0, [fp, #-48]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-52]
	add r0, r0, #1
	str r0, [fp, #-52]
	mov r1, r0
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L123
	b .L134
.L124:
	mov r0, #0
	add sp, sp, #56
	pop {r3, r4, fp, lr}
	bx lr
.L127:
	b .L124
.L134:
	b .L124

addr_N0:
	.word N
	.ident "ZWJM"
