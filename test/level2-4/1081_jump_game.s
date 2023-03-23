	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global canJump
	.type canJump , %function
canJump:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L82:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L85
	b .L89
.L85:
	mov r0, #1
	add sp, sp, #56
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L86:
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	sub r6, r5, #2
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L90
	b .L96
.L89:
	b .L86
.L90:
	mov r0, #1
	add sp, sp, #56
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L91:
	ldr r4, =0
	str r4, [fp, #-52]
	b .L99
.L96:
	b .L91
.L99:
	ldr r4, [fp, #-52]
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L100
	b .L104
.L100:
	ldr r4, [fp, #-52]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-52]
	add r5, r4, #1
	str r5, [fp, #-52]
	ldr r4, [fp, #-52]
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L100
	b .L111
.L101:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	mov r4, #-48
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, =1
	str r5, [r4]
	ldr r4, [fp, #-8]
	sub r5, r4, #2
	str r5, [fp, #-52]
	b .L112
.L104:
	b .L101
.L111:
	b .L101
.L112:
	ldr r4, [fp, #-52]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L113
	b .L117
.L113:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-52]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	sub r6, r5, #1
	ldr r5, [fp, #-52]
	sub r7, r6, r5
	cmp r4, r7
	movlt r4, #1
	movge r4, #0
	blt .L119
	b .L126
.L114:
	mov r4, #0
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #56
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L117:
	b .L114
.L119:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-52]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-56]
	b .L121
.L120:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	ldr r4, [fp, #-52]
	sub r6, r5, r4
	str r6, [fp, #-56]
	b .L121
.L121:
	b .L129
.L126:
	b .L120
.L129:
	ldr r4, [fp, #-56]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L130
	b .L134
.L130:
	ldr r4, [fp, #-52]
	ldr r5, [fp, #-56]
	add r6, r4, r5
	mov r4, #-48
	mov r5, #4
	mul r7, r6, r5
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [r4]
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L135
	b .L140
.L131:
	ldr r4, [fp, #-52]
	sub r5, r4, #1
	str r5, [fp, #-52]
	ldr r4, [fp, #-52]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L113
	b .L152
.L134:
	b .L131
.L135:
	ldr r4, [fp, #-52]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	b .L136
	b .F0
.LTORG
.F0:
.L136:
	ldr r4, [fp, #-56]
	sub r5, r4, #1
	str r5, [fp, #-56]
	ldr r4, [fp, #-56]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L130
	b .L146
.L140:
	b .L136
.L146:
	b .L131
.L152:
	b .L114

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L154:
	mov r4, #0
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =3
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
	ldr r4, =9
	str r4, [r5]
	mov r4, #3
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	mov r4, #4
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	mov r4, #5
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	mov r4, #6
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	mov r4, #7
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =5
	str r4, [r5]
	mov r4, #8
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =7
	str r4, [r5]
	mov r4, #9
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =8
	str r4, [r5]
	ldr r4, =10
	str r4, [fp, #-4]
	mov r4, #0
	mov r5, #-44
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r0, r5
	mov r1, r4
	bl canJump
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #48
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.ident "ZWJM"
