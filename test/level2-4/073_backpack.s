	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm V, 160000, 4
	.text
	.global KnapSack
	.type KnapSack , %function
KnapSack:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L109:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #40]
	str r3, [fp, #-20]
	ldr r4, =1
	str r4, [fp, #-24]
	b .L117
.L117:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L118
	b .L122
.L118:
	ldr r4, =0
	str r4, [fp, #-28]
	b .L123
.L119:
	ldr r4, [fp, #-20]
	str r4, [fp, #-28]
	ldr r4, [fp, #-4]
	str r4, [fp, #-24]
	b .L171
.L122:
	b .L119
.L123:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-20]
	add r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L124
	b .L128
.L124:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-24]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L129
	b .L136
.L125:
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L118
	b .L170
.L128:
	b .L125
.L129:
	ldr r4, [fp, #-24]
	sub r5, r4, #1
	ldr r4, addr_V0
	ldr r6, =800
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [fp, #-28]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	ldr r6, addr_V0
	ldr r7, =800
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-28]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	b .L131
.L130:
	ldr r4, [fp, #-24]
	sub r5, r4, #1
	ldr r4, addr_V0
	ldr r6, =800
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [fp, #-28]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-32]
	ldr r4, [fp, #-24]
	sub r5, r4, #1
	ldr r4, addr_V0
	ldr r6, =800
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-24]
	mov r8, #4
	mul r9, r7, r8
	add r7, r6, r9
	ldr r6, [r7]
	sub r7, r5, r6
	mov r5, #4
	mul r6, r7, r5
	add r5, r4, r6
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-24]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-36]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-36]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L150
	b .L155
.L131:
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-20]
	add r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L124
	b .L164
.L136:
	b .L130
.L150:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-24]
	ldr r6, addr_V0
	ldr r7, =800
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-28]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	b .L152
.L151:
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-24]
	ldr r6, addr_V0
	ldr r7, =800
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-28]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	b .L152
	b .F0
.LTORG
addr_V0:
	.word V
.F0:
.L152:
	b .L131
.L155:
	b .L151
.L164:
	b .L125
.L170:
	b .L119
.L171:
	ldr r4, [fp, #-24]
	cmp r4, #1
	movge r4, #1
	movlt r4, #0
	bge .L172
	b .L176
.L172:
	ldr r4, [fp, #-24]
	ldr r5, addr_V1
	ldr r6, =800
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-28]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, [fp, #-24]
	sub r6, r4, #1
	ldr r4, addr_V1
	ldr r7, =800
	mul r8, r6, r7
	add r6, r4, r8
	mov r4, r6
	ldr r6, [fp, #-28]
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [r6]
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	bgt .L177
	b .L186
.L173:
	ldr r4, [fp, #-4]
	ldr r5, addr_V1
	ldr r6, =800
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-20]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #40
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L176:
	b .L173
.L177:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-24]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-24]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	sub r6, r4, r5
	str r6, [fp, #-28]
	b .L179
.L178:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-24]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	b .L179
.L179:
	ldr r4, [fp, #-24]
	sub r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	cmp r4, #1
	movge r4, #1
	movlt r4, #0
	bge .L172
	b .L195
.L186:
	b .L178
.L195:
	b .L173

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L198:
	mov r4, #0
	mov r5, #-28
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	mov r4, #0
	mov r5, #-52
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	ldr r4, =5
	str r4, [fp, #-80]
	ldr r4, =10
	str r4, [fp, #-84]
	ldr r4, [fp, #-80]
	mov r5, #0
	mov r6, #-28
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	mov r5, #0
	mov r7, #-52
	mov r8, #4
	mul r9, r5, r8
	add r5, fp, r7
	add r7, r5, r9
	mov r5, #0
	mov r8, #-76
	mov r9, #4
	mul r10, r5, r9
	add r5, fp, r8
	add r8, r5, r10
	ldr r5, [fp, #-84]
	mov r0, r4
	mov r1, r6
	mov r2, r7
	mov r3, r8
	push {r5}
	bl KnapSack
	add sp, sp, #4
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r0, #0
	add sp, sp, #88
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_V1:
	.word V
	.ident "ZWJM"
