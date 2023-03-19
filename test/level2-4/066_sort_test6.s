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
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L105:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-64]
	ldr r4, =0
	str r4, [fp, #-56]
	ldr r4, =0
	str r4, [fp, #-60]
	b .L113
.L113:
	ldr r4, [fp, #-64]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L114
	b .L118
.L114:
	ldr r4, [fp, #-64]
	mov r5, #-52
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-64]
	add r5, r4, #1
	str r5, [fp, #-64]
	ldr r4, [fp, #-64]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L114
	b .L123
.L115:
	b .L124
.L118:
	b .L115
.L123:
	b .L115
.L124:
	ldr r4, [fp, #-56]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L125
	b .L129
.L125:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-56]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r5, #-52
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	add r5, r4, #1
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-56]
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [r6]
	mov r6, #-52
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	ldr r4, [fp, #-56]
	add r5, r4, #1
	str r5, [fp, #-56]
	ldr r4, [fp, #-56]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L125
	b .L140
.L126:
	ldr r4, =1
	str r4, [fp, #-64]
	b .L141
.L129:
	b .L126
.L140:
	b .L126
.L141:
	ldr r4, [fp, #-64]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L142
	b .L146
.L142:
	ldr r4, [fp, #-64]
	mov r5, #-52
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-64]
	sub r6, r5, #1
	mov r5, #-52
	mov r7, #4
	mul r8, r6, r7
	add r6, fp, r5
	add r5, r6, r8
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, [fp, #-64]
	mov r6, #-52
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	ldr r4, [fp, #-64]
	add r5, r4, #1
	str r5, [fp, #-64]
	ldr r4, [fp, #-64]
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L142
	b .L153
.L143:
	ldr r4, [fp, #-12]
	str r4, [fp, #-60]
	b .L154
.L146:
	b .L143
.L153:
	b .L143
.L154:
	ldr r4, [fp, #-60]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L155
	b .L159
.L155:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-60]
	sub r6, r5, #1
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r5, #-52
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	sub r5, r4, #1
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-60]
	sub r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r4, r8
	ldr r4, [r6]
	mov r6, #-52
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	str r5, [r6]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-60]
	sub r6, r5, #1
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-4]
	ldr r7, [fp, #-60]
	sub r8, r7, #1
	mov r7, #4
	mul r9, r8, r7
	add r7, r6, r9
	ldr r6, [r7]
	mov r7, #-52
	mov r8, #4
	mul r9, r6, r8
	add r6, fp, r7
	add r7, r6, r9
	ldr r6, [r7]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-60]
	sub r5, r4, #1
	str r5, [fp, #-60]
	ldr r4, [fp, #-60]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
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
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L159:
	b .L156
.L175:
	b .L156

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L176:
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
	mov r4, #0
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #-84
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r4, addr_n1
	ldr r7, [r4]
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl counting_sort
	mov r4, r0
	str r4, [fp, #-44]
	b .L180
.L180:
	ldr r4, [fp, #-44]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L181
	b .L185
.L181:
	ldr r4, [fp, #-44]
	mov r5, #-84
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-88]
	ldr r4, [fp, #-88]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-88]
	ldr r4, [fp, #-88]
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
	blt .L181
	b .L193
.L182:
	mov r0, #0
	add sp, sp, #88
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L185:
	b .L182
.L193:
	b .L182

addr_n1:
	.word n
