	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global last_char
	.align 4
	.size last_char, 4
last_char:
	.word 0
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
	.word 0
	.text
	.global next_char
	.type next_char , %function
next_char:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L205:
	bl getch
	mov r4, r0
	ldr r5, addr_last_char0
	str r4, [r5]
	ldr r4, addr_last_char0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr

	.global is_space
	.type is_space , %function
is_space:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L206:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #32
	moveq r4, #1
	movne r4, #0
	beq .L208
	b .L214
.L208:
	mov r0, #1
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L209:
	mov r0, #0
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L211:
	ldr r4, [fp, #-4]
	cmp r4, #10
	moveq r4, #1
	movne r4, #0
	beq .L208
	b .L217
.L214:
	b .L211
.L217:
	b .L209

	.global is_num
	.type is_num , %function
is_num:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L218:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #48
	movge r4, #1
	movlt r4, #0
	bge .L223
	b .L226
.L220:
	mov r0, #1
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L221:
	mov r0, #0
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L223:
	ldr r4, [fp, #-4]
	cmp r4, #57
	movle r4, #1
	movgt r4, #0
	ble .L220
	b .L229
.L226:
	b .L221
.L229:
	b .L221

	.global next_token
	.type next_token , %function
next_token:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L230:
	b .L231
.L231:
	ldr r4, addr_last_char0
	ldr r5, [r4]
	mov r0, r5
	bl is_space
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L232
	b .L235
.L232:
	bl next_char
	mov r4, r0
	ldr r4, addr_last_char0
	ldr r5, [r4]
	mov r0, r5
	bl is_space
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L232
	b .L241
.L233:
	ldr r4, addr_last_char0
	ldr r5, [r4]
	mov r0, r5
	bl is_num
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L243
	b .L247
.L235:
	b .L233
.L241:
	b .L233
.L243:
	ldr r4, addr_last_char0
	ldr r5, [r4]
	sub r4, r5, #48
	ldr r5, addr_num0
	str r4, [r5]
	b .L249
.L244:
	ldr r4, addr_last_char0
	ldr r5, [r4]
	ldr r4, addr_other0
	str r5, [r4]
	bl next_char
	mov r4, r0
	ldr r4, addr_TOKEN_OTHER0
	ldr r5, [r4]
	ldr r4, addr_cur_token0
	str r5, [r4]
	b .L245
.L245:
	ldr r4, addr_cur_token0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #0
	pop {r4, r5, r6, fp, lr}
	bx lr
.L247:
	b .L244
.L249:
	bl next_char
	mov r4, r0
	mov r0, r4
	bl is_num
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L250
	b .L253
.L250:
	ldr r4, addr_num0
	ldr r5, [r4]
	ldr r4, =10
	mul r6, r5, r4
	ldr r4, addr_last_char0
	ldr r5, [r4]
	add r4, r6, r5
	sub r5, r4, #48
	ldr r4, addr_num0
	str r5, [r4]
	bl next_char
	mov r4, r0
	mov r0, r4
	bl is_num
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L250
	b .L259
.L251:
	ldr r4, addr_TOKEN_NUM0
	ldr r5, [r4]
	ldr r4, addr_cur_token0
	str r5, [r4]
	b .L245
.L253:
	b .L251
.L259:
	b .L251

	.global panic
	.type panic , %function
panic:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
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
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr

	.global get_op_prec
	.type get_op_prec , %function
get_op_prec:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L262:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #43
	moveq r4, #1
	movne r4, #0
	beq .L264
	b .L269
.L264:
	mov r0, #10
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L265:
	ldr r4, [fp, #-4]
	cmp r4, #42
	moveq r4, #1
	movne r4, #0
	beq .L273
	b .L279
.L266:
	ldr r4, [fp, #-4]
	cmp r4, #45
	moveq r4, #1
	movne r4, #0
	beq .L264
	b .L272
.L269:
	b .L266
.L272:
	b .L265
.L273:
	mov r0, #20
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L274:
	mov r0, #0
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L275:
	ldr r4, [fp, #-4]
	cmp r4, #37
	moveq r4, #1
	movne r4, #0
	beq .L273
	b .L285
.L276:
	ldr r4, [fp, #-4]
	cmp r4, #47
	moveq r4, #1
	movne r4, #0
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
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L286:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	add r5, r4, #1
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	str r5, [r6]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r7, #0
	mov r8, #4
	mul r9, r7, r8
	add r7, r6, r9
	ldr r6, [r7]
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	str r4, [r6]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

	.global stack_pop
	.type stack_pop , %function
stack_pop:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L295:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	sub r5, r4, #1
	ldr r4, [fp, #-4]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	str r5, [r6]
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global stack_peek
	.type stack_peek , %function
stack_peek:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L305:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r6, #0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global stack_size
	.type stack_size , %function
stack_size:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L311:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global eval_op
	.type eval_op , %function
eval_op:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L315:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, [fp, #-4]
	cmp r4, #43
	moveq r4, #1
	movne r4, #0
	beq .L319
	b .L323
.L319:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	add r6, r4, r5
	mov r0, r6
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L320:
	ldr r4, [fp, #-4]
	cmp r4, #45
	moveq r4, #1
	movne r4, #0
	beq .L324
	b .L328
.L323:
	b .L320
.L324:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	sub r6, r4, r5
	mov r0, r6
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L325:
	ldr r4, [fp, #-4]
	cmp r4, #42
	moveq r4, #1
	movne r4, #0
	beq .L329
	b .L333
.L328:
	b .L325
.L329:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	mul r6, r4, r5
	mov r0, r6
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L330:
	ldr r4, [fp, #-4]
	cmp r4, #47
	moveq r4, #1
	movne r4, #0
	beq .L334
	b .L338
.L333:
	b .L330
.L334:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	sdiv r6, r4, r5
	mov r0, r6
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L335:
	ldr r4, [fp, #-4]
	cmp r4, #37
	moveq r4, #1
	movne r4, #0
	beq .L339
	b .L343
.L338:
	b .L335
.L339:
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	mov r0, r5
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L340:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L343:
	b .L340

	.global eval
	.type eval , %function
eval:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =2076
	sub sp, sp, r4
.L344:
	ldr r4, =-1024
	add r0, fp, r4
	mov r1, #0
	ldr r4, =1024
	mov r2, r4
	bl memset
	ldr r4, =-2048
	add r0, fp, r4
	mov r1, #0
	ldr r4, =1024
	mov r2, r4
	bl memset
	ldr r4, addr_cur_token0
	ldr r5, [r4]
	ldr r4, addr_TOKEN_NUM0
	ldr r6, [r4]
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L861
	b .L865
.L861:
	bl panic
	mov r4, r0
	mov r0, r4
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L862:
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, addr_num0
	ldr r6, [r4]
	mov r0, r5
	mov r1, r6
	bl stack_push
	bl next_token
	mov r4, r0
	b .L866
.L865:
	b .L862
.L866:
	ldr r4, addr_cur_token0
	ldr r5, [r4]
	ldr r4, addr_TOKEN_OTHER0
	ldr r6, [r4]
	cmp r5, r6
	moveq r4, #1
	movne r4, #0
	beq .L867
	b .L871
.L867:
	ldr r4, addr_other0
	ldr r5, [r4]
	ldr r4, =-2052
	str r5, [fp, r4]
	ldr r5, =-2052
	ldr r4, [fp, r5]
	mov r0, r4
	bl get_op_prec
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L873
	b .L877
.L868:
	bl next_token
	mov r4, r0
	b .L921
.L871:
	b .L868
.L873:
	b .L868
.L874:
	bl next_token
	mov r4, r0
	b .L880
.L877:
	b .L874
.L880:
	mov r4, #0
	ldr r5, =-2048
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_size
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L903
	b .L885
.L881:
	mov r4, #0
	ldr r5, =-2048
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_pop
	mov r4, r0
	ldr r5, =-2056
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_pop
	mov r4, r0
	ldr r5, =-2060
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_pop
	mov r4, r0
	ldr r5, =-2064
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r6, =-2056
	ldr r4, [fp, r6]
	ldr r7, =-2064
	ldr r6, [fp, r7]
	ldr r8, =-2060
	ldr r7, [fp, r8]
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl eval_op
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl stack_push
	mov r4, #0
	ldr r5, =-2048
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_size
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L903
	b .L905
.L882:
	mov r4, #0
	ldr r5, =-2048
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r6, =-2052
	ldr r4, [fp, r6]
	mov r0, r5
	mov r1, r4
	bl stack_push
	ldr r4, addr_cur_token0
	ldr r5, [r4]
	ldr r4, addr_TOKEN_NUM0
	ldr r6, [r4]
	cmp r5, r6
	movne r4, #1
	moveq r4, #0
	bne .L910
	b .L914
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
.L885:
	b .L882
.L903:
	mov r4, #0
	ldr r5, =-2048
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_peek
	mov r4, r0
	mov r0, r4
	bl get_op_prec
	mov r4, r0
	ldr r6, =-2052
	ldr r5, [fp, r6]
	mov r0, r5
	bl get_op_prec
	mov r5, r0
	cmp r4, r5
	movge r4, #1
	movlt r4, #0
	bge .L881
	b .L909
.L905:
	b .L882
.L909:
	b .L882
.L910:
	bl panic
	mov r4, r0
	mov r0, r4
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L911:
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, addr_num1
	ldr r6, [r4]
	mov r0, r5
	mov r1, r6
	bl stack_push
	bl next_token
	mov r4, r0
	ldr r4, addr_cur_token1
	ldr r5, [r4]
	ldr r4, addr_TOKEN_OTHER1
	ldr r6, [r4]
	cmp r5, r6
	moveq r4, #1
	movne r4, #0
	beq .L867
	b .L920
.L914:
	b .L911
.L920:
	b .L868
.L921:
	mov r4, #0
	ldr r5, =-2048
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_size
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L922
	b .L925
.L922:
	mov r4, #0
	ldr r5, =-2048
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_pop
	mov r4, r0
	ldr r5, =-2068
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_pop
	mov r4, r0
	ldr r5, =-2072
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_pop
	mov r4, r0
	ldr r5, =-2076
	str r4, [fp, r5]
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r6, =-2068
	ldr r4, [fp, r6]
	ldr r7, =-2076
	ldr r6, [fp, r7]
	ldr r8, =-2072
	ldr r7, [fp, r8]
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl eval_op
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl stack_push
	mov r4, #0
	ldr r5, =-2048
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_size
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L922
	b .L934
.L923:
	mov r4, #0
	ldr r5, =-1024
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl stack_peek
	mov r4, r0
	mov r0, r4
	ldr r1, =2076
	add sp, sp, r1
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L925:
	b .L923
.L934:
	b .L923

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L936:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getch
	mov r4, r0
	bl next_token
	mov r4, r0
	b .L938
.L938:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L939
	b .L942
.L939:
	bl eval
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L939
	b .L947
.L940:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L942:
	b .L940
.L947:
	b .L940

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
