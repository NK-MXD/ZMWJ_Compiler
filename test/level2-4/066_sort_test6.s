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
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #56
.L105:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	b .L113
.L113:
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L114
	b .L118
.L114:
	mov r2, #-52
	mov r0, #4
	mul r1, r3, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	add r1, r3, #1
	cmp r1, #10
	movlt r0, #1
	movge r0, #0
	blt .L233
	b .L123
.L115:
	b .L124
.L118:
	ldr r0, =0
	b .L115
.L123:
	b .L115
.L124:
	ldr r0, [fp, #-12]
	ldr r1, =0
	ldr r2, =0
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L125
	b .L129
.L125:
	ldr r3, [fp, #-4]
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r4, [r0]
	mov r2, #-52
	mov r0, #4
	mul r0, r4, r0
	add r2, fp, r2
	add r0, r2, r0
	ldr r0, [r0]
	add r0, r0, #1
	mov r2, #4
	mla r2, r1, r2, r3
	ldr r3, [r2]
	mov r4, #-52
	mov r2, #4
	mul r3, r3, r2
	add r2, fp, r4
	add r2, r2, r3
	str r0, [r2]
	add r1, r1, #1
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L236
	b .L140
.L126:
	b .L141
.L129:
	ldr r0, =0
	b .L126
.L140:
	b .L126
.L141:
	ldr r0, =1
	ldr r1, =1
	cmp r1, #10
	movlt r1, #1
	movge r1, #0
	blt .L142
	b .L146
.L142:
	mov r3, #-52
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r4, [r1]
	sub r2, r0, #1
	mov r3, #-52
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r4, r4, r1
	mov r3, #-52
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r4, [r1]
	add r1, r0, #1
	cmp r1, #10
	movlt r0, #1
	movge r0, #0
	blt .L239
	b .L153
.L143:
	ldr r0, [fp, #-12]
	b .L154
.L146:
	ldr r0, =1
	b .L143
.L153:
	b .L143
.L154:
	mov r2, r0
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L155
	b .L159
.L155:
	ldr r1, [fp, #-4]
	sub r3, r2, #1
	mov r0, #4
	mla r0, r3, r0, r1
	ldr r2, [r0]
	mov r4, #-52
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r4
	add r0, r0, r2
	ldr r0, [r0]
	sub r0, r0, #1
	mov r2, #4
	mla r2, r3, r2, r1
	ldr r4, [r2]
	mov r5, #-52
	mov r1, #4
	mul r4, r4, r1
	add r1, fp, r5
	add r1, r1, r4
	str r0, [r1]
	ldr r1, [r2]
	ldr r0, [fp, #-8]
	ldr r4, [r2]
	mov r5, #-52
	mov r2, #4
	mul r4, r4, r2
	add r2, fp, r5
	add r2, r2, r4
	ldr r4, [r2]
	mov r2, #4
	mla r0, r4, r2, r0
	str r1, [r0]
	cmp r3, #0
	movgt r0, #1
	movle r0, #0
	bgt .L242
	b .L175
.L156:
	mov r0, #0
	add sp, sp, #56
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L159:
	b .L156
.L175:
	b .L156
.L233:
	mov r3, r1
	b .L114
.L236:
	b .L125
.L239:
	mov r0, r1
	b .L142
.L242:
	mov r2, r3
	b .L155
	b .F0
.LTORG
addr_n0:
	.word n
.F0:

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #80
.L176:
	ldr r1, =10
	ldr r0, addr_n1
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
	mov r2, #0
	mov r3, #-80
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	ldr r1, addr_n1
	ldr r2, [r1]
	mov r1, r3
	bl counting_sort
	mov r2, r0
	b .L180
.L180:
	ldr r0, addr_n1
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L181
	b .L185
.L181:
	mov r2, #-80
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	add r1, r4, #1
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L246
	b .L193
.L182:
	mov r0, #0
	add sp, sp, #80
	pop {r3, r4, fp, lr}
	bx lr
.L185:
	ldr r0, =0
	b .L182
.L193:
	ldr r0, =10
	b .L182
.L246:
	ldr r0, =10
	mov r4, r1
	b .L181

addr_n1:
	.word n
	.ident "ZWJM"
