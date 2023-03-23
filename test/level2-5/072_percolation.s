	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.comm array, 440, 4
	.text
	.global init
	.type init , %function
init:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L174:
	str r0, [fp, #-4]
	ldr r4, =1
	str r4, [fp, #-8]
	b .L177
.L177:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mul r7, r5, r6
	add r5, r7, #1
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L178
	b .L182
.L178:
	ldr r4, =0
	sub r5, r4, #1
	ldr r4, [fp, #-8]
	ldr r6, addr_array0
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	str r5, [r6]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mul r7, r5, r6
	add r5, r7, #1
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L178
	b .L191
.L179:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L182:
	b .L179
.L191:
	b .L179

	.global findfa
	.type findfa , %function
findfa:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L192:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_array0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L194
	b .L200
.L194:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L195:
	ldr r4, [fp, #-4]
	ldr r5, addr_array0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	bl findfa
	mov r4, r0
	ldr r5, [fp, #-4]
	ldr r6, addr_array0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	str r4, [r6]
	ldr r4, [fp, #-4]
	ldr r5, addr_array0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L200:
	b .L195

	.global mmerge
	.type mmerge , %function
mmerge:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L203:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl findfa
	mov r4, r0
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl findfa
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movne r4, #1
	moveq r4, #0
	bne .L208
	b .L212
.L208:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	ldr r6, addr_array0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	str r4, [r6]
	b .L209
.L209:
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L212:
	b .L209

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L213:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L218
.L218:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L219
	b .L222
.L219:
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, =4
	ldr r5, addr_n0
	str r4, [r5]
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-24]
	ldr r4, addr_n0
	ldr r5, [r4]
	mov r0, r5
	bl init
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, addr_n0
	ldr r6, [r4]
	mul r4, r5, r6
	add r5, r4, #1
	str r5, [fp, #-28]
	b .L227
.L220:
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L222:
	b .L220
.L227:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L228
	b .L232
.L228:
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	bl getint
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L233
	b .L237
.L229:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L312
	b .L316
.L232:
	b .L229
.L233:
	ldr r4, addr_n0
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	sub r6, r4, #1
	mul r4, r5, r6
	ldr r5, [fp, #-16]
	add r6, r4, r5
	str r6, [fp, #-32]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-32]
	ldr r6, addr_array0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	str r4, [r6]
	ldr r4, [fp, #-12]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L240
	b .L244
.L234:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L228
	b .L311
.L237:
	b .L234
.L240:
	mov r4, #0
	ldr r5, addr_array0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =0
	str r4, [r5]
	ldr r4, [fp, #-32]
	mov r0, r4
	mov r1, #0
	bl mmerge
	b .L241
.L241:
	ldr r4, [fp, #-12]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	moveq r4, #1
	movne r4, #0
	beq .L245
	b .L249
.L244:
	b .L241
.L245:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-28]
	ldr r6, addr_array0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	str r4, [r6]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-28]
	mov r0, r4
	mov r1, r5
	bl mmerge
	b .L246
.L246:
	ldr r4, [fp, #-16]
	ldr r5, addr_n0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L252
	b .L255
.L249:
	b .L246
.L250:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-32]
	add r6, r5, #1
	mov r0, r4
	mov r1, r6
	bl mmerge
	b .L251
.L251:
	ldr r4, [fp, #-16]
	cmp r4, #1
	movgt r4, #1
	movle r4, #0
	bgt .L262
	b .L265
	b .F0
.LTORG
addr_array0:
	.word array
addr_n0:
	.word n
.F0:
.L252:
	ldr r4, [fp, #-32]
	add r5, r4, #1
	ldr r4, addr_array1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L250
	b .L259
.L255:
	b .L251
.L259:
	b .L251
.L260:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-32]
	sub r6, r5, #1
	mov r0, r4
	mov r1, r6
	bl mmerge
	b .L261
.L261:
	ldr r4, [fp, #-12]
	ldr r5, addr_n1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L272
	b .L275
.L262:
	ldr r4, [fp, #-32]
	sub r5, r4, #1
	ldr r4, addr_array1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L260
	b .L269
.L265:
	b .L261
.L269:
	b .L261
.L270:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-32]
	ldr r6, addr_n1
	ldr r7, [r6]
	add r6, r5, r7
	mov r0, r4
	mov r1, r6
	bl mmerge
	b .L271
.L271:
	ldr r4, [fp, #-12]
	cmp r4, #1
	movgt r4, #1
	movle r4, #0
	bgt .L282
	b .L285
.L272:
	ldr r4, [fp, #-32]
	ldr r5, addr_n1
	ldr r6, [r5]
	add r5, r4, r6
	ldr r4, addr_array1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L270
	b .L279
.L275:
	b .L271
.L279:
	b .L271
.L280:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-32]
	ldr r6, addr_n1
	ldr r7, [r6]
	sub r6, r5, r7
	mov r0, r4
	mov r1, r6
	bl mmerge
	b .L281
.L281:
	mov r4, #0
	ldr r5, addr_array1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movne r4, #1
	moveq r4, #0
	bne .L293
	b .L297
.L282:
	ldr r4, [fp, #-32]
	ldr r5, addr_n1
	ldr r6, [r5]
	sub r5, r4, r6
	ldr r4, addr_array1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, #1
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L280
	b .L289
.L285:
	b .L281
.L289:
	b .L281
.L290:
	ldr r4, =1
	str r4, [fp, #-24]
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-36]
	ldr r4, [fp, #-36]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	b .L291
.L291:
	b .L234
.L292:
	mov r0, #0
	bl findfa
	mov r4, r0
	ldr r5, [fp, #-28]
	mov r0, r5
	bl findfa
	mov r5, r0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L290
	b .L304
.L293:
	ldr r4, [fp, #-28]
	ldr r5, addr_array1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, =0
	sub r6, r5, #1
	cmp r4, r6
	movne r4, #1
	moveq r4, #0
	bne .L292
	b .L301
	b .F1
.LTORG
addr_array1:
	.word array
addr_n1:
	.word n
.F1:
.L297:
	b .L291
.L301:
	b .L291
.L304:
	b .L291
.L311:
	b .L229
.L312:
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	b .L313
.L313:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L219
	b .L321
.L316:
	b .L313
.L321:
	b .L220

addr_array2:
	.word array
addr_n2:
	.word n
	.ident "ZWJM"
