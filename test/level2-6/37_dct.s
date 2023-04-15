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
	vneg.f32 s0, s1
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
	vmul.f32 s2, s1, s0
	ldr r1, =4
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	vldr.32 s0, [fp, #-4]
	vmul.f32 s1, s1, s0
	vldr.32 s0, [fp, #-4]
	vmul.f32 s1, s1, s0
	vldr.32 s0, [fp, #-4]
	vmul.f32 s0, s1, s0
	vsub.f32 s0, s2, s0
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
	str r0, [fp, #-8]
	vldr.32 s5, [fp, #-4]
	ldr r0, [fp, #-8]
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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L412:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r0, =0
	str r0, [fp, #-16]
	b .L417
.L417:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L418
	b .L422
.L418:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #32
	mla r2, r1, r0, r2
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s0, [r0]
	bl putfloat
	ldr r0, =1
	str r0, [fp, #-20]
	b .L427
.L419:
	mov r0, #10
	bl putch
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L422:
	b .L419
.L427:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L428
	b .L432
.L428:
	mov r0, #32
	bl putch
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	mov r0, #32
	mla r2, r1, r0, r2
	ldr r1, [fp, #-20]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s0, [r0]
	bl putfloat
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	b .L427
.L429:
	mov r0, #10
	bl putch
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L417
.L432:
	b .L429

	.global dct
	.type dct , %function
dct:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #32
.L436:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r1, =0
	str r1, [fp, #-20]
	b .L442
.L442:
	ldr r2, [fp, #-20]
	ldr r1, [fp, #-12]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L443
	b .L447
.L443:
	ldr r1, =0
	str r1, [fp, #-24]
	b .L449
.L444:
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L447:
	b .L444
.L449:
	ldr r2, [fp, #-24]
	ldr r1, [fp, #-16]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L450
	b .L454
.L450:
	ldr r1, =0
	vmov s4, r1
	vcvt.f32.s32  s4, s4
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s4, [r1]
	ldr r1, =0
	str r1, [fp, #-28]
	b .L458
.L451:
	ldr r1, [fp, #-20]
	add r1, r1, #1
	str r1, [fp, #-20]
	b .L442
.L454:
	b .L451
.L458:
	ldr r2, [fp, #-28]
	ldr r1, [fp, #-12]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L459
	b .L463
.L459:
	ldr r1, =0
	str r1, [fp, #-32]
	b .L465
.L460:
	ldr r1, [fp, #-24]
	add r1, r1, #1
	str r1, [fp, #-24]
	b .L449
.L463:
	b .L460
.L465:
	ldr r2, [fp, #-32]
	ldr r1, [fp, #-16]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L466
	b .L470
.L466:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	mov r0, #32
	mla r2, r1, r0, r2
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s5, [r0]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-28]
	mov r0, #32
	mla r2, r1, r0, r2
	ldr r1, [fp, #-32]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, addr_PI0
	vldr.32 s6, [r0]
	ldr r0, [fp, #-12]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s8, s6, s0
	ldr r0, [fp, #-28]
	vmov s0, r0
	vcvt.f32.s32  s7, s0
	ldr r0, =1065353216
	vmov s6, r0
	ldr r0, =1073741824
	vmov s0, r0
	vdiv.f32 s0, s6, s0
	vadd.f32 s0, s7, s0
	vmul.f32 s6, s8, s0
	ldr r0, [fp, #-20]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vmul.f32 s0, s6, s0
	bl my_cos
	vmul.f32 s4, s4, s0
	ldr r0, addr_PI0
	vldr.32 s6, [r0]
	ldr r0, [fp, #-16]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s8, s6, s0
	ldr r0, [fp, #-32]
	vmov s0, r0
	vcvt.f32.s32  s7, s0
	ldr r0, =1065353216
	vmov s6, r0
	ldr r0, =1073741824
	vmov s0, r0
	vdiv.f32 s0, s6, s0
	vadd.f32 s0, s7, s0
	vmul.f32 s6, s8, s0
	ldr r0, [fp, #-24]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vmul.f32 s0, s6, s0
	bl my_cos
	vmov s6, s0
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s4, [r1]
	ldr r1, [fp, #-32]
	add r1, r1, #1
	str r1, [fp, #-32]
	b .L465
.L467:
	ldr r1, [fp, #-28]
	add r1, r1, #1
	str r1, [fp, #-28]
	b .L458
.L470:
	b .L467

	.global idct
	.type idct , %function
idct:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #32
.L479:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r1, =0
	str r1, [fp, #-20]
	b .L485
.L485:
	ldr r2, [fp, #-20]
	ldr r1, [fp, #-12]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L486
	b .L490
.L486:
	ldr r1, =0
	str r1, [fp, #-24]
	b .L492
.L487:
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L490:
	b .L487
.L492:
	ldr r2, [fp, #-24]
	ldr r1, [fp, #-16]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L493
	b .L497
.L493:
	ldr r1, =1
	vmov s4, r1
	vcvt.f32.s32  s5, s4
	ldr r1, =1082130432
	vmov s4, r1
	vdiv.f32 s5, s5, s4
	ldr r3, [fp, #-8]
	mov r2, #0
	mov r1, #32
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vmul.f32 s4, s5, s4
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s4, [r1]
	ldr r1, =1
	str r1, [fp, #-28]
	b .L505
.L494:
	ldr r1, [fp, #-20]
	add r1, r1, #1
	str r1, [fp, #-20]
	b .L485
.L497:
	b .L494
.L505:
	ldr r2, [fp, #-28]
	ldr r1, [fp, #-12]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L506
	b .L510
.L506:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s6, [r1]
	ldr r1, =1
	vmov s4, r1
	vcvt.f32.s32  s5, s4
	ldr r1, =1073741824
	vmov s4, r1
	vdiv.f32 s5, s5, s4
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-28]
	mov r1, #32
	mla r3, r2, r1, r3
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vmul.f32 s4, s5, s4
	vadd.f32 s4, s6, s4
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s4, [r1]
	ldr r1, [fp, #-28]
	add r1, r1, #1
	str r1, [fp, #-28]
	b .L505
.L507:
	ldr r1, =1
	str r1, [fp, #-32]
	b .L519
.L510:
	b .L507
.L519:
	ldr r2, [fp, #-32]
	ldr r1, [fp, #-16]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L520
	b .L524
.L520:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s6, [r1]
	ldr r1, =1
	vmov s4, r1
	vcvt.f32.s32  s5, s4
	ldr r1, =1073741824
	vmov s4, r1
	vdiv.f32 s5, s5, s4
	ldr r3, [fp, #-8]
	mov r2, #0
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-32]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s4, [r1]
	vmul.f32 s4, s5, s4
	vadd.f32 s4, s6, s4
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s4, [r1]
	ldr r1, [fp, #-32]
	add r1, r1, #1
	str r1, [fp, #-32]
	b .L519
.L521:
	ldr r1, =1
	str r1, [fp, #-28]
	b .L533
.L524:
	b .L521
.L533:
	ldr r2, [fp, #-28]
	ldr r1, [fp, #-12]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L534
	b .L538
.L534:
	ldr r1, =1
	str r1, [fp, #-32]
	b .L539
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
.L535:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vldr.32 s5, [r1]
	ldr r1, =1073741824
	vmov s4, r1
	vmul.f32 s5, s5, s4
	ldr r1, [fp, #-12]
	vmov s4, r1
	vcvt.f32.s32  s4, s4
	vdiv.f32 s5, s5, s4
	ldr r1, =1073741824
	vmov s4, r1
	vmul.f32 s5, s5, s4
	ldr r1, [fp, #-16]
	vmov s4, r1
	vcvt.f32.s32  s4, s4
	vdiv.f32 s4, s5, s4
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s4, [r1]
	ldr r1, [fp, #-24]
	add r1, r1, #1
	str r1, [fp, #-24]
	b .L492
.L538:
	b .L535
.L539:
	ldr r2, [fp, #-32]
	ldr r1, [fp, #-16]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L540
	b .L544
.L540:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	mov r0, #32
	mla r2, r1, r0, r2
	ldr r1, [fp, #-24]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s5, [r0]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-28]
	mov r0, #32
	mla r2, r1, r0, r2
	ldr r1, [fp, #-32]
	mov r0, #4
	mla r0, r1, r0, r2
	vldr.32 s4, [r0]
	ldr r0, addr_PI1
	vldr.32 s6, [r0]
	ldr r0, [fp, #-12]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s8, s6, s0
	ldr r0, [fp, #-20]
	vmov s0, r0
	vcvt.f32.s32  s7, s0
	ldr r0, =1065353216
	vmov s6, r0
	ldr r0, =1073741824
	vmov s0, r0
	vdiv.f32 s0, s6, s0
	vadd.f32 s0, s7, s0
	vmul.f32 s6, s8, s0
	ldr r0, [fp, #-28]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vmul.f32 s0, s6, s0
	bl my_cos
	vmul.f32 s4, s4, s0
	ldr r0, addr_PI1
	vldr.32 s6, [r0]
	ldr r0, [fp, #-16]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s8, s6, s0
	ldr r0, [fp, #-24]
	vmov s0, r0
	vcvt.f32.s32  s7, s0
	ldr r0, =1065353216
	vmov s6, r0
	ldr r0, =1073741824
	vmov s0, r0
	vdiv.f32 s0, s6, s0
	vadd.f32 s0, s7, s0
	vmul.f32 s6, s8, s0
	ldr r0, [fp, #-32]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vmul.f32 s0, s6, s0
	bl my_cos
	vmov s6, s0
	vmul.f32 s4, s4, s6
	vadd.f32 s4, s5, s4
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r1, #32
	mla r3, r2, r1, r3
	ldr r2, [fp, #-24]
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s4, [r1]
	ldr r1, [fp, #-32]
	add r1, r1, #1
	str r1, [fp, #-32]
	b .L539
.L541:
	ldr r1, [fp, #-28]
	add r1, r1, #1
	str r1, [fp, #-28]
	b .L533
.L544:
	b .L541

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L558:
	bl getint
	str r0, [fp, #-4]
	bl getint
	str r0, [fp, #-8]
	ldr r0, =0
	str r0, [fp, #-12]
	b .L562
.L562:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L563
	b .L567
.L563:
	ldr r0, =0
	str r0, [fp, #-16]
	b .L569
.L564:
	mov r2, #0
	ldr r1, addr_test_dct1
	mov r0, #32
	mla r0, r2, r0, r1
	mov r3, #0
	ldr r2, addr_test_block1
	mov r1, #32
	mla r1, r3, r1, r2
	ldr r2, [fp, #-4]
	ldr r3, [fp, #-8]
	bl dct
	mov r2, #0
	ldr r1, addr_test_dct1
	mov r0, #32
	mla r0, r2, r0, r1
	ldr r1, [fp, #-4]
	ldr r2, [fp, #-8]
	bl write_mat
	mov r2, #0
	ldr r1, addr_test_idct1
	mov r0, #32
	mla r0, r2, r0, r1
	mov r3, #0
	ldr r2, addr_test_dct1
	mov r1, #32
	mla r1, r3, r1, r2
	ldr r2, [fp, #-4]
	ldr r3, [fp, #-8]
	bl idct
	mov r2, #0
	ldr r1, addr_test_idct1
	mov r0, #32
	mla r0, r2, r0, r1
	ldr r1, [fp, #-4]
	ldr r2, [fp, #-8]
	bl write_mat
	mov r0, #0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L567:
	b .L564
.L569:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L570
	b .L574
.L570:
	bl getfloat
	vmov s4, s0
	ldr r2, [fp, #-12]
	ldr r1, addr_test_block1
	mov r0, #32
	mla r2, r2, r0, r1
	ldr r1, [fp, #-16]
	mov r0, #4
	mla r0, r1, r0, r2
	vstr.32 s4, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L569
.L571:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L562
.L574:
	b .L571

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
	.ident "ZWJM"
