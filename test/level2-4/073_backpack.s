	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm V, 160000, 4
	.text
	.global KnapSack
	.type KnapSack , %function
KnapSack:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L109:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r0, =1
	str r0, [fp, #-24]
	b .L117
.L117:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L118
	b .L122
.L118:
	ldr r0, =0
	str r0, [fp, #-28]
	b .L123
.L119:
	ldr r0, [fp, #-20]
	str r0, [fp, #-28]
	ldr r0, [fp, #-4]
	str r0, [fp, #-24]
	b .L171
.L122:
	b .L119
.L123:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-20]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L124
	b .L128
.L124:
	ldr r3, [fp, #-28]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	movlt r0, #1
	movge r0, #0
	blt .L129
	b .L136
.L125:
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	mov r1, r0
	ldr r0, [fp, #-4]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L118
	b .L170
.L128:
	b .L125
.L129:
	ldr r0, [fp, #-24]
	sub r2, r0, #1
	ldr r1, addr_V0
	ldr r0, =800
	mla r2, r2, r0, r1
	ldr r1, [fp, #-28]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r3, [r0]
	ldr r2, [fp, #-24]
	ldr r1, addr_V0
	ldr r0, =800
	mla r2, r2, r0, r1
	ldr r1, [fp, #-28]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	b .L131
.L130:
	ldr r0, [fp, #-24]
	sub r2, r0, #1
	ldr r1, addr_V0
	ldr r0, =800
	mla r2, r2, r0, r1
	ldr r1, [fp, #-28]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	str r0, [fp, #-32]
	ldr r0, [fp, #-24]
	sub r2, r0, #1
	ldr r1, addr_V0
	ldr r0, =800
	mla r0, r2, r0, r1
	ldr r4, [fp, #-28]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	sub r2, r4, r1
	mov r1, #4
	mla r0, r2, r1, r0
	ldr r3, [r0]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add r0, r3, r0
	str r0, [fp, #-36]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-36]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L150
	b .L155
.L131:
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	mov r1, r0
	ldr r0, [fp, #-20]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L124
	b .L164
.L136:
	b .L130
.L150:
	ldr r3, [fp, #-32]
	ldr r2, [fp, #-24]
	ldr r1, addr_V0
	ldr r0, =800
	mla r2, r2, r0, r1
	ldr r1, [fp, #-28]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	b .L152
.L151:
	ldr r3, [fp, #-36]
	ldr r2, [fp, #-24]
	ldr r1, addr_V0
	ldr r0, =800
	mla r2, r2, r0, r1
	ldr r1, [fp, #-28]
	mov r0, #4
	mla r0, r1, r0, r2
	str r3, [r0]
	b .L152
.L152:
	b .L131
.L155:
	b .L151
.L164:
	b .L125
.L170:
	b .L119
.L171:
	ldr r0, [fp, #-24]
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L172
	b .L176
.L172:
	ldr r2, [fp, #-24]
	ldr r1, addr_V0
	ldr r0, =800
	mla r2, r2, r0, r1
	ldr r1, [fp, #-28]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	ldr r1, [fp, #-24]
	sub r3, r1, #1
	ldr r2, addr_V0
	ldr r1, =800
	mla r3, r3, r1, r2
	ldr r2, [fp, #-28]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r1, [r1]
	cmp r0, r1
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
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L176:
	b .L173
.L177:
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	ldr r3, [fp, #-28]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	sub r0, r3, r0
	str r0, [fp, #-28]
	b .L179
.L178:
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =0
	str r0, [r1]
	b .L179
.L179:
	ldr r0, [fp, #-24]
	sub r0, r0, #1
	str r0, [fp, #-24]
	mov r0, r0
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
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L198:
	mov r1, #0
	mov r2, #-28
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	mov r1, #0
	mov r2, #-52
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	ldr r0, =5
	str r0, [fp, #-80]
	ldr r0, =10
	str r0, [fp, #-84]
	ldr r0, [fp, #-80]
	mov r2, #0
	mov r3, #-28
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	mov r3, #0
	mov r4, #-52
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	mov r4, #0
	mov r5, #-76
	mov r3, #4
	mul r4, r4, r3
	add r3, fp, r5
	add r3, r3, r4
	ldr r4, [fp, #-84]
	push {r4}
	bl KnapSack
	add sp, sp, #4
	str r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #0
	add sp, sp, #88
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

addr_V1:
	.word V
	.ident "ZWJM"
