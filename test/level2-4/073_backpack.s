	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm V, 160000, 4
	.text
	.global KnapSack
	.type KnapSack , %function
KnapSack:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L109:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #32]
	str r3, [fp, #-20]
	b .L117
.L117:
	ldr r2, [fp, #-4]
	ldr r0, =0
	mov r5, r0
	ldr r0, =0
	ldr r1, =0
	ldr r1, =1
	mov r4, r1
	ldr r1, =1
	cmp r1, r2
	movle r1, #1
	movgt r1, #0
	ble .L118
	b .L122
.L118:
	b .L123
.L119:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-4]
	b .L171
.L122:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =1
	b .L119
.L123:
	ldr r1, [fp, #-20]
	add r7, r1, #1
	mov r3, r5
	mov r1, r0
	ldr r2, =0
	ldr r6, =0
	cmp r6, r7
	movlt r6, #1
	movge r6, #0
	blt .L124
	b .L128
.L124:
	ldr r5, [fp, #-8]
	mov r0, #4
	mla r0, r4, r0, r5
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L129
	b .L136
.L125:
	add r6, r4, #1
	ldr r3, [fp, #-4]
	mov r5, r2
	mov r0, r1
	mov r4, r6
	cmp r6, r3
	movle r1, #1
	movgt r1, #0
	ble .L118
	b .L170
.L128:
	mov r2, r5
	mov r1, r0
	ldr r0, =0
	b .L125
.L129:
	sub r6, r4, #1
	ldr r5, addr_V0
	ldr r0, =800
	mla r5, r6, r0, r5
	mov r0, #4
	mla r0, r2, r0, r5
	ldr r0, [r0]
	ldr r6, addr_V0
	ldr r5, =800
	mla r6, r4, r5, r6
	mov r5, #4
	mla r5, r2, r5, r6
	str r0, [r5]
	mov r0, r3
	mov r7, r1
	b .L131
.L130:
	sub r3, r4, #1
	ldr r1, addr_V0
	ldr r0, =800
	mla r0, r3, r0, r1
	mov r1, #4
	mla r1, r2, r1, r0
	ldr r1, [r1]
	ldr r5, [fp, #-8]
	mov r3, #4
	mla r3, r4, r3, r5
	ldr r3, [r3]
	sub r5, r2, r3
	mov r3, #4
	mla r0, r5, r3, r0
	ldr r5, [r0]
	ldr r3, [fp, #-12]
	mov r0, #4
	mla r0, r4, r0, r3
	ldr r0, [r0]
	add r0, r5, r0
	cmp r1, r0
	movgt r3, #1
	movle r3, #0
	bgt .L150
	b .L155
.L131:
	add r6, r2, #1
	ldr r1, [fp, #-20]
	add r5, r1, #1
	mov r3, r0
	mov r1, r7
	mov r2, r6
	cmp r6, r5
	movlt r5, #1
	movge r5, #0
	blt .L124
	b .L164
.L136:
	b .L130
.L150:
	ldr r5, addr_V0
	ldr r3, =800
	mla r5, r4, r3, r5
	mov r3, #4
	mla r3, r2, r3, r5
	str r1, [r3]
	b .L152
.L151:
	ldr r5, addr_V0
	ldr r3, =800
	mla r5, r4, r3, r5
	mov r3, #4
	mla r3, r2, r3, r5
	str r0, [r3]
	b .L152
.L152:
	mov r7, r1
	b .L131
.L155:
	b .L151
.L164:
	mov r2, r0
	mov r1, r7
	b .L125
.L170:
	b .L119
.L171:
	mov r2, r1
	mov r1, r0
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L172
	b .L176
.L172:
	ldr r3, addr_V0
	ldr r0, =800
	mla r3, r1, r0, r3
	mov r0, #4
	mla r0, r2, r0, r3
	ldr r0, [r0]
	sub r5, r1, #1
	ldr r4, addr_V0
	ldr r3, =800
	mla r4, r5, r3, r4
	mov r3, #4
	mla r3, r2, r3, r4
	ldr r3, [r3]
	cmp r0, r3
	movgt r0, #1
	movle r0, #0
	bgt .L177
	b .L186
	b .F0
.LTORG
addr_V0:
	.word V
.F0:
.L173:
	ldr r2, [fp, #-4]
	ldr r1, addr_V1
	ldr r0, =800
	mla r2, r2, r0, r1
	ldr r1, [fp, #-20]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L176:
	b .L173
.L177:
	ldr r3, [fp, #-16]
	mov r0, #4
	mla r3, r1, r0, r3
	ldr r0, =1
	str r0, [r3]
	ldr r3, [fp, #-8]
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r0, [r0]
	sub r0, r2, r0
	mov r2, r0
	b .L179
.L178:
	ldr r3, [fp, #-16]
	mov r0, #4
	mla r3, r1, r0, r3
	ldr r0, =0
	str r0, [r3]
	b .L179
.L179:
	sub r0, r1, #1
	mov r1, r0
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L172
	b .L195
.L186:
	b .L178
.L195:
	b .L173

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L198:
	mov r1, #0
	mov r2, #-24
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	add r2, r1, #4
	ldr r0, =2
	str r0, [r2]
	add r2, r2, #4
	ldr r0, =2
	str r0, [r2]
	add r2, r2, #4
	ldr r0, =6
	str r0, [r2]
	add r2, r2, #4
	ldr r0, =5
	str r0, [r2]
	add r2, r2, #4
	ldr r0, =4
	str r0, [r2]
	mov r2, #0
	mov r3, #-48
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r3
	add r2, r0, r2
	ldr r0, =0
	str r0, [r2]
	add r0, r2, #4
	ldr r3, =6
	str r3, [r0]
	add r3, r0, #4
	ldr r0, =3
	str r0, [r3]
	add r0, r3, #4
	ldr r3, =5
	str r3, [r0]
	add r3, r0, #4
	ldr r0, =4
	str r0, [r3]
	add r3, r3, #4
	ldr r0, =6
	str r0, [r3]
	mov r3, #0
	mov r4, #-72
	mov r0, #4
	mul r3, r3, r0
	add r0, fp, r4
	add r3, r0, r3
	mov r0, #5
	mov r4, #10
	push {r4}
	bl KnapSack
	add sp, sp, #4
	bl putint
	mov r0, #0
	add sp, sp, #72
	pop {r3, r4, fp, lr}
	bx lr

addr_V1:
	.word V
	.ident "ZWJM"
