	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global MAX_DIM_X
	.align 4
	.size MAX_DIM_X, 4
MAX_DIM_X:
	.word 8
	.global MAX_DIM_Y
	.align 4
	.size MAX_DIM_Y, 4
MAX_DIM_Y:
	.word 8
	.global PI
	.align 4
	.size PI, 4
PI:
	.word 1078530011
	.global TWO_PI
	.align 4
	.size TWO_PI, 4
TWO_PI:
	.word 1086918619
	.global EPSILON
	.align 4
	.size EPSILON, 4
EPSILON:
	.word 897988541
	.comm test_block, 256, 4
	.comm test_dct, 256, 4
	.comm test_idct, 256, 4
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L372:
	vstr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-4]
	ldr r1, =0
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movgt r1, #1
	movle r1, #0
	bgt .L374
	b .L378
.L374:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L375:
	vldr.32 s1, [fp, #-4]
	ldr r1, =0
	vmov s0, r1
	vsub.f32 s0, s0, s1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L378:
	b .L375

	.global p
	.type p , %function
p:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L379:
	vstr.32 s0, [fp, #-4]
	ldr r1, =3
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	vldr.32 s0, [fp, #-4]
	vmul.f32 s0, s1, s0
	ldr r1, =4
	vmov s1, r1
	vcvt.f32.s32  s2, s1
	vldr.32 s1, [fp, #-4]
	vmul.f32 s2, s2, s1
	vldr.32 s1, [fp, #-4]
	vmul.f32 s2, s2, s1
	vldr.32 s1, [fp, #-4]
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global my_sin_impl
	.type my_sin_impl , %function
my_sin_impl:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L381:
	vstr.32 s0, [fp, #-4]
	vldr.32 s0, [fp, #-4]
	bl my_fabs
	vmov s4, s0
	ldr r1, addr_EPSILON0
	vldr.32 s0, [r1]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movle r1, #1
	movgt r1, #0
	ble .L383
	b .L387
.L383:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L384:
	vldr.32 s4, [fp, #-4]
	ldr r0, =1077936128
	vmov s0, r0
	vdiv.f32 s0, s4, s0
	bl my_sin_impl
	bl p
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L387:
	b .L384

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L388:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L390
	b .L395
.L390:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vdiv.f32 s0, s4, s0
	vcvt.s32.f32  s0, s0
	vmov r0, s0
	vldr.32 s5, [fp, #-4]
	vmov s0, r0
	vcvt.f32.s32  s4, s0
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vmul.f32 s0, s4, s0
	vsub.f32 s0, s5, s0
	vstr.32 s0, [fp, #-4]
	b .L391
.L391:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s0, [r0]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L400
	b .L404
.L392:
	vldr.32 s5, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s4, [r0]
	vneg.f32 s0, s4
	vcmp.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L390
	b .L398
.L395:
	b .L392
.L398:
	ldr r0, =0
	b .L391
.L400:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vsub.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	b .L401
.L401:
	vldr.32 s5, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s4, [r0]
	vneg.f32 s0, s4
	vcmp.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L405
	b .L409
.L404:
	b .L401
.L405:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vadd.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	b .L406
.L406:
	vldr.32 s0, [fp, #-4]
	bl my_sin_impl
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L409:
	b .L406

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L410:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s4, [r0]
	ldr r0, =2
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	vadd.f32 s0, s5, s0
	bl my_sin
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr

	.global write_mat
	.type write_mat , %function
write_mat:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L412:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	b .L417
.L417:
	ldr r1, [fp, #-8]
	ldr r0, =0
	ldr r0, =0
	mov r5, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L418
	b .L422
.L418:
	ldr r1, [fp, #-4]
	mov r0, #32
	mla r0, r5, r0, r1
	mov r2, #0
	mov r1, #4
	mla r0, r2, r1, r0
	vldr.32 s0, [r0]
	bl putfloat
	b .L427
.L419:
	mov r0, #10
	bl putch
	add sp, sp, #16
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L422:
	ldr r0, =0
	ldr r0, =0
	b .L419
.L427:
	ldr r1, [fp, #-12]
	ldr r0, =1
	mov r4, r0
	ldr r0, =1
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L428
	b .L432
.L428:
	mov r0, #32
	bl putch
	ldr r1, [fp, #-4]
	mov r0, #32
	mla r0, r5, r0, r1
	mov r1, #4
	mla r0, r4, r1, r0
	vldr.32 s0, [r0]
	bl putfloat
	add r1, r4, #1
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L811
	b .L441
.L429:
	mov r0, #10
	bl putch
	add r1, r5, #1
	ldr r0, [fp, #-8]
	mov r5, r1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L418
	b .L447
.L432:
	ldr r0, =1
	b .L429
.L441:
	b .L429
.L447:
	b .L419
.L811:
	mov r4, r1
	b .L428

	.global dct
	.type dct , %function
dct:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #16
.L448:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	b .L454
.L454:
	ldr r2, [fp, #-12]
	ldr r1, =0
	mov r3, r1
	ldr r1, =0
	ldr r4, =0
	ldr r4, =0
	mov r6, r4
	ldr r4, =0
	cmp r4, r2
	movlt r2, #1
	movge r2, #0
	blt .L455
	b .L459
.L455:
	b .L461
.L456:
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L459:
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	b .L456
.L461:
	ldr r7, [fp, #-16]
	mov r2, r3
	mov r4, r1
	ldr r4, =0
	mov r5, r4
	ldr r4, =0
	cmp r4, r7
	movlt r4, #1
	movge r4, #0
	blt .L462
	b .L466
.L462:
	ldr r1, =0
	vmov s4, r1
	vcvt.f32.s32  s4, s4
	ldr r3, [fp, #-4]
	mov r1, #32
	mla r3, r6, r1, r3
	mov r1, #4
	mla r1, r5, r1, r3
	vstr.32 s4, [r1]
	b .L470
.L463:
	add r5, r6, #1
	ldr r4, [fp, #-12]
	mov r3, r2
	mov r6, r5
	cmp r5, r4
	movlt r2, #1
	movge r2, #0
	blt .L455
	b .L514
.L466:
	mov r2, r3
	ldr r3, =0
	b .L463
.L470:
	ldr r1, [fp, #-12]
	mov r3, r2
	ldr r3, =0
	mov r8, r3
	ldr r3, =0
	cmp r3, r1
	movlt r1, #1
	movge r1, #0
	blt .L471
	b .L475
.L471:
	b .L477
.L472:
	add r1, r5, #1
	ldr r3, [fp, #-16]
	mov r2, r7
	mov r5, r4
	mov r5, r1
	cmp r1, r3
	movlt r1, #1
	movge r1, #0
	blt .L462
	b .L508
.L475:
	mov r7, r2
	ldr r1, =0
	mov r4, r1
	b .L472
.L477:
	ldr r1, [fp, #-16]
	ldr r2, =0
	mov r4, r2
	ldr r2, =0
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L478
	b .L482
.L478:
	ldr r7, [fp, #-4]
	mov r0, #32
	mla r1, r6, r0, r7
	mov r0, #4
	mla r0, r5, r0, r1
	vldr.32 s4, [r0]
	ldr r0, [fp, #-8]
	mov r1, #32
	mla r0, r8, r1, r0
	mov r1, #4
	mla r0, r4, r1, r0
	vldr.32 s5, [r0]
	ldr r0, addr_PI0
	vldr.32 s6, [r0]
	ldr r0, [fp, #-12]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s8, s6, s0
	vmov s0, r8
	vcvt.f32.s32  s7, s0
	ldr r0, =1065353216
	vmov s6, r0
	ldr r0, =1073741824
	vmov s0, r0
	vdiv.f32 s6, s6, s0
	vadd.f32 s0, s7, s6
	vmul.f32 s7, s8, s0
	vmov s0, r6
	vcvt.f32.s32  s0, s0
	vmul.f32 s0, s7, s0
	bl my_cos
	vmul.f32 s5, s5, s0
	ldr r0, addr_PI0
	vldr.32 s7, [r0]
	ldr r0, [fp, #-16]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s7, s7, s0
	vmov s0, r4
	vcvt.f32.s32  s0, s0
	vadd.f32 s0, s0, s6
	vmul.f32 s6, s7, s0
	vmov s0, r5
	vcvt.f32.s32  s0, s0
	vmul.f32 s0, s6, s0
	bl my_cos
	vmov s6, s0
	vmul.f32 s5, s5, s6
	vadd.f32 s4, s4, s5
	mov r1, #32
	mla r1, r6, r1, r7
	mov r2, #4
	mla r1, r5, r2, r1
	vstr.32 s4, [r1]
	add r2, r4, #1
	ldr r1, [fp, #-16]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L832
	b .L496
.L479:
	add r2, r8, #1
	ldr r1, [fp, #-12]
	mov r4, r3
	mov r8, r2
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L471
	b .L502
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
.L482:
	ldr r1, =0
	mov r3, r1
	b .L479
.L496:
	mov r3, r2
	b .L479
.L502:
	mov r7, r3
	mov r4, r2
	b .L472
.L508:
	mov r2, r7
	mov r1, r4
	b .L463
.L514:
	b .L456
.L832:
	mov r4, r2
	b .L478

	.global idct
	.type idct , %function
idct:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #16
.L515:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	b .L521
.L521:
	ldr r2, [fp, #-12]
	ldr r1, =0
	ldr r3, =0
	mov r6, r3
	ldr r3, =0
	ldr r3, =0
	mov r5, r3
	ldr r3, =0
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L522
	b .L526
.L522:
	b .L528
.L523:
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L526:
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	b .L523
.L528:
	ldr r2, [fp, #-16]
	mov r3, r1
	mov r3, r6
	ldr r3, =0
	mov r4, r3
	ldr r3, =0
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L529
	b .L533
.L529:
	ldr r1, =1
	vmov s4, r1
	vcvt.f32.s32  s5, s4
	ldr r1, =1082130432
	vmov s4, r1
	vdiv.f32 s5, s5, s4
	ldr r3, [fp, #-8]
	mov r2, #0
	mov r1, #32
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vmul.f32 s4, s5, s4
	ldr r2, [fp, #-4]
	mov r1, #32
	mla r2, r5, r1, r2
	mov r1, #4
	mla r1, r4, r1, r2
	vstr.32 s4, [r1]
	b .L541
.L530:
	add r3, r5, #1
	ldr r2, [fp, #-12]
	mov r6, r4
	mov r5, r3
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L522
	b .L629
.L533:
	mov r4, r6
	ldr r2, =0
	b .L530
.L541:
	ldr r3, [fp, #-12]
	ldr r1, =1
	mov r2, r1
	ldr r1, =1
	cmp r1, r3
	movlt r1, #1
	movge r1, #0
	blt .L542
	b .L546
.L542:
	ldr r1, [fp, #-4]
	mov r3, #32
	mla r3, r5, r3, r1
	mov r6, #4
	mla r3, r4, r6, r3
	vldr.32 s6, [r3]
	ldr r3, =1
	vmov s4, r3
	vcvt.f32.s32  s5, s4
	ldr r3, =1073741824
	vmov s4, r3
	vdiv.f32 s5, s5, s4
	ldr r3, [fp, #-8]
	mov r6, #32
	mla r3, r2, r6, r3
	mov r7, #0
	mov r6, #4
	mla r3, r7, r6, r3
	vldr.32 s4, [r3]
	vmul.f32 s4, s5, s4
	vadd.f32 s4, s6, s4
	mov r3, #32
	mla r3, r5, r3, r1
	mov r1, #4
	mla r1, r4, r1, r3
	vstr.32 s4, [r1]
	add r2, r2, #1
	ldr r1, [fp, #-12]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L849
	b .L560
.L543:
	b .L561
.L546:
	ldr r1, =1
	b .L543
.L560:
	b .L543
.L561:
	ldr r3, [fp, #-16]
	ldr r1, =1
	mov r2, r1
	ldr r1, =1
	cmp r1, r3
	movlt r1, #1
	movge r1, #0
	blt .L562
	b .L566
.L562:
	ldr r1, [fp, #-4]
	mov r3, #32
	mla r3, r5, r3, r1
	mov r6, #4
	mla r3, r4, r6, r3
	vldr.32 s6, [r3]
	ldr r3, =1
	vmov s4, r3
	vcvt.f32.s32  s5, s4
	ldr r3, =1073741824
	vmov s4, r3
	vdiv.f32 s5, s5, s4
	ldr r3, [fp, #-8]
	mov r7, #0
	mov r6, #32
	mla r3, r7, r6, r3
	mov r6, #4
	mla r3, r2, r6, r3
	vldr.32 s4, [r3]
	vmul.f32 s4, s5, s4
	vadd.f32 s4, s6, s4
	mov r3, #32
	mla r3, r5, r3, r1
	mov r1, #4
	mla r1, r4, r1, r3
	vstr.32 s4, [r1]
	add r2, r2, #1
	ldr r1, [fp, #-16]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L852
	b .L580
.L563:
	b .L581
.L566:
	ldr r1, =1
	mov r2, r1
	b .L563
.L580:
	b .L563
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
.L581:
	ldr r1, [fp, #-12]
	mov r3, r2
	ldr r3, =1
	mov r8, r3
	ldr r3, =1
	cmp r3, r1
	movlt r1, #1
	movge r1, #0
	blt .L582
	b .L586
.L582:
	b .L587
.L583:
	ldr r1, [fp, #-4]
	mov r2, #32
	mla r3, r5, r2, r1
	mov r2, #4
	mla r2, r4, r2, r3
	vldr.32 s5, [r2]
	ldr r2, =1073741824
	vmov s4, r2
	vmul.f32 s5, s5, s4
	ldr r2, [fp, #-12]
	vmov s4, r2
	vcvt.f32.s32  s4, s4
	vdiv.f32 s5, s5, s4
	ldr r2, =1073741824
	vmov s4, r2
	vmul.f32 s5, s5, s4
	ldr r2, [fp, #-16]
	vmov s4, r2
	vcvt.f32.s32  s4, s4
	vdiv.f32 s4, s5, s4
	mov r2, #32
	mla r1, r5, r2, r1
	mov r2, #4
	mla r1, r4, r2, r1
	vstr.32 s4, [r1]
	add r2, r4, #1
	ldr r1, [fp, #-16]
	mov r3, r7
	mov r3, r6
	mov r4, r2
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L529
	b .L623
.L586:
	mov r7, r2
	ldr r1, =1
	mov r6, r1
	b .L583
.L587:
	ldr r1, [fp, #-16]
	ldr r2, =1
	mov r6, r2
	ldr r2, =1
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L588
	b .L592
.L588:
	ldr r7, [fp, #-4]
	mov r0, #32
	mla r1, r5, r0, r7
	mov r0, #4
	mla r0, r4, r0, r1
	vldr.32 s4, [r0]
	ldr r0, [fp, #-8]
	mov r1, #32
	mla r0, r8, r1, r0
	mov r1, #4
	mla r0, r6, r1, r0
	vldr.32 s5, [r0]
	ldr r0, addr_PI2
	vldr.32 s6, [r0]
	ldr r0, [fp, #-12]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s8, s6, s0
	vmov s0, r5
	vcvt.f32.s32  s7, s0
	ldr r0, =1065353216
	vmov s6, r0
	ldr r0, =1073741824
	vmov s0, r0
	vdiv.f32 s6, s6, s0
	vadd.f32 s0, s7, s6
	vmul.f32 s7, s8, s0
	vmov s0, r8
	vcvt.f32.s32  s0, s0
	vmul.f32 s0, s7, s0
	bl my_cos
	vmul.f32 s5, s5, s0
	ldr r0, addr_PI2
	vldr.32 s7, [r0]
	ldr r0, [fp, #-16]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s7, s7, s0
	vmov s0, r4
	vcvt.f32.s32  s0, s0
	vadd.f32 s0, s0, s6
	vmul.f32 s6, s7, s0
	vmov s0, r6
	vcvt.f32.s32  s0, s0
	vmul.f32 s0, s6, s0
	bl my_cos
	vmov s6, s0
	vmul.f32 s5, s5, s6
	vadd.f32 s4, s4, s5
	mov r1, #32
	mla r1, r5, r1, r7
	mov r2, #4
	mla r1, r4, r2, r1
	vstr.32 s4, [r1]
	add r2, r6, #1
	ldr r1, [fp, #-16]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L859
	b .L606
.L589:
	add r2, r8, #1
	ldr r1, [fp, #-12]
	mov r6, r3
	mov r8, r2
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L582
	b .L612
.L592:
	ldr r1, =1
	mov r3, r1
	b .L589
.L606:
	mov r3, r2
	b .L589
.L612:
	mov r7, r3
	mov r6, r2
	b .L583
.L623:
	mov r1, r7
	mov r4, r6
	b .L530
.L629:
	b .L523
.L849:
	b .L542
.L852:
	b .L562
.L859:
	mov r6, r2
	b .L588

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5}
	mov fp, sp
.L630:
	bl getint
	mov r7, r0
	bl getint
	mov r6, r0
	b .L634
.L634:
	ldr r0, =0
	ldr r0, =0
	mov r5, r0
	ldr r0, =0
	cmp r0, r7
	movlt r0, #1
	movge r0, #0
	blt .L635
	b .L639
.L635:
	b .L641
.L636:
	mov r2, #0
	ldr r1, addr_test_dct2
	mov r0, #32
	mla r5, r2, r0, r1
	mov r2, #0
	ldr r1, addr_test_block2
	mov r0, #32
	mla r1, r2, r0, r1
	mov r0, r5
	mov r2, r7
	mov r3, r6
	bl dct
	mov r0, r5
	mov r1, r7
	mov r2, r6
	bl write_mat
	mov r2, #0
	ldr r1, addr_test_idct2
	mov r0, #32
	mla r4, r2, r0, r1
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl idct
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl write_mat
	mov r0, #0
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L639:
	ldr r0, =0
	ldr r0, =0
	b .L636
.L641:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r6
	movlt r0, #1
	movge r0, #0
	blt .L642
	b .L646
.L642:
	bl getfloat
	vmov s4, s0
	ldr r1, addr_test_block2
	mov r0, #32
	mla r1, r5, r0, r1
	mov r0, #4
	mla r0, r4, r0, r1
	vstr.32 s4, [r0]
	add r1, r4, #1
	cmp r1, r6
	movlt r0, #1
	movge r0, #0
	blt .L866
	b .L653
.L643:
	add r0, r5, #1
	mov r5, r0
	cmp r0, r7
	movlt r0, #1
	movge r0, #0
	blt .L635
	b .L659
.L646:
	ldr r0, =0
	b .L643
.L653:
	b .L643
.L659:
	b .L636
.L866:
	mov r4, r1
	b .L642

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
	.ident "ZWJM"
