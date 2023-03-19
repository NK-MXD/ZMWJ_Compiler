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
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	ldr r4, =548
	sub sp, sp, r4
.L129:
	mov r4, #0
	mov r5, #-100
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =1
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =4
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =0
	str r5, [r4]
	mov r4, #0
	mov r5, #-180
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =7
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =9
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =6
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	ldr r4, addr_len0
	ldr r5, [r4]
	str r5, [fp, #-184]
	ldr r4, addr_len0
	ldr r5, [r4]
	str r5, [fp, #-188]
	ldr r4, =-548
	add r0, fp, r4
	mov r1, #0
	mov r2, #160
	bl memset
	ldr r4, =0
	str r4, [fp, #-4]
	b .L183
.L183:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-184]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L184
	b .L188
.L184:
	ldr r4, [fp, #-4]
	mov r5, #-100
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, =-288
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-184]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L184
	b .L195
	b .F0
.LTORG
addr_len0:
	.word len
.F0:
.L185:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L196
.L188:
	b .L185
.L195:
	b .L185
.L196:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-188]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L197
	b .L201
.L197:
	ldr r4, [fp, #-4]
	mov r5, #-180
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	ldr r6, =-388
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-188]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L197
	b .L208
.L198:
	ldr r4, [fp, #-184]
	ldr r5, [fp, #-188]
	add r6, r4, r5
	sub r4, r6, #1
	str r4, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-4]
	b .L209
.L201:
	b .L198
.L208:
	b .L198
.L209:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L210
	b .L214
.L210:
	ldr r4, [fp, #-4]
	ldr r5, =-548
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L210
	b .L220
.L211:
	ldr r4, =0
	str r4, [fp, #-20]
	ldr r4, [fp, #-188]
	sub r5, r4, #1
	str r5, [fp, #-4]
	b .L221
.L214:
	b .L211
.L220:
	b .L211
.L221:
	ldr r4, [fp, #-4]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L222
	b .L226
.L222:
	ldr r4, [fp, #-4]
	ldr r5, =-388
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-12]
	ldr r4, [fp, #-184]
	sub r5, r4, #1
	str r5, [fp, #-8]
	b .L228
.L223:
	mov r4, #0
	ldr r5, =-548
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L255
	b .L260
.L226:
	b .L223
.L228:
	ldr r4, [fp, #-8]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L229
	b .L233
.L229:
	ldr r4, [fp, #-16]
	ldr r5, =-548
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-8]
	ldr r7, =-288
	mov r8, #4
	mul r9, r6, r8
	add r6, fp, r7
	add r7, r6, r9
	ldr r6, [r7]
	mul r7, r5, r6
	add r5, r4, r7
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #10
	movge r4, #1
	movlt r4, #0
	bge .L236
	b .L241
.L230:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-184]
	add r6, r4, r5
	sub r4, r6, #1
	str r4, [fp, #-16]
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L222
	b .L254
.L233:
	b .L230
	b .F1
.LTORG
addr_len1:
	.word len
.F1:
.L236:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	ldr r6, =-548
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	ldr r4, =-548
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, [fp, #-20]
	ldr r6, =10
	sdiv r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-16]
	sub r6, r5, #1
	ldr r5, =-548
	mov r7, #4
	mul r8, r6, r7
	add r6, fp, r5
	add r5, r6, r8
	str r4, [r5]
	b .L238
.L237:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	ldr r6, =-548
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	b .L238
.L238:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-8]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movgt r4, #1
	movle r4, #0
	bgt .L229
	b .L248
.L241:
	b .L237
.L248:
	b .L230
.L254:
	b .L223
.L255:
	mov r4, #0
	ldr r5, =-548
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	bl putint
	b .L256
.L256:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L262
.L260:
	b .L256
.L262:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-184]
	ldr r6, [fp, #-188]
	add r7, r5, r6
	sub r5, r7, #1
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L263
	b .L267
.L263:
	ldr r4, [fp, #-4]
	ldr r5, =-548
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-184]
	ldr r6, [fp, #-188]
	add r7, r5, r6
	sub r5, r7, #1
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L263
	b .L277
.L264:
	mov r0, #0
	ldr r1, =548
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L267:
	b .L264
.L277:
	b .L264

addr_len2:
	.word len
