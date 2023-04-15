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
	.global counting_sort
	.type counting_sort , %function
counting_sort:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L105:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r0, =0
	str r0, [fp, #-64]
	ldr r0, =0
	str r0, [fp, #-56]
	ldr r0, =0
	str r0, [fp, #-60]
	b .L113
.L113:
	ldr r0, [fp, #-64]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L114
	b .L118
.L114:
	ldr r1, [fp, #-64]
	mov r2, #-52
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	ldr r0, [fp, #-64]
	add r0, r0, #1
	str r0, [fp, #-64]
	mov r0, r0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L114
	b .L123
.L115:
	b .L124
.L118:
	b .L115
.L123:
	b .L115
.L124:
	ldr r1, [fp, #-56]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L125
	b .L129
.L125:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-56]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	mov r2, #-52
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add r0, r0, #1
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-56]
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	mov r3, #-52
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	ldr r0, [fp, #-56]
	add r0, r0, #1
	str r0, [fp, #-56]
	mov r1, r0
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L125
	b .L140
.L126:
	ldr r0, =1
	str r0, [fp, #-64]
	b .L141
.L129:
	b .L126
.L140:
	b .L126
.L141:
	ldr r0, [fp, #-64]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L142
	b .L146
.L142:
	ldr r1, [fp, #-64]
	mov r2, #-52
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r3, [r0]
	ldr r0, [fp, #-64]
	sub r1, r0, #1
	mov r2, #-52
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add r3, r3, r0
	ldr r1, [fp, #-64]
	mov r2, #-52
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	ldr r0, [fp, #-64]
	add r0, r0, #1
	str r0, [fp, #-64]
	mov r0, r0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L142
	b .L153
.L143:
	ldr r0, [fp, #-12]
	str r0, [fp, #-60]
	b .L154
.L146:
	b .L143
.L153:
	b .L143
.L154:
	ldr r0, [fp, #-60]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L155
	b .L159
.L155:
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-60]
	sub r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	mov r2, #-52
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	ldr r3, [fp, #-4]
	ldr r1, [fp, #-60]
	sub r2, r1, #1
	mov r1, #4
	mla r1, r2, r1, r3
	ldr r2, [r1]
	mov r3, #-52
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	str r0, [r1]
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-60]
	sub r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r2, [fp, #-60]
	sub r3, r2, #1
	mov r2, #4
	mla r2, r3, r2, r4
	ldr r3, [r2]
	mov r4, #-52
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	ldr r3, [r2]
	mov r2, #4
	mla r0, r3, r2, r0
	str r1, [r0]
	ldr r0, [fp, #-60]
	sub r0, r0, #1
	str r0, [fp, #-60]
	mov r0, r0
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L155
	b .L175
	b .F0
.LTORG
addr_n0:
	.word n
.F0:
.L156:
	mov r0, #0
	add sp, sp, #64
	pop {r3, r4, fp, lr}
	bx lr
.L159:
	b .L156
.L175:
	b .L156

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L176:
	ldr r1, =10
	ldr r0, addr_n1
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
	add r0, r0, r1
	mov r2, #0
	mov r3, #-84
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	ldr r1, addr_n1
	ldr r2, [r1]
	mov r1, r3
	bl counting_sort
	str r0, [fp, #-44]
	b .L180
.L180:
	ldr r1, [fp, #-44]
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L181
	b .L185
.L181:
	ldr r1, [fp, #-44]
	mov r2, #-84
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [fp, #-88]
	mov r0, r0
	bl putint
	ldr r0, =10
	str r0, [fp, #-88]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-44]
	add r0, r0, #1
	str r0, [fp, #-44]
	mov r1, r0
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L181
	b .L193
.L182:
	mov r0, #0
	add sp, sp, #88
	pop {r3, r4, fp, lr}
	bx lr
.L185:
	b .L182
.L193:
	b .L182

addr_n1:
	.word n
	.ident "ZWJM"
