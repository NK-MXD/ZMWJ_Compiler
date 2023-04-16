	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global canJump
	.type canJump , %function
canJump:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L82:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r0, r1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L85
	b .L89
.L85:
	mov r0, #1
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L86:
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r0, #2
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L90
	b .L96
.L89:
	b .L86
.L90:
	mov r0, #1
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L91:
	b .L99
.L96:
	b .L91
.L99:
	ldr r0, [fp, #-8]
	sub r1, r0, #1
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L100
	b .L104
.L100:
	mov r2, #-48
	mov r0, #4
	mul r1, r3, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	add r1, r3, #1
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L185
	b .L111
.L101:
	ldr r0, [fp, #-8]
	sub r1, r0, #1
	mov r2, #-48
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =1
	str r0, [r1]
	ldr r0, [fp, #-8]
	sub r3, r0, #2
	b .L112
.L104:
	ldr r0, =0
	b .L101
.L111:
	b .L101
.L112:
	ldr r0, =0
	sub r2, r0, #1
	ldr r0, =0
	mov r1, r3
	cmp r3, r2
	movgt r0, #1
	movle r0, #0
	bgt .L113
	b .L117
.L113:
	ldr r2, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r2, [r0]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	sub r0, r0, r1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L119
	b .L126
.L114:
	mov r0, #0
	mov r2, #-48
	mov r1, #4
	mul r1, r0, r1
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L117:
	ldr r0, =0
	b .L114
.L119:
	ldr r2, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	mov r3, r0
	b .L121
.L120:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	sub r0, r0, r1
	mov r3, r0
	b .L121
.L121:
	b .L129
.L126:
	b .L120
.L129:
	ldr r0, =0
	sub r2, r0, #1
	mov r0, r3
	cmp r3, r2
	movgt r2, #1
	movle r2, #0
	bgt .L130
	b .L134
.L130:
	add r3, r1, r0
	mov r4, #-48
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	ldr r2, [r2]
	cmp r2, #0
	movne r2, #1
	moveq r2, #0
	bne .L135
	b .L140
.L131:
	sub r2, r1, #1
	ldr r0, =0
	sub r0, r0, #1
	mov r1, r2
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L113
	b .L152
.L134:
	b .L131
.L135:
	mov r4, #-48
	mov r2, #4
	mul r3, r1, r2
	add r2, fp, r4
	add r3, r2, r3
	ldr r2, =1
	str r2, [r3]
	b .L136
.L136:
	sub r3, r0, #1
	ldr r0, =0
	sub r2, r0, #1
	mov r0, r3
	cmp r3, r2
	movgt r2, #1
	movle r2, #0
	bgt .L130
	b .L146
	b .F0
.LTORG
.F0:
.L140:
	b .L136
.L146:
	b .L131
.L152:
	b .L114
.L185:
	mov r3, r1
	b .L100

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L154:
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, =3
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
	ldr r1, =0
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
	ldr r1, =1
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
	mov r1, #10
	bl canJump
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
