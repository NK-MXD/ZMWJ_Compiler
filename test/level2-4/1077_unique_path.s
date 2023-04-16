	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global uniquePaths
	.type uniquePaths , %function
uniquePaths:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L83:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L86
	b .L91
.L86:
	mov r0, #1
	add sp, sp, #48
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L87:
	b .L98
.L88:
	ldr r0, [fp, #-8]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L86
	b .L94
.L91:
	b .L88
.L94:
	b .L87
.L98:
	ldr r2, [fp, #-4]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L99
	b .L103
.L99:
	ldr r1, =3
	mul r2, r0, r1
	ldr r1, [fp, #-8]
	add r1, r2, r1
	sub r2, r1, #1
	mov r3, #-44
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =1
	str r1, [r2]
	add r1, r0, #1
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L183
	b .L109
.L100:
	b .L110
.L103:
	ldr r0, =0
	b .L100
.L109:
	b .L100
.L110:
	ldr r2, [fp, #-8]
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L111
	b .L115
.L111:
	ldr r1, [fp, #-4]
	sub r2, r1, #1
	ldr r1, =3
	mla r2, r2, r1, r0
	mov r3, #-44
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r2, r1, r2
	ldr r1, =1
	str r1, [r2]
	add r1, r0, #1
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L186
	b .L121
.L112:
	ldr r0, [fp, #-4]
	sub r3, r0, #2
	b .L122
.L115:
	ldr r0, =0
	b .L112
.L121:
	b .L112
.L122:
	ldr r0, =0
	sub r2, r0, #1
	ldr r0, =0
	mov r1, r3
	cmp r3, r2
	movgt r0, #1
	movle r0, #0
	bgt .L123
	b .L127
.L123:
	ldr r0, [fp, #-8]
	sub r3, r0, #2
	b .L128
.L124:
	mov r1, #0
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add sp, sp, #48
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L127:
	ldr r0, =0
	b .L124
.L128:
	ldr r0, =0
	sub r2, r0, #1
	mov r0, r3
	cmp r3, r2
	movgt r2, #1
	movle r2, #0
	bgt .L129
	b .L133
.L129:
	add r3, r1, #1
	ldr r2, =3
	mla r3, r3, r2, r0
	mov r4, #-44
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	ldr r4, [r2]
	ldr r2, =3
	mla r2, r1, r2, r0
	add r3, r2, #1
	mov r6, #-44
	mov r5, #4
	mul r5, r3, r5
	add r3, fp, r6
	add r3, r3, r5
	ldr r3, [r3]
	add r5, r4, r3
	mov r4, #-44
	mov r3, #4
	mul r3, r2, r3
	add r2, fp, r4
	add r2, r2, r3
	str r5, [r2]
	sub r2, r0, #1
	ldr r0, =0
	sub r0, r0, #1
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L193
	b .L141
.L130:
	sub r2, r1, #1
	ldr r0, =0
	sub r0, r0, #1
	mov r1, r2
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L123
	b .L147
.L133:
	b .L130
.L141:
	b .L130
.L147:
	b .L124
.L183:
	mov r0, r1
	b .L99
	b .F0
.LTORG
.F0:
.L186:
	mov r0, r1
	b .L111
.L193:
	mov r0, r2
	b .L129

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L149:
	mov r0, #3
	mov r1, #3
	bl uniquePaths
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
