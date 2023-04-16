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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L143:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	mov r2, #4
	mla r0, r0, r2, r1
	ldr r0, [r0]
	ldr r3, [fp, #-12]
	mov r2, #4
	mla r2, r3, r2, r1
	ldr r4, [r2]
	ldr r3, [fp, #-8]
	mov r2, #4
	mla r2, r3, r2, r1
	str r4, [r2]
	ldr r3, [fp, #-12]
	mov r2, #4
	mla r1, r3, r2, r1
	str r0, [r1]
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr

	.global heap_ajust
	.type heap_ajust , %function
heap_ajust:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L154:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r2, [fp, #-8]
	add r0, r2, r2
	add r1, r0, #1
	b .L160
.L160:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	mov r3, r1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L161
	b .L165
.L161:
	ldr r0, [fp, #-12]
	cmp r3, r0
	movlt r0, #1
	movge r0, #0
	blt .L168
	b .L171
.L162:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L165:
	b .L162
.L166:
	add r0, r3, #1
	mov r4, r0
	b .L167
.L167:
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	mov r3, #4
	mla r1, r4, r3, r1
	ldr r1, [r1]
	cmp r0, r1
	movgt r0, #1
	movle r0, #0
	bgt .L179
	b .L188
.L168:
	ldr r1, [fp, #-4]
	mov r0, #4
	mla r0, r3, r0, r1
	ldr r0, [r0]
	add r5, r3, #1
	mov r4, #4
	mla r1, r5, r4, r1
	ldr r1, [r1]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L166
	b .L178
.L171:
	mov r4, r3
	b .L167
.L178:
	mov r4, r3
	b .L167
.L179:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L180:
	ldr r0, [fp, #-4]
	mov r1, r2
	mov r2, r4
	bl swap
	add r0, r4, r4
	add r1, r0, #1
	b .L181
.L181:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	mov r3, r1
	mov r2, r4
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L161
	b .L196
.L188:
	b .L180
.L196:
	b .L162

	.global heap_sort
	.type heap_sort , %function
heap_sort:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L197:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	mov r1, r1
	ldr r0, =2
	sdiv r0, r1, r0
	sub r2, r0, #1
	b .L202
.L202:
	ldr r0, =0
	sub r1, r0, #1
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movgt r0, #1
	movle r0, #0
	bgt .L203
	b .L207
.L203:
	ldr r0, [fp, #-8]
	sub r2, r0, #1
	ldr r0, [fp, #-4]
	mov r1, r4
	bl heap_ajust
	sub r1, r4, #1
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L313
	b .L214
.L204:
	ldr r0, [fp, #-8]
	sub r1, r0, #1
	b .L215
.L207:
	ldr r0, =0
	b .L204
.L214:
	b .L204
.L215:
	ldr r0, =0
	mov r4, r1
	cmp r1, #0
	movgt r0, #1
	movle r0, #0
	bgt .L216
	b .L220
.L216:
	ldr r0, [fp, #-4]
	mov r1, #0
	mov r2, r4
	bl swap
	sub r4, r4, #1
	ldr r0, [fp, #-4]
	mov r1, #0
	mov r2, r4
	bl heap_ajust
	cmp r4, #0
	movgt r0, #1
	movle r0, #0
	bgt .L319
	b .L228
.L217:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L220:
	ldr r0, =0
	b .L217
.L228:
	ldr r0, =0
	b .L217
.L313:
	mov r4, r1
	b .L203
.L319:
	ldr r0, =0
	b .L216

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L229:
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
	add r1, r1, r2
	ldr r2, =2
	str r2, [r1]
	mov r3, #4
	mov r1, #-40
	mov r2, #4
	mul r2, r3, r2
	add r1, fp, r1
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
	ldr r1, addr_n0
	ldr r1, [r1]
	bl heap_sort
	mov r2, r0
	b .L232
.L232:
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L233
	b .L237
.L233:
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
	blt .L325
	b .L245
.L234:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, fp, lr}
	bx lr
.L237:
	ldr r0, =0
	b .L234
.L245:
	ldr r0, =10
	b .L234
.L325:
	ldr r0, =10
	mov r4, r1
	b .L233

addr_n0:
	.word n
	.ident "ZWJM"
