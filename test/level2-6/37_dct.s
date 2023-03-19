	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global MAX_DIM_X
	.align 4
	.size MAX_DIM_X, 4
MAX_DIM_X:
	.word 0
	.global MAX_DIM_Y
	.align 4
	.size MAX_DIM_Y, 4
MAX_DIM_Y:
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
	.global EPSILON
	.align 4
	.size EPSILON, 4
EPSILON:
	.word 0
	.comm test_block, 256, 4
	.comm test_dct, 256, 4
	.comm test_idct, 256, 4
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r4, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L384:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L386
	b .L390
.L386:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L387:
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vmov r16, r23
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L390:
	b .L387

	.global p
	.type p , %function
p:
	push {r4, r21, r22, r23, r24, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L391:
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
.L393:
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
	ble .L395
	b .L399
.L395:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r5, r21, r22, r23, fp, lr}
	bx lr
.L396:
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
.L399:
	b .L396

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r4, r5, r6, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L400:
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
	bgt .L402
	b .L407
.L402:
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
	b .L403
.L403:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L412
	b .L416
.L404:
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
	blt .L402
	b .L410
.L407:
	b .L404
.L410:
	b .L403
.L412:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	b .L413
.L413:
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
	blt .L417
	b .L421
.L416:
	b .L413
.L417:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	b .L418
.L418:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	bl my_sin_impl
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #8
	pop {r4, r5, r6, r21, r22, r23, fp, lr}
	bx lr
.L421:
	b .L418

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r4, r5, r6, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L422:
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

	.global write_mat
	.type write_mat , %function
write_mat:
	push {r4, r5, r6, r7, r21, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L424:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L429
.L429:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L430
	b .L434
.L430:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r21, [r4]
	vmov r16, r21
	bl putfloat
	ldr r4, =1
	str r4, [fp, #-20]
	b .L439
.L431:
	mov r0, #10
	bl putch
	add sp, sp, #20
	pop {r4, r5, r6, r7, r21, fp, lr}
	bx lr
.L434:
	b .L431
.L439:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L440
	b .L444
.L440:
	mov r0, #32
	bl putch
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-20]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r21, [r4]
	vmov r16, r21
	bl putfloat
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L440
	b .L453
.L441:
	mov r0, #10
	bl putch
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L430
	b .L459
.L444:
	b .L441
.L453:
	b .L441
.L459:
	b .L431

	.global dct
	.type dct , %function
dct:
	push {r4, r5, r6, r7, r21, r22, r23, r24, r25, r26, r27, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L460:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-20]
	b .L466
.L466:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L467
	b .L471
.L467:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L473
.L468:
	add sp, sp, #32
	pop {r4, r5, r6, r7, r21, r22, r23, r24, r25, r26, r27, fp, lr}
	bx lr
.L471:
	b .L468
.L473:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L474
	b .L478
.L474:
	ldr r4, =0
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 r22, [r4]
	ldr r4, =0
	str r4, [fp, #-28]
	b .L482
.L475:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L467
	b .L526
.L478:
	b .L475
.L482:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L483
	b .L487
.L483:
	ldr r4, =0
	str r4, [fp, #-32]
	b .L489
.L484:
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L474
	b .L520
.L487:
	b .L484
.L489:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L490
	b .L494
.L490:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r21, [r4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-28]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-32]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r22, [r4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	sdiv r6, r5, r4
	vmov r23, r6
	vcvt.f32.s32  r24, r23
	ldr r4, [fp, #-28]
	vmov r23, r4
	vcvt.f32.s32  r25, r23
	ldr r4, =1065353216
	vmov r23, r4
	ldr r4, =1073741824
	vmov r26, r4
	ldr r4, [fp, #-20]
	vmov r23, r4
	vcvt.f32.s32  r24, r23
	vmov r16, r23
	bl my_cos
	vmov r23, r16
	ldr r4, addr_PI0
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	sdiv r6, r5, r4
	vmov r22, r6
	vcvt.f32.s32  r23, r22
	ldr r4, [fp, #-32]
	vmov r22, r4
	vcvt.f32.s32  r25, r22
	ldr r4, =1065353216
	vmov r22, r4
	ldr r4, =1073741824
	vmov r26, r4
	ldr r4, [fp, #-24]
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vmov r16, r22
	bl my_cos
	vmov r22, r16
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 r22, [r4]
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L490
	b .L508
	b .F0
.LTORG
addr_MAX_DIM_X0:
	.word MAX_DIM_X
addr_MAX_DIM_Y0:
	.word MAX_DIM_Y
addr_test_block0:
	.word test_block
addr_test_dct0:
	.word test_dct
addr_test_idct0:
	.word test_idct
addr_PI0:
	.word PI
addr_TWO_PI0:
	.word TWO_PI
addr_EPSILON0:
	.word EPSILON
.F0:
.L491:
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L483
	b .L514
.L494:
	b .L491
.L508:
	b .L491
.L514:
	b .L484
.L520:
	b .L475
.L526:
	b .L468

	.global idct
	.type idct , %function
idct:
	push {r4, r5, r6, r7, r21, r22, r23, r24, r25, r26, r27, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L527:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-20]
	b .L533
.L533:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L534
	b .L538
.L534:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L540
.L535:
	add sp, sp, #32
	pop {r4, r5, r6, r7, r21, r22, r23, r24, r25, r26, r27, fp, lr}
	bx lr
.L538:
	b .L535
.L540:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L541
	b .L545
.L541:
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, =1082130432
	vmov r21, r4
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r21, [r4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 r22, [r4]
	ldr r4, =1
	str r4, [fp, #-28]
	b .L553
.L542:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L534
	b .L641
.L545:
	b .L542
.L553:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L554
	b .L558
.L554:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r21, [r4]
	ldr r4, =1
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	ldr r4, =1073741824
	vmov r22, r4
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-28]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r22, [r4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 r22, [r4]
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L554
	b .L572
.L555:
	ldr r4, =1
	str r4, [fp, #-32]
	b .L573
.L558:
	b .L555
.L572:
	b .L555
.L573:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L574
	b .L578
.L574:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r21, [r4]
	ldr r4, =1
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	ldr r4, =1073741824
	vmov r22, r4
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-32]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r22, [r4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 r22, [r4]
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L574
	b .L592
	b .F1
.LTORG
addr_MAX_DIM_X1:
	.word MAX_DIM_X
addr_MAX_DIM_Y1:
	.word MAX_DIM_Y
addr_test_block1:
	.word test_block
addr_test_dct1:
	.word test_dct
addr_test_idct1:
	.word test_idct
addr_PI1:
	.word PI
addr_TWO_PI1:
	.word TWO_PI
addr_EPSILON1:
	.word EPSILON
.F1:
.L575:
	ldr r4, =1
	str r4, [fp, #-28]
	b .L593
.L578:
	b .L575
.L592:
	b .L575
.L593:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L594
	b .L598
.L594:
	ldr r4, =1
	str r4, [fp, #-32]
	b .L599
.L595:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r21, [r4]
	ldr r4, =1073741824
	vmov r22, r4
	ldr r4, [fp, #-12]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, =1073741824
	vmov r22, r4
	ldr r4, [fp, #-16]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 r21, [r4]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L541
	b .L635
.L598:
	b .L595
.L599:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L600
	b .L604
.L600:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r21, [r4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-28]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-32]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 r22, [r4]
	ldr r4, addr_PI2
	ldr r5, [r4]
	ldr r4, [fp, #-12]
	sdiv r6, r5, r4
	vmov r23, r6
	vcvt.f32.s32  r24, r23
	ldr r4, [fp, #-20]
	vmov r23, r4
	vcvt.f32.s32  r25, r23
	ldr r4, =1065353216
	vmov r23, r4
	ldr r4, =1073741824
	vmov r26, r4
	ldr r4, [fp, #-28]
	vmov r23, r4
	vcvt.f32.s32  r24, r23
	vmov r16, r23
	bl my_cos
	vmov r23, r16
	ldr r4, addr_PI2
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	sdiv r6, r5, r4
	vmov r22, r6
	vcvt.f32.s32  r23, r22
	ldr r4, [fp, #-24]
	vmov r22, r4
	vcvt.f32.s32  r25, r22
	ldr r4, =1065353216
	vmov r22, r4
	ldr r4, =1073741824
	vmov r26, r4
	ldr r4, [fp, #-32]
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vmov r16, r22
	bl my_cos
	vmov r22, r16
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 r22, [r4]
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L600
	b .L618
.L601:
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L594
	b .L624
	b .F2
.LTORG
addr_MAX_DIM_X2:
	.word MAX_DIM_X
addr_MAX_DIM_Y2:
	.word MAX_DIM_Y
addr_test_block2:
	.word test_block
addr_test_dct2:
	.word test_dct
addr_test_idct2:
	.word test_idct
addr_PI2:
	.word PI
addr_TWO_PI2:
	.word TWO_PI
addr_EPSILON2:
	.word EPSILON
.F2:
.L604:
	b .L601
.L618:
	b .L601
.L624:
	b .L595
.L635:
	b .L542
.L641:
	b .L535

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r21, r22, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L642:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L646
.L646:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L647
	b .L651
.L647:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L653
.L648:
	mov r4, #0
	ldr r5, addr_test_dct3
	mov r6, #32
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	mov r4, #0
	ldr r6, addr_test_block3
	mov r7, #32
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-4]
	ldr r7, [fp, #-8]
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, r7
	bl dct
	mov r4, #0
	ldr r5, addr_test_dct3
	mov r6, #32
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl write_mat
	mov r4, #0
	ldr r5, addr_test_idct3
	mov r6, #32
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	mov r4, #0
	ldr r6, addr_test_dct3
	mov r7, #32
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-4]
	ldr r7, [fp, #-8]
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, r7
	bl idct
	mov r4, #0
	ldr r5, addr_test_idct3
	mov r6, #32
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl write_mat
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, r21, r22, fp, lr}
	bx lr
.L651:
	b .L648
.L653:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L654
	b .L658
.L654:
	bl getfloat
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	ldr r5, [fp, #-12]
	ldr r6, addr_test_block3
	mov r7, #32
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	ldr r5, [fp, #-16]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L654
	b .L665
.L655:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L647
	b .L671
.L658:
	b .L655
.L665:
	b .L655
.L671:
	b .L648

addr_MAX_DIM_X3:
	.word MAX_DIM_X
addr_MAX_DIM_Y3:
	.word MAX_DIM_Y
addr_test_block3:
	.word test_block
addr_test_dct3:
	.word test_dct
addr_test_idct3:
	.word test_idct
addr_PI3:
	.word PI
addr_TWO_PI3:
	.word TWO_PI
addr_EPSILON3:
	.word EPSILON
