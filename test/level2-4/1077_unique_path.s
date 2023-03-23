	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global uniquePaths
	.type uniquePaths , %function
uniquePaths:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L83:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L86
	b .L91
.L86:
	mov r0, #1
	add sp, sp, #56
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L87:
	ldr r4, =0
	str r4, [fp, #-48]
	b .L98
.L88:
	ldr r4, [fp, #-8]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L86
	b .L94
.L91:
	b .L88
.L94:
	b .L87
.L98:
	ldr r4, [fp, #-48]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L99
	b .L103
.L99:
	ldr r4, [fp, #-48]
	ldr r5, =3
	mul r6, r4, r5
	ldr r4, [fp, #-8]
	add r5, r6, r4
	sub r4, r5, #1
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	ldr r4, [fp, #-48]
	add r5, r4, #1
	str r5, [fp, #-48]
	ldr r4, [fp, #-48]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L99
	b .L109
.L100:
	ldr r4, =0
	str r4, [fp, #-48]
	b .L110
.L103:
	b .L100
.L109:
	b .L100
.L110:
	ldr r4, [fp, #-48]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L111
	b .L115
.L111:
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	ldr r4, =3
	mul r6, r5, r4
	ldr r4, [fp, #-48]
	add r5, r6, r4
	mov r4, #-44
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, =1
	str r5, [r4]
	ldr r4, [fp, #-48]
	add r5, r4, #1
	str r5, [fp, #-48]
	ldr r4, [fp, #-48]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L111
	b .L121
.L112:
	ldr r4, [fp, #-4]
	sub r5, r4, #2
	str r5, [fp, #-48]
	b .L122
.L115:
	b .L112
.L121:
	b .L112
.L122:
	ldr r4, [fp, #-48]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L123
	b .L127
.L123:
	ldr r4, [fp, #-8]
	sub r5, r4, #2
	str r5, [fp, #-52]
	b .L128
.L124:
	mov r4, #0
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #56
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L127:
	b .L124
.L128:
	ldr r4, [fp, #-52]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L129
	b .L133
.L129:
	ldr r4, [fp, #-48]
	add r5, r4, #1
	ldr r4, =3
	mul r6, r5, r4
	ldr r4, [fp, #-52]
	add r5, r6, r4
	mov r4, #-44
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, [fp, #-48]
	ldr r6, =3
	mul r7, r4, r6
	ldr r4, [fp, #-52]
	add r6, r7, r4
	add r4, r6, #1
	mov r6, #-44
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, [fp, #-48]
	ldr r5, =3
	mul r7, r4, r5
	ldr r4, [fp, #-52]
	add r5, r7, r4
	mov r4, #-44
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r4
	add r4, r5, r8
	str r6, [r4]
	ldr r4, [fp, #-52]
	sub r5, r4, #1
	str r5, [fp, #-52]
	ldr r4, [fp, #-52]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L129
	b .L141
	b .F0
.LTORG
.F0:
.L130:
	ldr r4, [fp, #-48]
	sub r5, r4, #1
	str r5, [fp, #-48]
	ldr r4, [fp, #-48]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L123
	b .L147
.L133:
	b .L130
.L141:
	b .L130
.L147:
	b .L124

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L149:
	ldr r4, =3
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r4
	mov r1, r5
	bl uniquePaths
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
