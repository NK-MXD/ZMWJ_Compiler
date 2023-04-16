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
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L68:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L73
.L73:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r2, [r0]
	ldr r0, =0
	mov r1, r0
	cmp r3, r2
	movgt r0, #1
	movle r0, #0
	bgt .L93
	b .L81
.L74:
	add r3, r1, #1
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r3, r0, r1
	ldr r0, [r0]
	mov r1, r3
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L93
	b .L98
.L75:
	ldr r0, addr_N0
	ldr r0, [r0]
	b .L102
.L81:
	ldr r0, =0
	mov r2, r0
	b .L75
.L93:
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L74
	b .L101
.L98:
	mov r2, r3
	b .L75
.L101:
	mov r2, r1
	b .L75
.L102:
	mov r5, r0
	cmp r0, r2
	movgt r0, #1
	movle r0, #0
	bgt .L103
	b .L107
.L103:
	ldr r1, [fp, #-4]
	sub r0, r5, #1
	mov r3, #4
	mla r3, r0, r3, r1
	ldr r4, [r3]
	mov r3, #4
	mla r3, r5, r3, r1
	str r4, [r3]
	ldr r4, [fp, #-8]
	mov r3, #4
	mla r1, r2, r3, r1
	str r4, [r1]
	cmp r0, r2
	movgt r1, #1
	movle r1, #0
	bgt .L164
	b .L117
.L104:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L107:
	b .L104
.L117:
	b .L104
.L164:
	mov r5, r0
	b .L103

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L118:
	ldr r1, =10
	ldr r0, addr_N0
	str r1, [r0]
	mov r1, #0
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	ldr r0, =1
	str r0, [r4]
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
	add r0, r0, r1
	ldr r1, =18
	str r1, [r0]
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
	bl getint
	mov r1, r0
	mov r0, r4
	bl insert
	b .L122
.L122:
	ldr r0, addr_N0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L123
	b .L127
.L123:
	mov r2, #-44
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	add r1, r4, #1
	ldr r0, addr_N0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L168
	b .L134
.L124:
	mov r0, #0
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L127:
	ldr r0, =0
	b .L124
.L134:
	ldr r0, =10
	b .L124
.L168:
	mov r4, r1
	ldr r0, =10
	b .L123

addr_N0:
	.word N
	.ident "ZWJM"
