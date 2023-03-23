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
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L372:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L374
	b .L378
.L374:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L375:
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L378:
	b .L375

	.global p
	.type p , %function
p:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L379:
	vstr.32 s0, [fp, #-4]
	ldr r4, =3
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	vmul.f32 s7, s6, s5
	ldr r4, =4
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	vmul.f32 s8, s6, s5
	vldr.32 s5, [fp, #-4]
	vmul.f32 s6, s8, s5
	vldr.32 s5, [fp, #-4]
	vmul.f32 s8, s6, s5
	vsub.f32 s5, s7, s8
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr

	.global my_sin_impl
	.type my_sin_impl , %function
my_sin_impl:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L381:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl my_fabs
	vmov s5, s0
	ldr r4, addr_EPSILON0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movle r4, #1
	movgt r4, #0
	ble .L383
	b .L387
.L383:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L384:
	vldr.32 s5, [fp, #-4]
	ldr r4, =1077936128
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	bl my_sin_impl
	vmov s5, s0
	vmov s0, s5
	bl p
	vmov s5, s0
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L387:
	b .L384

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L388:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L390
	b .L395
.L390:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vdiv.f32 s7, s5, s6
	vcvt.s32.f32  s5, s7
	vmov r4, s5
	str r4, [fp, #-8]
	vldr.32 s5, [fp, #-4]
	ldr r4, [fp, #-8]
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vmul.f32 s8, s7, s6
	vsub.f32 s6, s5, s8
	vstr.32 s6, [fp, #-4]
	b .L391
.L391:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_PI0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L400
	b .L404
.L392:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	ldr r4, =0
	vmov s7, r4
	vsub.f32 s8, s7, s6
	vcmp.f32 s5, s8
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L390
	b .L398
.L395:
	b .L392
.L398:
	b .L391
.L400:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	b .L401
.L401:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_PI0
	vldr.32 s6, [r4]
	ldr r4, =0
	vmov s7, r4
	vsub.f32 s8, s7, s6
	vcmp.f32 s5, s8
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L405
	b .L409
.L404:
	b .L401
.L405:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	b .L406
.L406:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl my_sin_impl
	vmov s5, s0
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L409:
	b .L406

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L410:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_PI0
	vldr.32 s6, [r4]
	ldr r4, =2
	vmov s7, r4
	vcvt.f32.s32  s8, s7
	vdiv.f32 s7, s6, s8
	vadd.f32 s6, s5, s7
	vmov s0, s6
	bl my_sin
	vmov s5, s0
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr

	.global write_mat
	.type write_mat , %function
write_mat:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #24
.L412:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L417
.L417:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L418
	b .L422
.L418:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	vmov s0, s5
	bl putfloat
	ldr r4, =1
	str r4, [fp, #-20]
	b .L427
.L419:
	mov r0, #10
	bl putch
	add sp, sp, #24
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L422:
	b .L419
.L427:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L428
	b .L432
.L428:
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
	vldr.32 s5, [r4]
	vmov s0, s5
	bl putfloat
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L428
	b .L441
.L429:
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
	blt .L418
	b .L447
.L432:
	b .L429
.L441:
	b .L429
.L447:
	b .L419

	.global dct
	.type dct , %function
dct:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9, s10, s11}
	mov fp, sp
	sub sp, sp, #32
.L448:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-20]
	b .L454
.L454:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L455
	b .L459
.L455:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L461
.L456:
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9, s10, s11}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L459:
	b .L456
.L461:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L462
	b .L466
.L462:
	ldr r4, =0
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, =0
	str r4, [fp, #-28]
	b .L470
.L463:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L455
	b .L514
.L466:
	b .L463
.L470:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L471
	b .L475
.L471:
	ldr r4, =0
	str r4, [fp, #-32]
	b .L477
.L472:
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L462
	b .L508
.L475:
	b .L472
.L477:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L478
	b .L482
.L478:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-28]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-32]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s6, [r4]
	ldr r4, addr_PI0
	vldr.32 s7, [r4]
	ldr r4, [fp, #-12]
	vmov s8, r4
	vcvt.f32.s32  s9, s8
	vdiv.f32 s8, s7, s9
	ldr r4, [fp, #-28]
	vmov s7, r4
	vcvt.f32.s32  s9, s7
	ldr r4, =1065353216
	vmov s7, r4
	ldr r4, =1073741824
	vmov s10, r4
	vdiv.f32 s11, s7, s10
	vadd.f32 s7, s9, s11
	vmul.f32 s9, s8, s7
	ldr r4, [fp, #-20]
	vmov s7, r4
	vcvt.f32.s32  s8, s7
	vmul.f32 s7, s9, s8
	vmov s0, s7
	bl my_cos
	vmov s7, s0
	vmul.f32 s8, s6, s7
	ldr r4, addr_PI0
	vldr.32 s6, [r4]
	ldr r4, [fp, #-16]
	vmov s7, r4
	vcvt.f32.s32  s9, s7
	vdiv.f32 s7, s6, s9
	ldr r4, [fp, #-32]
	vmov s6, r4
	vcvt.f32.s32  s9, s6
	ldr r4, =1065353216
	vmov s6, r4
	ldr r4, =1073741824
	vmov s10, r4
	vdiv.f32 s11, s6, s10
	vadd.f32 s6, s9, s11
	vmul.f32 s9, s7, s6
	ldr r4, [fp, #-24]
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vmul.f32 s6, s9, s7
	vmov s0, s6
	bl my_cos
	vmov s6, s0
	vmul.f32 s7, s8, s6
	vadd.f32 s6, s5, s7
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L478
	b .L496
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
.L479:
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L471
	b .L502
.L482:
	b .L479
.L496:
	b .L479
.L502:
	b .L472
.L508:
	b .L463
.L514:
	b .L456

	.global idct
	.type idct , %function
idct:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9, s10, s11}
	mov fp, sp
	sub sp, sp, #32
.L515:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-20]
	b .L521
.L521:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L522
	b .L526
.L522:
	ldr r4, =0
	str r4, [fp, #-24]
	b .L528
.L523:
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9, s10, s11}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L526:
	b .L523
.L528:
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L529
	b .L533
.L529:
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, =1082130432
	vmov s5, r4
	vdiv.f32 s7, s6, s5
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	vmul.f32 s6, s7, s5
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, =1
	str r4, [fp, #-28]
	b .L541
.L530:
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L522
	b .L629
.L533:
	b .L530
.L541:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L542
	b .L546
.L542:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, =1
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	ldr r4, =1073741824
	vmov s6, r4
	vdiv.f32 s8, s7, s6
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-28]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s6, [r4]
	vmul.f32 s7, s8, s6
	vadd.f32 s6, s5, s7
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L542
	b .L560
.L543:
	ldr r4, =1
	str r4, [fp, #-32]
	b .L561
.L546:
	b .L543
.L560:
	b .L543
.L561:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L562
	b .L566
.L562:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, =1
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	ldr r4, =1073741824
	vmov s6, r4
	vdiv.f32 s8, s7, s6
	ldr r4, [fp, #-8]
	mov r5, #0
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-32]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s6, [r4]
	vmul.f32 s7, s8, s6
	vadd.f32 s6, s5, s7
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L562
	b .L580
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
.L563:
	ldr r4, =1
	str r4, [fp, #-28]
	b .L581
.L566:
	b .L563
.L580:
	b .L563
.L581:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L582
	b .L586
.L582:
	ldr r4, =1
	str r4, [fp, #-32]
	b .L587
.L583:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, =1073741824
	vmov s6, r4
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-12]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vdiv.f32 s5, s7, s6
	ldr r4, =1073741824
	vmov s6, r4
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-16]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vdiv.f32 s5, s7, s6
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s5, [r4]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L529
	b .L623
.L586:
	b .L583
.L587:
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L588
	b .L592
.L588:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-28]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-32]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s6, [r4]
	ldr r4, addr_PI2
	vldr.32 s7, [r4]
	ldr r4, [fp, #-12]
	vmov s8, r4
	vcvt.f32.s32  s9, s8
	vdiv.f32 s8, s7, s9
	ldr r4, [fp, #-20]
	vmov s7, r4
	vcvt.f32.s32  s9, s7
	ldr r4, =1065353216
	vmov s7, r4
	ldr r4, =1073741824
	vmov s10, r4
	vdiv.f32 s11, s7, s10
	vadd.f32 s7, s9, s11
	vmul.f32 s9, s8, s7
	ldr r4, [fp, #-28]
	vmov s7, r4
	vcvt.f32.s32  s8, s7
	vmul.f32 s7, s9, s8
	vmov s0, s7
	bl my_cos
	vmov s7, s0
	vmul.f32 s8, s6, s7
	ldr r4, addr_PI2
	vldr.32 s6, [r4]
	ldr r4, [fp, #-16]
	vmov s7, r4
	vcvt.f32.s32  s9, s7
	vdiv.f32 s7, s6, s9
	ldr r4, [fp, #-24]
	vmov s6, r4
	vcvt.f32.s32  s9, s6
	ldr r4, =1065353216
	vmov s6, r4
	ldr r4, =1073741824
	vmov s10, r4
	vdiv.f32 s11, s6, s10
	vadd.f32 s6, s9, s11
	vmul.f32 s9, s7, s6
	ldr r4, [fp, #-32]
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vmul.f32 s6, s9, s7
	vmov s0, s6
	bl my_cos
	vmov s6, s0
	vmul.f32 s7, s8, s6
	vadd.f32 s6, s5, s7
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-24]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-32]
	add r5, r4, #1
	str r5, [fp, #-32]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L588
	b .L606
.L589:
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L582
	b .L612
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
.L592:
	b .L589
.L606:
	b .L589
.L612:
	b .L583
.L623:
	b .L530
.L629:
	b .L523

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L630:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-12]
	b .L634
.L634:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L635
	b .L639
.L635:
	ldr r4, =0
	str r4, [fp, #-16]
	b .L641
.L636:
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
	vpop {s4, s5}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L639:
	b .L636
.L641:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L642
	b .L646
.L642:
	bl getfloat
	vmov s5, s0
	ldr r4, [fp, #-12]
	ldr r5, addr_test_block3
	mov r6, #32
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s5, [r4]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L642
	b .L653
.L643:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L635
	b .L659
.L646:
	b .L643
.L653:
	b .L643
.L659:
	b .L636

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
	.ident "ZWJM"
