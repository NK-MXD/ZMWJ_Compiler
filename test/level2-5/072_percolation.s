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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L174:
	str r0, [fp, #-4]
	b .L177
.L177:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-4]
	mul r1, r2, r1
	add r2, r1, #1
	ldr r1, =1
	mov r3, r1
	ldr r1, =1
	cmp r1, r2
	movle r1, #1
	movgt r1, #0
	ble .L178
	b .L182
.L178:
	ldr r1, =0
	sub r4, r1, #1
	ldr r2, addr_array0
	mov r1, #4
	mla r1, r3, r1, r2
	str r4, [r1]
	add r3, r3, #1
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-4]
	mul r1, r2, r1
	add r1, r1, #1
	cmp r3, r1
	movle r1, #1
	movgt r1, #0
	ble .L414
	b .L191
.L179:
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L182:
	ldr r1, =1
	b .L179
.L191:
	b .L179
.L414:
	b .L178

	.global findfa
	.type findfa , %function
findfa:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L192:
	str r0, [fp, #-4]
	mov r2, r0
	ldr r1, addr_array0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L194
	b .L200
.L194:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L195:
	ldr r0, [fp, #-4]
	ldr r2, addr_array0
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r0, [r0]
	bl findfa
	mov r3, r0
	ldr r1, [fp, #-4]
	ldr r0, addr_array0
	mov r2, #4
	mla r0, r1, r2, r0
	str r3, [r0]
	ldr r2, [fp, #-4]
	ldr r1, addr_array0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L200:
	b .L195

	.global mmerge
	.type mmerge , %function
mmerge:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L203:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r0, [fp, #-4]
	bl findfa
	mov r4, r0
	ldr r0, [fp, #-8]
	bl findfa
	mov r3, r0
	cmp r4, r3
	movne r1, #1
	moveq r1, #0
	bne .L208
	b .L212
.L208:
	ldr r2, addr_array0
	mov r1, #4
	mla r1, r4, r1, r2
	str r3, [r1]
	b .L209
.L209:
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L212:
	b .L209

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L213:
	b .L218
.L218:
	ldr r0, =0
	mov r6, r0
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	mov r9, r0
	ldr r0, =0
	ldr r0, =1
	ldr r1, =1
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L219
	b .L222
.L219:
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, =4
	ldr r0, addr_n0
	str r1, [r0]
	ldr r0, addr_n0
	ldr r0, [r0]
	bl init
	ldr r0, addr_n0
	ldr r1, [r0]
	ldr r0, addr_n0
	ldr r0, [r0]
	mul r0, r1, r0
	add r8, r0, #1
	b .L227
.L220:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L222:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =1
	b .L220
.L227:
	mov r10, r6
	mov r5, r4
	ldr r0, =0
	mov r7, r0
	ldr r0, =0
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	mov r0, r9
	ldr r0, =0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L228
	b .L232
.L228:
	bl getint
	mov r6, r0
	bl getint
	mov r9, r0
	cmp r7, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L233
	b .L237
.L229:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L312
	b .L316
.L232:
	mov r8, r6
	ldr r0, =0
	ldr r1, =0
	ldr r1, [fp, #-4]
	mov r5, r1
	mov r7, r9
	b .L229
.L233:
	ldr r0, addr_n0
	ldr r1, [r0]
	sub r0, r6, #1
	mla r4, r1, r0, r9
	ldr r1, addr_array0
	mov r0, #4
	mla r0, r4, r0, r1
	str r4, [r0]
	cmp r6, #1
	moveq r0, #1
	movne r0, #0
	beq .L240
	b .L244
.L234:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	mov r10, r3
	mov r5, r2
	mov r7, r1
	mov r4, r0
	str r4, [fp, #-12]
	mov r4, r9
	mov r4, r6
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L228
	b .L311
.L237:
	mov r3, r10
	mov r2, r5
	mov r1, r7
	b .L234
.L240:
	mov r2, #0
	ldr r1, addr_array0
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =0
	str r0, [r1]
	mov r0, r4
	mov r1, #0
	bl mmerge
	b .L241
.L241:
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r6, r0
	moveq r0, #1
	movne r0, #0
	beq .L245
	b .L249
.L244:
	b .L241
.L245:
	ldr r1, addr_array0
	mov r0, #4
	mla r0, r8, r0, r1
	str r8, [r0]
	mov r0, r4
	mov r1, r8
	bl mmerge
	b .L246
.L246:
	ldr r0, addr_n0
	ldr r0, [r0]
	cmp r9, r0
	movlt r0, #1
	movge r0, #0
	blt .L252
	b .L255
.L249:
	b .L246
.L250:
	add r1, r4, #1
	mov r0, r4
	bl mmerge
	b .L251
	b .F0
.LTORG
addr_array0:
	.word array
addr_n0:
	.word n
.F0:
.L251:
	cmp r9, #1
	movgt r0, #1
	movle r0, #0
	bgt .L262
	b .L265
.L252:
	add r0, r4, #1
	ldr r1, addr_array1
	mov r2, #4
	mla r0, r0, r2, r1
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L250
	b .L259
.L255:
	b .L251
.L259:
	b .L251
.L260:
	sub r1, r4, #1
	mov r0, r4
	bl mmerge
	b .L261
.L261:
	ldr r0, addr_n1
	ldr r0, [r0]
	cmp r6, r0
	movlt r0, #1
	movge r0, #0
	blt .L272
	b .L275
.L262:
	sub r0, r4, #1
	ldr r1, addr_array1
	mov r2, #4
	mla r0, r0, r2, r1
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L260
	b .L269
.L265:
	b .L261
.L269:
	b .L261
.L270:
	ldr r0, addr_n1
	ldr r0, [r0]
	add r1, r4, r0
	mov r0, r4
	bl mmerge
	b .L271
.L271:
	cmp r6, #1
	movgt r0, #1
	movle r0, #0
	bgt .L282
	b .L285
.L272:
	ldr r0, addr_n1
	ldr r0, [r0]
	add r0, r4, r0
	ldr r1, addr_array1
	mov r2, #4
	mla r0, r0, r2, r1
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L270
	b .L279
.L275:
	b .L271
.L279:
	b .L271
.L280:
	ldr r0, addr_n1
	ldr r0, [r0]
	sub r1, r4, r0
	mov r0, r4
	bl mmerge
	b .L281
.L281:
	mov r2, #0
	ldr r1, addr_array1
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L293
	b .L297
.L282:
	ldr r0, addr_n1
	ldr r0, [r0]
	sub r0, r4, r0
	ldr r1, addr_array1
	mov r2, #4
	mla r0, r0, r2, r1
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L280
	b .L289
.L285:
	b .L281
.L289:
	b .L281
.L290:
	ldr r0, [fp, #-12]
	add r5, r0, #1
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	mov r1, r5
	ldr r0, =1
	b .L291
.L291:
	mov r3, r1
	mov r2, r4
	mov r1, r0
	b .L234
.L292:
	mov r0, #0
	bl findfa
	mov r5, r0
	mov r0, r8
	bl findfa
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
	beq .L290
	b .L304
.L293:
	ldr r1, addr_array1
	mov r0, #4
	mla r0, r8, r0, r1
	ldr r1, [r0]
	ldr r0, =0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L292
	b .L301
.L297:
	mov r1, r10
	mov r0, r7
	b .L291
.L301:
	mov r1, r10
	mov r0, r7
	b .L291
.L304:
	mov r1, r10
	mov r0, r7
	b .L291
.L311:
	mov r8, r3
	mov r4, r2
	mov r0, r1
	mov r5, r9
	mov r7, r6
	b .L229
.L312:
	ldr r0, =0
	sub r0, r0, #1
	bl putint
	mov r0, #10
	bl putch
	b .L313
.L313:
	mov r6, r8
	str r5, [fp, #-4]
	mov r9, r7
	ldr r0, =10
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-8]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L219
	b .L321
	b .F1
.LTORG
addr_array1:
	.word array
addr_n1:
	.word n
.F1:
.L316:
	b .L313
.L321:
	ldr r0, =10
	b .L220

addr_array2:
	.word array
addr_n2:
	.word n
	.ident "ZWJM"
