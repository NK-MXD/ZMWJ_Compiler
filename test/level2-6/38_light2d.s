	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global seed
	.align 4
	.size seed, 4
seed:
	.word 0
	.section .rodata
	.global W
	.align 4
	.size W, 4
W:
	.word 0
	.global H
	.align 4
	.size H, 4
H:
	.word 0
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.global PI
	.align 4
	.size PI, 4
PI:
	.word 0
	.global TWO_PI
	.align 4
	.size TWO_PI, 4
TWO_PI:
	.word 0
	.global MAX_STEP
	.align 4
	.size MAX_STEP, 4
MAX_STEP:
	.word 0
	.global MAX_DISTANCE
	.align 4
	.size MAX_DISTANCE, 4
MAX_DISTANCE:
	.word 0
	.global EPSILON
	.align 4
	.size EPSILON, 4
EPSILON:
	.word 0
	.global RAND_MAX
	.align 4
	.size RAND_MAX, 4
RAND_MAX:
	.word 0
	.text
	.global rand
	.type rand , %function
rand:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L329:
	ldr r4, addr_seed0
	ldr r5, [r4]
	ldr r4, =19980130
	mul r6, r5, r4
	ldr r4, =23333
	add r5, r6, r4
	ldr r4, =100000007
	sdiv r6, r5, r4
	mul r7, r6, r4
	sub r4, r5, r7
	ldr r5, addr_seed0
	str r4, [r5]
	ldr r4, addr_seed0
	ldr r5, [r4]
	cmp r5, #0
	movlt r4, #1
	movge r4, #0
	blt .L330
	b .L334
.L330:
	ldr r4, addr_seed0
	ldr r5, [r4]
	ldr r4, =100000007
	add r6, r5, r4
	ldr r4, addr_seed0
	str r6, [r4]
	b .L331
.L331:
	ldr r4, addr_seed0
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #0
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L334:
	b .L331

	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r4, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L335:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L337
	b .L341
.L337:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L338:
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vmov r16, r23
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L341:
	b .L338

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r4, r5, r21, r22, r23, r24, r25, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L342:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =8
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	ldr r4, =1056964608
	vmov r21, r4
	ldr r4, =2
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	ldr r4, =4
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	vcvt.s32.f32  r21, r22
	vmov r4, r21
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-12]
	b .L346
.L346:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L347
	b .L350
.L347:
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	ldr r4, [fp, #-8]
	vmov r23, r4
	vcvt.f32.s32  r24, r23
	ldr r4, =2
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcvt.s32.f32  r21, r22
	vmov r4, r21
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L347
	b .L355
.L348:
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #12
	pop {r4, r5, r21, r22, r23, r24, r25, fp, lr}
	bx lr
.L350:
	b .L348
.L355:
	b .L348

	.global p
	.type p , %function
p:
	push {r4, r21, r22, r23, r24, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L357:
	vstr.32 r16, [fp, #-4]
	ldr r4, =3
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	ldr r4, =4
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r21, r22, r23, r24, fp, lr}
	bx lr

	.global my_sin_impl
	.type my_sin_impl , %function
my_sin_impl:
	push {r4, r5, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L359:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	bl my_fabs
	vmov r21, r16
	ldr r4, addr_EPSILON0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movle r4, #1
	movgt r4, #0
	ble .L361
	b .L365
.L361:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r5, r21, r22, r23, fp, lr}
	bx lr
.L362:
	vldr.32 r21, [fp, #-4]
	ldr r4, =1077936128
	vmov r22, r4
	vmov r16, r23
	bl my_sin_impl
	vmov r21, r16
	vmov r16, r21
	bl p
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r5, r21, r22, r23, fp, lr}
	bx lr
.L365:
	b .L362

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r4, r5, r6, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L366:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L368
	b .L373
.L368:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcvt.s32.f32  r21, r22
	vmov r4, r21
	str r4, [fp, #-8]
	vldr.32 r21, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, addr_TWO_PI0
	ldr r6, [r5]
	mul r5, r4, r6
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	b .L369
.L369:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L378
	b .L382
.L370:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, r5
	vmov r22, r6
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L368
	b .L376
.L373:
	b .L370
.L376:
	b .L369
.L378:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	b .L379
.L379:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, r5
	vmov r22, r6
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L383
	b .L387
.L382:
	b .L379
.L383:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	b .L384
.L384:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	bl my_sin_impl
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #8
	pop {r4, r5, r6, r21, r22, r23, fp, lr}
	bx lr
.L387:
	b .L384

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r4, r5, r6, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L388:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	vmov r22, r6
	vcvt.f32.s32  r23, r22
	vmov r16, r22
	bl my_sin
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r5, r6, r21, r22, r23, fp, lr}
	bx lr

	.global circle_sdf
	.type circle_sdf , %function
circle_sdf:
	push {r4, r5, r6, r7, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L390:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	vstr.32 r18, [fp, #-12]
	vstr.32 r19, [fp, #-16]
	vstr.32 r20, [fp, #-20]
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-12]
	vcvt.s32.f32  r21, r23
	vmov r4, r21
	str r4, [fp, #-24]
	vldr.32 r21, [fp, #-8]
	vldr.32 r22, [fp, #-16]
	vcvt.s32.f32  r21, r23
	vmov r4, r21
	str r4, [fp, #-28]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-24]
	mul r6, r4, r5
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-28]
	mul r7, r4, r5
	add r4, r6, r7
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	bl my_sqrt
	vmov r21, r16
	vldr.32 r22, [fp, #-20]
	vmov r16, r23
	add sp, sp, #28
	pop {r4, r5, r6, r7, r21, r22, r23, fp, lr}
	bx lr

	.global scene
	.type scene , %function
scene:
	push {r4, r5, r6, r7, r21, r22, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L398:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	str r0, [fp, #-12]
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-8]
	vmov r16, r21
	vmov r17, r22
	ldr r4, =1053609165
	vmov r18, r4
	ldr r4, =1053609165
	vmov r19, r4
	ldr r4, =1036831949
	vmov r20, r4
	bl circle_sdf
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-16]
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-8]
	vmov r16, r21
	vmov r17, r22
	ldr r4, =1058642330
	vmov r18, r4
	ldr r4, =1058642330
	vmov r19, r4
	ldr r4, =1028443341
	vmov r20, r4
	bl circle_sdf
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-20]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L404
	b .L409
.L404:
	ldr r4, [fp, #-16]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =1077936128
	vmov r21, r4
	vstr.32 r21, [r5]
	b .L406
.L405:
	ldr r4, [fp, #-20]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 r22, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov r21, r4
	vstr.32 r21, [r5]
	b .L406
.L406:
	add sp, sp, #20
	pop {r4, r5, r6, r7, r21, r22, fp, lr}
	bx lr
.L409:
	b .L405

	.global trace
	.type trace , %function
trace:
	push {r4, r5, r6, r7, r8, r21, r22, r23, r24, r25, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L414:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	vstr.32 r18, [fp, #-12]
	vstr.32 r19, [fp, #-16]
	ldr r4, =0
	vmov r21, r4
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-24]
	b .L421
.L421:
	ldr r4, [fp, #-24]
	ldr r5, addr_MAX_STEP0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L447
	b .L427
.L422:
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-12]
	ldr r4, [fp, #-20]
	vmov r23, r4
	vcvt.f32.s32  r24, r23
	vldr.32 r21, [fp, #-8]
	vldr.32 r23, [fp, #-16]
	ldr r4, [fp, #-20]
	vmov r24, r4
	vcvt.f32.s32  r25, r24
	mov r4, #0
	mov r5, #-32
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	vmov r16, r22
	vmov r17, r23
	bl scene
	mov r4, #0
	mov r5, #-32
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, addr_EPSILON0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L432
	b .L437
.L423:
	ldr r4, =0
	vmov r16, r4
	add sp, sp, #32
	pop {r4, r5, r6, r7, r8, r21, r22, r23, r24, r25, fp, lr}
	bx lr
.L427:
	b .L423
.L432:
	mov r4, #1
	mov r5, #-32
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #32
	pop {r4, r5, r6, r7, r8, r21, r22, r23, r24, r25, fp, lr}
	bx lr
.L433:
	ldr r4, [fp, #-20]
	mov r5, #0
	mov r6, #-32
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r5, [r6]
	add r6, r4, r5
	str r6, [fp, #-20]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, addr_MAX_STEP0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L447
	b .L450
.L437:
	b .L433
.L447:
	ldr r4, [fp, #-20]
	ldr r5, addr_MAX_DISTANCE0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L422
	b .L453
.L450:
	b .L423
.L453:
	b .L423

	.global sample
	.type sample , %function
sample:
	push {r4, r5, r6, r7, r8, r21, r22, r23, r24, r25, r26, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L454:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	ldr r4, =0
	vmov r21, r4
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L459
.L459:
	ldr r4, [fp, #-16]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L460
	b .L464
.L460:
	bl rand
	mov r4, r0
	str r4, [fp, #-20]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-20]
	ldr r7, addr_RAND_MAX0
	ldr r8, [r7]
	sdiv r7, r6, r8
	add r6, r4, r7
	mul r4, r5, r6
	ldr r5, addr_N0
	ldr r6, [r5]
	sdiv r5, r4, r6
	str r5, [fp, #-24]
	ldr r4, [fp, #-12]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	vldr.32 r23, [fp, #-8]
	ldr r4, [fp, #-24]
	vmov r24, r4
	vcvt.f32.s32  r25, r24
	vmov r16, r25
	bl my_cos
	vmov r24, r16
	ldr r4, [fp, #-24]
	vmov r25, r4
	vcvt.f32.s32  r26, r25
	vmov r16, r26
	bl my_sin
	vmov r25, r16
	vmov r16, r21
	vmov r17, r23
	vmov r18, r24
	vmov r19, r25
	bl trace
	vmov r21, r16
	vcvt.s32.f32  r21, r23
	vmov r4, r21
	str r4, [fp, #-12]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L460
	b .L472
.L461:
	ldr r4, [fp, #-12]
	ldr r5, addr_N0
	ldr r6, [r5]
	sdiv r5, r4, r6
	vmov r21, r5
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #24
	pop {r4, r5, r6, r7, r8, r21, r22, r23, r24, r25, r26, fp, lr}
	bx lr
.L464:
	b .L461
.L472:
	b .L461

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r4, r5, r6, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L473:
	mov r0, #80
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	ldr r4, addr_W0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_H0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	mov r0, #255
	bl putint
	mov r0, #10
	bl putch
	ldr r4, =0
	str r4, [fp, #-4]
	b .L475
.L475:
	ldr r4, [fp, #-4]
	ldr r5, addr_H0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L476
	b .L480
.L476:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L482
.L477:
	add sp, sp, #20
	pop {r4, r5, r6, r21, r22, r23, fp, lr}
	bx lr
.L480:
	b .L477
.L482:
	ldr r4, [fp, #-8]
	ldr r5, addr_W0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L483
	b .L487
.L483:
	ldr r4, [fp, #-8]
	str r4, [fp, #-12]
	ldr r4, [fp, #-4]
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, addr_W0
	ldr r6, [r5]
	sdiv r5, r4, r6
	vmov r21, r5
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-16]
	ldr r5, addr_H0
	ldr r6, [r5]
	sdiv r5, r4, r6
	vmov r21, r5
	vcvt.f32.s32  r23, r21
	vmov r16, r22
	vmov r17, r23
	bl sample
	vmov r21, r16
	ldr r4, =1132396544
	vmov r22, r4
	vcvt.s32.f32  r21, r23
	vmov r4, r21
	str r4, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #255
	movgt r4, #1
	movle r4, #0
	bgt .L491
	b .L495
.L484:
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_H0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L476
	b .L507
.L487:
	b .L484
.L491:
	ldr r4, =255
	str r4, [fp, #-20]
	b .L492
.L492:
	ldr r4, [fp, #-20]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_W0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L483
	b .L501
.L495:
	b .L492
.L501:
	b .L484
.L507:
	b .L477

	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L508:
	bl write_pgm
	mov r0, #0
	add sp, sp, #0
	pop {fp, lr}
	bx lr

addr_W0:
	.word W
addr_H0:
	.word H
addr_N0:
	.word N
addr_PI0:
	.word PI
addr_TWO_PI0:
	.word TWO_PI
addr_MAX_STEP0:
	.word MAX_STEP
addr_MAX_DISTANCE0:
	.word MAX_DISTANCE
addr_EPSILON0:
	.word EPSILON
addr_RAND_MAX0:
	.word RAND_MAX
addr_seed0:
	.word seed
