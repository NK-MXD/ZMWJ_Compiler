	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global last_char
	.align 4
	.size last_char, 4
last_char:
	.word 32
	.global num
	.align 4
	.size num, 4
num:
	.word 0
	.global other
	.align 4
	.size other, 4
other:
	.word 0
	.global cur_token
	.align 4
	.size cur_token, 4
cur_token:
	.word 0
	.section .rodata
	.global TOKEN_NUM
	.align 4
	.size TOKEN_NUM, 4
TOKEN_NUM:
	.word 0
	.global TOKEN_OTHER
	.align 4
	.size TOKEN_OTHER, 4
TOKEN_OTHER:
	.word 1
	.text
	.global next_char
	.type next_char , %function
next_char:
	push {r3, r4, fp, lr}
	mov fp, sp
.L205:
	bl getch
	mov r1, r0
	ldr r0, addr_last_char0
	str r1, [r0]
	ldr r0, addr_last_char0
	ldr r0, [r0]
	pop {r3, r4, fp, lr}
	bx lr

	.global is_space
	.type is_space , %function
is_space:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L206:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #32
	moveq r0, #1
	movne r0, #0
	beq .L208
	b .L214
.L208:
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L209:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L211:
	ldr r0, [fp, #-4]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L208
	b .L217
.L214:
	b .L211
.L217:
	b .L209

	.global is_num
	.type is_num , %function
is_num:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L218:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #48
	movge r0, #1
	movlt r0, #0
	bge .L223
	b .L226
.L220:
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L221:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L223:
	ldr r0, [fp, #-4]
	cmp r0, #57
	movle r0, #1
	movgt r0, #0
	ble .L220
	b .L229
.L226:
	b .L221
.L229:
	b .L221

	.global next_token
	.type next_token , %function
next_token:
	push {r3, r4, fp, lr}
	mov fp, sp
.L230:
	b .L231
.L231:
	ldr r0, addr_last_char0
	ldr r0, [r0]
	bl is_space
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L232
	b .L235
.L232:
	bl next_char
	ldr r0, addr_last_char0
	ldr r0, [r0]
	bl is_space
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L232
	b .L241
.L233:
	ldr r0, addr_last_char0
	ldr r0, [r0]
	bl is_num
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L243
	b .L247
.L235:
	b .L233
.L241:
	b .L233
.L243:
	ldr r0, addr_last_char0
	ldr r0, [r0]
	sub r1, r0, #48
	ldr r0, addr_num0
	str r1, [r0]
	b .L249
.L244:
	ldr r0, addr_last_char0
	ldr r1, [r0]
	ldr r0, addr_other0
	str r1, [r0]
	bl next_char
	ldr r0, addr_TOKEN_OTHER0
	ldr r1, [r0]
	ldr r0, addr_cur_token0
	str r1, [r0]
	b .L245
.L245:
	ldr r0, addr_cur_token0
	ldr r0, [r0]
	pop {r3, r4, fp, lr}
	bx lr
.L247:
	b .L244
.L249:
	bl next_char
	bl is_num
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L250
	b .L253
.L250:
	ldr r0, addr_num0
	ldr r1, [r0]
	ldr r0, =10
	mul r1, r1, r0
	ldr r0, addr_last_char0
	ldr r0, [r0]
	add r0, r1, r0
	sub r1, r0, #48
	ldr r0, addr_num0
	str r1, [r0]
	bl next_char
	bl is_num
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L250
	b .L259
.L251:
	ldr r0, addr_TOKEN_NUM0
	ldr r1, [r0]
	ldr r0, addr_cur_token0
	str r1, [r0]
	b .L245
.L253:
	b .L251
.L259:
	b .L251

	.global panic
	.type panic , %function
panic:
	push {r3, r4, fp, lr}
	mov fp, sp
.L261:
	mov r0, #112
	bl putch
	mov r0, #97
	bl putch
	mov r0, #110
	bl putch
	mov r0, #105
	bl putch
	mov r0, #99
	bl putch
	mov r0, #33
	bl putch
	mov r0, #10
	bl putch
	ldr r0, =0
	sub r0, r0, #1
	pop {r3, r4, fp, lr}
	bx lr

	.global get_op_prec
	.type get_op_prec , %function
get_op_prec:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L262:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L264
	b .L269
.L264:
	mov r0, #10
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L265:
	ldr r0, [fp, #-4]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L273
	b .L279
.L266:
	ldr r0, [fp, #-4]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L264
	b .L272
.L269:
	b .L266
.L272:
	b .L265
.L273:
	mov r0, #20
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L274:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L275:
	ldr r0, [fp, #-4]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L273
	b .L285
.L276:
	ldr r0, [fp, #-4]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L273
	b .L282
.L279:
	b .L276
.L282:
	b .L275
.L285:
	b .L274

	.global stack_push
	.type stack_push , %function
stack_push:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L286:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	mov r3, #0
	mov r2, #4
	mla r2, r3, r2, r1
	ldr r2, [r2]
	add r4, r2, #1
	mov r3, #0
	mov r2, #4
	mla r2, r3, r2, r1
	str r4, [r2]
	ldr r4, [fp, #-8]
	ldr r3, [r2]
	mov r2, #4
	mla r1, r3, r2, r1
	str r4, [r1]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global stack_pop
	.type stack_pop , %function
stack_pop:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L295:
	str r0, [fp, #-4]
	mov r3, r0
	mov r1, #0
	mov r0, #4
	mla r2, r1, r0, r3
	ldr r1, [r2]
	mov r0, #4
	mla r0, r1, r0, r3
	ldr r1, [r0]
	ldr r0, [r2]
	sub r0, r0, #1
	str r0, [r2]
	mov r0, r1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global stack_peek
	.type stack_peek , %function
stack_peek:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L305:
	str r0, [fp, #-4]
	mov r2, r0
	mov r0, #0
	mov r1, #4
	mla r0, r0, r1, r2
	ldr r1, [r0]
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global stack_size
	.type stack_size , %function
stack_size:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L311:
	str r0, [fp, #-4]
	mov r1, r0
	mov r2, #0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global eval_op
	.type eval_op , %function
eval_op:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L315:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r0, [fp, #-4]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L319
	b .L323
.L319:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	add r0, r1, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L320:
	ldr r0, [fp, #-4]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L324
	b .L328
.L323:
	b .L320
.L324:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L325:
	ldr r0, [fp, #-4]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L329
	b .L333
.L328:
	b .L325
.L329:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	mul r0, r1, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L330:
	ldr r0, [fp, #-4]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L334
	b .L338
.L333:
	b .L330
.L334:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	sdiv r0, r1, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L335:
	ldr r0, [fp, #-4]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L339
	b .L343
.L338:
	b .L335
.L339:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-12]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L340:
	mov r0, #0
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L343:
	b .L340

	.global eval
	.type eval , %function
eval:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =2056
	sub sp, sp, r4
.L344:
	ldr r0, =-1024
	add r0, fp, r0
	mov r1, #0
	ldr r2, =1024
	bl memset
	ldr r0, =-2048
	add r0, fp, r0
	mov r1, #0
	ldr r2, =1024
	bl memset
	ldr r0, addr_cur_token0
	ldr r1, [r0]
	ldr r0, addr_TOKEN_NUM0
	ldr r0, [r0]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L349
	b .L353
.L349:
	bl panic
	ldr r1, =2056
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L350:
	mov r1, #0
	ldr r2, =-1024
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_num0
	ldr r1, [r0]
	mov r0, r2
	bl stack_push
	bl next_token
	b .L354
.L353:
	b .L350
.L354:
	ldr r0, addr_cur_token0
	ldr r1, [r0]
	ldr r0, addr_TOKEN_OTHER0
	ldr r0, [r0]
	ldr r2, =0
	mov r6, r2
	ldr r2, =0
	mov r5, r2
	ldr r2, =0
	mov r4, r2
	ldr r2, =0
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L355
	b .L359
.L355:
	ldr r0, addr_other0
	ldr r1, [r0]
	ldr r0, =-2052
	str r1, [fp, r0]
	ldr r0, =-2052
	ldr r0, [fp, r0]
	bl get_op_prec
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L361
	b .L365
.L356:
	bl next_token
	b .L409
.L359:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L356
.L361:
	b .L356
.L362:
	bl next_token
	b .L368
.L365:
	b .L362
.L368:
	mov r1, #0
	ldr r2, =-2048
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl stack_size
	mov r10, r6
	mov r9, r5
	mov r7, r4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L391
	b .L373
.L369:
	mov r1, #0
	ldr r2, =-2048
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r7, r0, r1
	mov r0, r7
	bl stack_pop
	mov r8, r0
	mov r1, #0
	ldr r2, =-1024
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r4
	bl stack_pop
	mov r6, r0
	mov r0, r4
	bl stack_pop
	mov r5, r0
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl eval_op
	mov r1, r0
	mov r0, r4
	bl stack_push
	mov r0, r7
	bl stack_size
	mov r10, r5
	mov r9, r6
	mov r7, r8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L391
	b .L393
.L370:
	mov r1, #0
	ldr r2, =-2048
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r1, =-2052
	ldr r1, [fp, r1]
	bl stack_push
	ldr r0, addr_cur_token0
	ldr r1, [r0]
	ldr r0, addr_TOKEN_NUM0
	ldr r0, [r0]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L398
	b .L402
.L373:
	mov r10, r6
	b .L370
.L391:
	mov r1, #0
	ldr r2, =-2048
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl stack_peek
	bl get_op_prec
	mov r4, r0
	ldr r0, =-2052
	ldr r0, [fp, r0]
	bl get_op_prec
	cmp r4, r0
	movge r0, #1
	movlt r0, #0
	bge .L369
	b .L397
	b .F0
.LTORG
addr_TOKEN_NUM0:
	.word TOKEN_NUM
addr_TOKEN_OTHER0:
	.word TOKEN_OTHER
addr_last_char0:
	.word last_char
addr_num0:
	.word num
addr_other0:
	.word other
addr_cur_token0:
	.word cur_token
.F0:
.L393:
	mov r10, r5
	mov r5, r6
	mov r4, r8
	b .L370
.L397:
	mov r5, r9
	mov r4, r7
	b .L370
.L398:
	bl panic
	ldr r1, =2056
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L399:
	mov r1, #0
	ldr r2, =-1024
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	ldr r0, addr_num1
	ldr r1, [r0]
	mov r0, r2
	bl stack_push
	bl next_token
	ldr r0, addr_cur_token1
	ldr r1, [r0]
	ldr r0, addr_TOKEN_OTHER1
	ldr r0, [r0]
	mov r6, r10
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L355
	b .L408
.L402:
	b .L399
.L408:
	b .L356
.L409:
	mov r1, #0
	ldr r2, =-2048
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl stack_size
	mov r1, r0
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	cmp r1, #0
	movne r0, #1
	moveq r0, #0
	bne .L410
	b .L413
.L410:
	mov r1, #0
	ldr r2, =-2048
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r7, r0, r1
	mov r0, r7
	bl stack_pop
	mov r6, r0
	mov r1, #0
	ldr r2, =-1024
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r4
	bl stack_pop
	mov r5, r0
	mov r0, r4
	bl stack_pop
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl eval_op
	mov r1, r0
	mov r0, r4
	bl stack_push
	mov r0, r7
	bl stack_size
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L508
	b .L422
.L411:
	mov r1, #0
	ldr r2, =-1024
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl stack_peek
	ldr r1, =2056
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
.L413:
	ldr r0, =0
	ldr r0, =0
	ldr r0, =0
	b .L411
.L422:
	b .L411
.L508:
	b .L410

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L424:
	bl getint
	mov r5, r0
	bl getch
	bl next_token
	b .L426
.L426:
	mov r4, r5
	cmp r5, #0
	movne r0, #1
	moveq r0, #0
	bne .L427
	b .L430
.L427:
	bl eval
	bl putint
	mov r0, #10
	bl putch
	sub r1, r4, #1
	cmp r1, #0
	movne r0, #1
	moveq r0, #0
	bne .L513
	b .L435
.L428:
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L430:
	b .L428
.L435:
	b .L428
.L513:
	mov r4, r1
	b .L427

addr_TOKEN_NUM1:
	.word TOKEN_NUM
addr_TOKEN_OTHER1:
	.word TOKEN_OTHER
addr_last_char1:
	.word last_char
addr_num1:
	.word num
addr_other1:
	.word other
addr_cur_token1:
	.word cur_token
	.ident "ZWJM"
