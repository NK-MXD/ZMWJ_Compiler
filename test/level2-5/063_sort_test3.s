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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L120:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L124
	b .L128
.L124:
	ldr r4, [fp, #-8]
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	str r4, [fp, #-20]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-24]
	b .L134
.L125:
	mov r0, #0
	add sp, sp, #32
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L128:
	b .L125
.L134:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L135
	b .L139
.L135:
	b .L140
.L136:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-28]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl QuickSort
	mov r4, r0
	str r4, [fp, #-28]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-12]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl QuickSort
	mov r4, r0
	str r4, [fp, #-28]
	b .L125
.L139:
	b .L136
.L140:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L161
	b .L146
.L141:
	ldr r4, [fp, #-20]
	sub r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L161
	b .L164
.L142:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L170
	b .L174
.L146:
	b .L142
.L161:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L141
	b .L169
.L164:
	b .L142
.L169:
	b .L142
.L170:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-16]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L171
.L171:
	b .L178
.L174:
	b .L171
.L178:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L198
	b .L184
.L179:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L198
	b .L201
.L180:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L207
	b .L211
.L184:
	b .L180
.L198:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-24]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L179
	b .L206
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L201:
	b .L180
.L206:
	b .L180
.L207:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-20]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-20]
	sub r5, r4, #1
	str r5, [fp, #-20]
	b .L208
.L208:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L135
	b .L220
.L211:
	b .L208
.L220:
	b .L136

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L225:
	ldr r4, =10
	ldr r5, addr_n1
	str r4, [r5]
	mov r4, #0
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =4
	str r4, [r5]
	mov r4, #1
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =3
	str r4, [r5]
	mov r4, #2
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =9
	str r4, [r5]
	mov r4, #3
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =2
	str r4, [r5]
	mov r4, #4
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	mov r4, #5
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	mov r4, #6
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =6
	str r4, [r5]
	mov r4, #7
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =5
	str r4, [r5]
	mov r4, #8
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =7
	str r4, [r5]
	mov r4, #9
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =8
	str r4, [r5]
	ldr r4, =0
	str r4, [fp, #-44]
	ldr r4, =9
	str r4, [fp, #-48]
	mov r4, #0
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [fp, #-44]
	ldr r6, [fp, #-48]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl QuickSort
	mov r4, r0
	str r4, [fp, #-44]
	b .L229
.L229:
	ldr r4, [fp, #-44]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L230
	b .L234
.L230:
	ldr r4, [fp, #-44]
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-52]
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-52]
	ldr r4, [fp, #-52]
	mov r0, r4
	bl putch
	ldr r4, [fp, #-44]
	add r5, r4, #1
	str r5, [fp, #-44]
	ldr r4, [fp, #-44]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L230
	b .L242
.L231:
	mov r0, #0
	add sp, sp, #56
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L234:
	b .L231
.L242:
	b .L231

addr_n1:
	.word n
	.ident "ZWJM"
