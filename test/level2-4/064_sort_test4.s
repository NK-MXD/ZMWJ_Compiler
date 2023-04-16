	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global select_sort
	.type select_sort , %function
select_sort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L79:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	b .L85
.L85:
	ldr r0, [fp, #-8]
	sub r1, r0, #1
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L86
	b .L90
.L86:
	add r5, r3, #1
	b .L91
.L87:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L90:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L87
.L91:
	ldr r0, [fp, #-8]
	mov r2, r3
	mov r1, r5
	cmp r5, r0
	movlt r0, #1
	movge r0, #0
	blt .L92
	b .L96
.L92:
	ldr r0, [fp, #-4]
	mov r5, #4
	mla r5, r2, r5, r0
	ldr r6, [r5]
	mov r5, #4
	mla r0, r1, r5, r0
	ldr r0, [r0]
	cmp r6, r0
	movgt r0, #1
	movle r0, #0
	bgt .L97
	b .L105
.L93:
	cmp r2, r3
	movne r0, #1
	moveq r0, #0
	bne .L112
	b .L116
.L96:
	mov r2, r3
	b .L93
.L97:
	mov r6, r1
	b .L98
.L98:
	add r5, r1, #1
	ldr r0, [fp, #-8]
	mov r2, r6
	mov r1, r5
	cmp r5, r0
	movlt r0, #1
	movge r0, #0
	blt .L92
	b .L111
.L105:
	mov r6, r2
	b .L98
.L111:
	mov r2, r6
	b .L93
.L112:
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	mov r4, #4
	mla r4, r3, r4, r1
	ldr r5, [r4]
	mov r4, #4
	mla r2, r2, r4, r1
	str r5, [r2]
	mov r2, #4
	mla r1, r3, r2, r1
	str r0, [r1]
	b .L113
.L113:
	add r2, r3, #1
	ldr r1, [fp, #-8]
	sub r1, r1, #1
	mov r4, r0
	mov r3, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L86
	b .L130
.L116:
	mov r0, r4
	b .L113
.L130:
	b .L87

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L131:
	ldr r1, =10
	ldr r0, addr_n0
	str r1, [r0]
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, =4
	str r1, [r0]
	mov r2, #1
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =3
	str r1, [r2]
	mov r2, #2
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =9
	str r1, [r2]
	mov r2, #3
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =2
	str r1, [r2]
	mov r2, #4
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =0
	str r1, [r2]
	mov r2, #5
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =1
	str r1, [r2]
	mov r2, #6
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =6
	str r1, [r2]
	mov r2, #7
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =5
	str r1, [r2]
	mov r2, #8
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =7
	str r1, [r2]
	mov r2, #9
	mov r3, #-40
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =8
	str r1, [r2]
	ldr r1, addr_n0
	ldr r1, [r1]
	bl select_sort
	mov r2, r0
	b .L134
.L134:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L135
	b .L139
.L135:
	mov r2, #-40
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	add r1, r4, #1
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L212
	b .L147
.L136:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L139:
	ldr r0, =0
	b .L136
.L147:
	ldr r0, =10
	b .L136
.L212:
	ldr r0, =10
	mov r4, r1
	b .L135

addr_n0:
	.word n
	.ident "ZWJM"
