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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L68:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L73
.L73:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L93
	b .L81
.L74:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L93
	b .L98
.L75:
	ldr r4, addr_N0
	ldr r5, [r4]
	str r5, [fp, #-16]
	b .L102
.L81:
	b .L75
.L93:
	ldr r4, [fp, #-12]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L74
	b .L101
.L98:
	b .L75
.L101:
	b .L75
.L102:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L103
	b .L107
.L103:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	sub r6, r5, #1
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L103
	b .L117
.L104:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L107:
	b .L104
.L117:
	b .L104

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L118:
	ldr r4, =10
	ldr r5, addr_N0
	str r4, [r5]
	mov r4, #0
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	mov r4, #1
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =3
	str r4, [r5]
	mov r4, #2
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =4
	str r4, [r5]
	mov r4, #3
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =7
	str r4, [r5]
	mov r4, #4
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =8
	str r4, [r5]
	mov r4, #5
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =11
	str r4, [r5]
	mov r4, #6
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =13
	str r4, [r5]
	mov r4, #7
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =18
	str r4, [r5]
	mov r4, #8
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =56
	str r4, [r5]
	mov r4, #9
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =78
	str r4, [r5]
	ldr r4, =0
	str r4, [fp, #-52]
	bl getint
	mov r4, r0
	str r4, [fp, #-48]
	mov r4, #0
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [fp, #-48]
	mov r0, r5
	mov r1, r4
	bl insert
	mov r4, r0
	str r4, [fp, #-48]
	b .L122
.L122:
	ldr r4, [fp, #-52]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L123
	b .L127
.L123:
	ldr r4, [fp, #-52]
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-48]
	ldr r4, [fp, #-48]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-48]
	ldr r4, [fp, #-48]
	mov r0, r4
	bl putch
	ldr r4, [fp, #-52]
	add r5, r4, #1
	str r5, [fp, #-52]
	ldr r4, [fp, #-52]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L123
	b .L134
.L124:
	mov r0, #0
	add sp, sp, #56
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L127:
	b .L124
.L134:
	b .L124

addr_N0:
	.word N
	.ident "ZWJM"
