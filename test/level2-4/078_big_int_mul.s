	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global len
	.align 4
	.size len, 4
len:
	.word 20
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =520
	sub sp, sp, r4
.L129:
	mov r2, #0
	mov r1, #-80
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r1
	add r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	add r0, r1, #4
	ldr r1, =2
	str r1, [r0]
	add r0, r0, #4
	ldr r1, =3
	str r1, [r0]
	add r0, r0, #4
	ldr r1, =4
	str r1, [r0]
	add r1, r0, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	mov r2, #0
	mov r1, #-160
	mov r0, #4
	mul r2, r2, r0
	add r0, fp, r1
	add r0, r0, r2
	ldr r1, =2
	str r1, [r0]
	add r0, r0, #4
	ldr r1, =3
	str r1, [r0]
	add r1, r0, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r0, r1, #4
	ldr r1, =5
	str r1, [r0]
	add r1, r0, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =8
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =7
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	ldr r0, addr_len0
	ldr r8, [r0]
	ldr r0, addr_len0
	ldr r10, [r0]
	ldr r0, =-520
	add r0, fp, r0
	mov r1, #0
	mov r2, #160
	bl memset
	b .L183
.L183:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, r8
	movlt r0, #1
	movge r0, #0
	blt .L184
	b .L188
.L184:
	mov r3, #-80
	mov r0, #4
	mul r2, r1, r0
	add r0, fp, r3
	add r0, r0, r2
	ldr r0, [r0]
	ldr r4, =-260
	mov r2, #4
	mul r3, r1, r2
	add r2, fp, r4
	add r2, r2, r3
	str r0, [r2]
	add r1, r1, #1
	cmp r1, r8
	movlt r0, #1
	movge r0, #0
	blt .L347
	b .L195
	b .F0
.LTORG
addr_len0:
	.word len
.F0:
.L185:
	b .L196
.L188:
	ldr r0, =0
	b .L185
.L195:
	b .L185
.L196:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, r10
	movlt r0, #1
	movge r0, #0
	blt .L197
	b .L201
.L197:
	mov r3, #-160
	mov r0, #4
	mul r2, r1, r0
	add r0, fp, r3
	add r0, r0, r2
	ldr r0, [r0]
	ldr r4, =-360
	mov r2, #4
	mul r3, r1, r2
	add r2, fp, r4
	add r2, r2, r3
	str r0, [r2]
	add r1, r1, #1
	cmp r1, r10
	movlt r0, #1
	movge r0, #0
	blt .L350
	b .L208
.L198:
	add r0, r8, r10
	sub r2, r0, #1
	b .L209
.L201:
	ldr r0, =0
	b .L198
.L208:
	b .L198
.L209:
	ldr r0, =0
	ldr r1, =0
	cmp r1, r2
	movle r1, #1
	movgt r1, #0
	ble .L210
	b .L214
.L210:
	ldr r4, =-520
	mov r1, #4
	mul r3, r0, r1
	add r1, fp, r4
	add r3, r1, r3
	ldr r1, =0
	str r1, [r3]
	add r1, r0, #1
	cmp r1, r2
	movle r0, #1
	movgt r0, #0
	ble .L353
	b .L220
.L211:
	sub r1, r10, #1
	b .L221
.L214:
	ldr r0, =0
	b .L211
.L220:
	b .L211
.L221:
	ldr r0, =0
	sub r0, r0, #1
	ldr r3, =0
	ldr r4, =0
	ldr r4, =0
	mov r9, r1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L222
	b .L226
.L222:
	ldr r1, =-360
	mov r0, #4
	mul r0, r9, r0
	add r1, fp, r1
	add r0, r1, r0
	ldr r7, [r0]
	sub r0, r8, #1
	b .L228
.L223:
	mov r1, #0
	ldr r2, =-520
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L255
	b .L260
.L226:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L223
.L228:
	ldr r1, =0
	sub r1, r1, #1
	mov r4, r3
	mov r5, r2
	mov r6, r0
	cmp r0, r1
	movgt r0, #1
	movle r0, #0
	bgt .L229
	b .L233
.L229:
	ldr r2, =-520
	mov r0, #4
	mul r1, r5, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r3, [r0]
	ldr r2, =-260
	mov r0, #4
	mul r1, r6, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	mla r0, r7, r0, r3
	cmp r0, #10
	movge r1, #1
	movlt r1, #0
	bge .L236
	b .L241
.L230:
	add r0, r0, r8
	sub r2, r0, #1
	sub r0, r9, #1
	ldr r1, =0
	sub r1, r1, #1
	mov r3, r4
	mov r9, r0
	cmp r0, r1
	movgt r0, #1
	movle r0, #0
	bgt .L222
	b .L254
.L233:
	mov r4, r3
	mov r0, r2
	b .L230
.L236:
	ldr r1, =-520
	mov r2, #4
	mul r2, r5, r2
	add r1, fp, r1
	add r1, r1, r2
	str r0, [r1]
	sub r1, r5, #1
	ldr r3, =-520
	mov r2, #4
	mul r2, r1, r2
	add r1, fp, r3
	add r3, r1, r2
	ldr r4, [r3]
	ldr r2, =3435973837
	umull r1, r2, r0, r2
	mov r1, r2, ASR#3
	mov r2, r2, LSR#31
	add r1, r1, r2
	ldr r1, =10
	sdiv r1, r0, r1
	add r1, r4, r1
	str r1, [r3]
	b .L238
	b .F1
.LTORG
addr_len1:
	.word len
.F1:
.L237:
	ldr r1, =-520
	mov r2, #4
	mul r2, r5, r2
	add r1, fp, r1
	add r1, r1, r2
	str r0, [r1]
	b .L238
.L238:
	sub r1, r6, #1
	sub r3, r5, #1
	ldr r2, =0
	sub r2, r2, #1
	mov r4, r0
	mov r5, r3
	mov r6, r1
	cmp r1, r2
	movgt r1, #1
	movle r1, #0
	bgt .L229
	b .L248
.L241:
	b .L237
.L248:
	mov r4, r0
	mov r0, r3
	b .L230
.L254:
	b .L223
.L255:
	mov r1, #0
	ldr r2, =-520
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	b .L256
.L256:
	b .L262
.L260:
	b .L256
.L262:
	add r0, r8, r10
	sub r1, r0, #1
	ldr r0, =1
	mov r4, r0
	ldr r0, =1
	cmp r0, r1
	movle r0, #1
	movgt r0, #0
	ble .L263
	b .L267
.L263:
	ldr r2, =-520
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putint
	add r1, r4, #1
	add r0, r8, r10
	sub r0, r0, #1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L372
	b .L277
.L264:
	mov r0, #0
	ldr r1, =520
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L267:
	ldr r0, =1
	b .L264
.L277:
	b .L264
.L347:
	b .L184
.L350:
	b .L197
.L353:
	mov r0, r1
	b .L210
.L372:
	mov r4, r1
	b .L263

addr_len2:
	.word len
	.ident "ZWJM"
