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
	.global swap
	.type swap , %function
swap:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L143:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global heap_ajust
	.type heap_ajust , %function
heap_ajust:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L154:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, [fp, #-8]
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =2
	mul r6, r4, r5
	add r4, r6, #1
	str r4, [fp, #-20]
	b .L160
.L160:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	add r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L161
	b .L165
.L161:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L168
	b .L171
.L162:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L165:
	b .L162
.L166:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	b .L167
.L167:
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
	ldr r5, [r6]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L179
	b .L188
.L168:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-20]
	add r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L166
	b .L178
.L171:
	b .L167
.L178:
	b .L167
.L179:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L180:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl swap
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-20]
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =2
	mul r6, r4, r5
	add r4, r6, #1
	str r4, [fp, #-20]
	b .L181
.L181:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	add r6, r5, #1
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L161
	b .L196
.L188:
	b .L180
.L196:
	b .L162

	.global heap_sort
	.type heap_sort , %function
heap_sort:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L197:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =2
	sdiv r6, r4, r5
	sub r4, r6, #1
	str r4, [fp, #-12]
	b .L202
.L202:
	ldr r4, [fp, #-12]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L203
	b .L207
.L203:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-16]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl heap_ajust
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L203
	b .L214
.L204:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	str r5, [fp, #-12]
	b .L215
.L207:
	b .L204
.L214:
	b .L204
.L215:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L216
	b .L220
.L216:
	ldr r4, =0
	str r4, [fp, #-20]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	ldr r6, [fp, #-12]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl swap
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	ldr r6, [fp, #-16]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl heap_ajust
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L216
	b .L228
.L217:
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L220:
	b .L217
.L228:
	b .L217

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L229:
	ldr r4, =10
	ldr r5, addr_n0
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
	ldr r4, addr_n0
	ldr r6, [r4]
	mov r0, r5
	mov r1, r6
	bl heap_sort
	mov r4, r0
	str r4, [fp, #-44]
	b .L232
.L232:
	ldr r4, [fp, #-44]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L233
	b .L237
.L233:
	ldr r4, [fp, #-44]
	mov r5, #-40
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-48]
	ldr r4, [fp, #-48]
	mov r0, r4
	bl putint
	ldr r4, =10
	str r4, [fp, #-48]
	ldr r4, [fp, #-48]
	mov r0, r4
	bl putch
	ldr r4, [fp, #-44]
	add r5, r4, #1
	str r5, [fp, #-44]
	ldr r4, [fp, #-44]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L233
	b .L245
.L234:
	mov r0, #0
	add sp, sp, #48
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L237:
	b .L234
.L245:
	b .L234

addr_n0:
	.word n
	.ident "ZWJM"
