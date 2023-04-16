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
	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L120:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-12]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L124
	b .L128
.L124:
	ldr r0, [fp, #-8]
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r4, #4
	mla r1, r1, r4, r2
	ldr r1, [r1]
	b .L134
.L125:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L128:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L125
.L134:
	mov r2, r3
	mov r5, r0
	cmp r0, r3
	movlt r3, #1
	movge r3, #0
	blt .L135
	b .L139
.L135:
	b .L140
.L136:
	ldr r2, [fp, #-4]
	mov r0, #4
	mla r0, r4, r0, r2
	str r1, [r0]
	sub r2, r4, #1
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	bl QuickSort
	add r1, r4, #1
	ldr r0, [fp, #-4]
	ldr r2, [fp, #-12]
	bl QuickSort
	b .L125
.L139:
	mov r4, r0
	b .L136
.L140:
	mov r0, r2
	cmp r5, r2
	movlt r3, #1
	movge r3, #0
	blt .L161
	b .L146
.L141:
	sub r3, r0, #1
	mov r0, r3
	cmp r5, r3
	movlt r2, #1
	movge r2, #0
	blt .L161
	b .L164
.L142:
	cmp r5, r0
	movlt r2, #1
	movge r2, #0
	blt .L170
	b .L174
.L146:
	mov r0, r2
	b .L142
.L161:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r0, r2, r3
	ldr r3, [r2]
	sub r2, r1, #1
	cmp r3, r2
	movgt r2, #1
	movle r2, #0
	bgt .L141
	b .L169
.L164:
	mov r0, r3
	b .L142
.L169:
	b .L142
.L170:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r0, r2, r3
	ldr r2, [r2]
	mov r4, #4
	mla r3, r5, r4, r3
	str r2, [r3]
	add r2, r5, #1
	mov r4, r2
	b .L171
.L171:
	b .L178
.L174:
	mov r4, r5
	b .L171
.L178:
	mov r2, r4
	cmp r4, r0
	movlt r3, #1
	movge r3, #0
	blt .L198
	b .L184
.L179:
	add r4, r2, #1
	mov r2, r4
	cmp r4, r0
	movlt r3, #1
	movge r3, #0
	blt .L198
	b .L201
.L180:
	cmp r4, r0
	movlt r2, #1
	movge r2, #0
	blt .L207
	b .L211
.L184:
	b .L180
.L198:
	ldr r4, [fp, #-4]
	mov r3, #4
	mla r3, r2, r3, r4
	ldr r3, [r3]
	cmp r3, r1
	movlt r3, #1
	movge r3, #0
	blt .L179
	b .L206
.L201:
	b .L180
.L206:
	mov r4, r2
	b .L180
.L207:
	ldr r3, [fp, #-4]
	mov r2, #4
	mla r2, r4, r2, r3
	ldr r2, [r2]
	mov r5, #4
	mla r3, r0, r5, r3
	str r2, [r3]
	sub r0, r0, #1
	b .L208
.L208:
	mov r2, r0
	mov r5, r4
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L135
	b .L220
.L211:
	b .L208
.L220:
	b .L136

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L225:
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
	add r1, r1, r2
	ldr r2, =5
	str r2, [r1]
	mov r3, #8
	mov r1, #-40
	mov r2, #4
	mul r2, r3, r2
	add r1, fp, r1
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
	mov r1, #0
	mov r2, #9
	bl QuickSort
	mov r2, r0
	b .L229
.L229:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L230
	b .L234
.L230:
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
	blt .L312
	b .L242
.L231:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L234:
	ldr r0, =0
	b .L231
.L242:
	ldr r0, =10
	b .L231
.L312:
	ldr r0, =10
	mov r4, r1
	b .L230

addr_n0:
	.word n
	.ident "ZWJM"
