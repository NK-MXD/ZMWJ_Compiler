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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L79:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-12]
	b .L85
.L85:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L86
	b .L90
.L86:
	ldr r0, [fp, #-12]
	str r0, [fp, #-20]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L91
.L87:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L90:
	b .L87
.L91:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L92
	b .L96
.L92:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	movgt r0, #1
	movle r0, #0
	bgt .L97
	b .L105
.L93:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L112
	b .L116
.L96:
	b .L93
.L97:
	ldr r0, [fp, #-16]
	str r0, [fp, #-20]
	b .L98
.L98:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	mov r1, r0
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L92
	b .L111
.L105:
	b .L98
.L111:
	b .L93
.L112:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	str r0, [fp, #-24]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	b .L113
.L113:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	mov r1, r0
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L86
	b .L130
.L116:
	b .L113
.L130:
	b .L87

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L131:
	ldr r1, =10
	ldr r0, addr_n0
	str r1, [r0]
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =4
	str r0, [r1]
	mov r1, #1
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =3
	str r0, [r1]
	mov r1, #2
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =9
	str r0, [r1]
	mov r1, #3
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =2
	str r0, [r1]
	mov r1, #4
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	mov r1, #5
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =1
	str r0, [r1]
	mov r1, #6
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =6
	str r0, [r1]
	mov r1, #7
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =5
	str r0, [r1]
	mov r1, #8
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =7
	str r0, [r1]
	mov r1, #9
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =8
	str r0, [r1]
	ldr r0, =0
	str r0, [fp, #-44]
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_n0
	ldr r1, [r0]
	mov r0, r2
	bl select_sort
	str r0, [fp, #-44]
	b .L134
.L134:
	ldr r1, [fp, #-44]
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L135
	b .L139
.L135:
	ldr r1, [fp, #-44]
	mov r2, #-40
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
	ldr r0, [fp, #-44]
	add r0, r0, #1
	str r0, [fp, #-44]
	mov r1, r0
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L135
	b .L147
.L136:
	mov r0, #0
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L139:
	b .L136
.L147:
	b .L136

addr_n0:
	.word n
	.ident "ZWJM"
