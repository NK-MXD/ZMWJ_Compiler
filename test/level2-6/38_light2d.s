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
	.word 192
	.global H
	.align 4
	.size H, 4
H:
	.word 192
	.global N
	.align 4
	.size N, 4
N:
	.word 24
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
	.global MAX_STEP
	.align 4
	.size MAX_STEP, 4
MAX_STEP:
	.word 10
	.global MAX_DISTANCE
	.align 4
	.size MAX_DISTANCE, 4
MAX_DISTANCE:
	.word 1073741824
	.global EPSILON
	.align 4
	.size EPSILON, 4
EPSILON:
	.word 897988541
	.global RAND_MAX
	.align 4
	.size RAND_MAX, 4
RAND_MAX:
	.word 100000006
	.text
	.global rand
	.type rand , %function
rand:
	push {r3, r4, fp, lr}
	mov fp, sp
.L302:
	ldr r0, addr_seed0
	ldr r1, [r0]
	ldr r0, =19980130
	mul r1, r1, r0
	ldr r0, =23333
	add r1, r1, r0
	ldr r2, =100000007
	sdiv r0, r1, r2
	mul r0, r0, r2
	sub r1, r1, r0
	ldr r0, addr_seed0
	str r1, [r0]
	ldr r0, addr_seed0
	ldr r0, [r0]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L303
	b .L307
.L303:
	ldr r0, addr_seed0
	ldr r1, [r0]
	ldr r0, =100000007
	add r1, r1, r0
	ldr r0, addr_seed0
	str r1, [r0]
	b .L304
.L304:
	ldr r0, addr_seed0
	ldr r0, [r0]
	pop {r3, r4, fp, lr}
	bx lr
.L307:
	b .L304

	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L308:
	vstr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-4]
	ldr r1, =0
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movgt r1, #1
	movle r1, #0
	bgt .L310
	b .L314
.L310:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L311:
	vldr.32 s1, [fp, #-4]
	vneg.f32 s0, s1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L314:
	b .L311

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L315:
	vstr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-4]
	ldr r1, =8
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vdiv.f32 s1, s1, s0
	ldr r1, =1056964608
	vmov s0, r1
	vadd.f32 s3, s1, s0
	ldr r1, =2
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	vldr.32 s0, [fp, #-4]
	vmul.f32 s2, s1, s0
	ldr r1, =4
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	vldr.32 s0, [fp, #-4]
	vadd.f32 s0, s1, s0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s3, s0
	vstr.32 s0, [fp, #-8]
	b .L319
.L319:
	ldr r1, =10
	ldr r2, =10
	cmp r2, #0
	movne r2, #1
	moveq r2, #0
	bne .L320
	b .L323
.L320:
	vldr.32 s2, [fp, #-8]
	vldr.32 s1, [fp, #-4]
	vldr.32 s0, [fp, #-8]
	vdiv.f32 s0, s1, s0
	vadd.f32 s1, s2, s0
	ldr r2, =2
	vmov s0, r2
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s1, s0
	vstr.32 s0, [fp, #-8]
	sub r2, r1, #1
	cmp r2, #0
	movne r1, #1
	moveq r1, #0
	bne .L530
	b .L328
.L321:
	vldr.32 s0, [fp, #-8]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L323:
	ldr r1, =10
	b .L321
.L328:
	b .L321
.L530:
	mov r1, r2
	b .L320

	.global p
	.type p , %function
p:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L330:
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
.L332:
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
	ble .L334
	b .L338
.L334:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L335:
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
.L338:
	b .L335

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L339:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L341
	b .L346
.L341:
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
	b .L342
.L342:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s0, [r0]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L351
	b .L355
.L343:
	vldr.32 s5, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s4, [r0]
	vneg.f32 s0, s4
	vcmp.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L341
	b .L349
.L346:
	b .L343
.L349:
	ldr r0, =0
	b .L342
.L351:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vsub.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	b .L352
.L352:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s0, [r0]
	ldr r0, =0
	vmov s5, r0
	vsub.f32 s0, s5, s0
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L356
	b .L360
.L355:
	b .L352
.L356:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vadd.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	b .L357
.L357:
	vldr.32 s0, [fp, #-4]
	bl my_sin_impl
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L360:
	b .L357

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L361:
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

	.global circle_sdf
	.type circle_sdf , %function
circle_sdf:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #32
.L363:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	vstr.32 s3, [fp, #-16]
	vstr.32 s4, [fp, #-20]
	vldr.32 s4, [fp, #-4]
	vldr.32 s0, [fp, #-12]
	vsub.f32 s0, s4, s0
	vstr.32 s0, [fp, #-24]
	vldr.32 s4, [fp, #-8]
	vldr.32 s0, [fp, #-16]
	vsub.f32 s0, s4, s0
	vstr.32 s0, [fp, #-28]
	vldr.32 s4, [fp, #-24]
	vldr.32 s0, [fp, #-24]
	vmul.f32 s5, s4, s0
	vldr.32 s4, [fp, #-28]
	vldr.32 s0, [fp, #-28]
	vmul.f32 s0, s4, s0
	vadd.f32 s0, s5, s0
	bl my_sqrt
	vmov s1, s0
	vldr.32 s0, [fp, #-20]
	vsub.f32 s0, s1, s0
	add sp, sp, #32
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr

	.global scene
	.type scene , %function
scene:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #24
.L371:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	str r0, [fp, #-12]
	vldr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-8]
	ldr r0, =1053609165
	vmov s2, r0
	ldr r0, =1053609165
	vmov s3, r0
	ldr r0, =1036831949
	vmov s4, r0
	bl circle_sdf
	vstr.32 s0, [fp, #-16]
	vldr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-8]
	ldr r0, =1058642330
	vmov s2, r0
	ldr r0, =1058642330
	vmov s3, r0
	ldr r0, =1028443341
	vmov s4, r0
	bl circle_sdf
	vmov s1, s0
	vstr.32 s1, [fp, #-20]
	vldr.32 s2, [fp, #-16]
	vldr.32 s1, [fp, #-20]
	vcmp.f32 s2, s1
	vmrs APSR_nzcv, FPSCR
	movlt r1, #1
	movge r1, #0
	blt .L377
	b .L382
.L377:
	vldr.32 s1, [fp, #-16]
	ldr r3, [fp, #-12]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s1, [r1]
	mov r2, #1
	mov r1, #4
	mla r2, r2, r1, r3
	ldr r1, =1077936128
	vmov s1, r1
	vstr.32 s1, [r2]
	b .L379
.L378:
	vldr.32 s1, [fp, #-20]
	ldr r3, [fp, #-12]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s1, [r1]
	mov r2, #1
	mov r1, #4
	mla r2, r2, r1, r3
	ldr r1, =0
	vmov s1, r1
	vstr.32 s1, [r2]
	b .L379
.L379:
	add sp, sp, #24
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L382:
	b .L378

	.global trace
	.type trace , %function
trace:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #32
.L387:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	vstr.32 s3, [fp, #-16]
	ldr r1, =0
	vmov s0, r1
	vstr.32 s0, [fp, #-20]
	b .L394
.L394:
	ldr r1, addr_MAX_STEP0
	ldr r2, [r1]
	ldr r1, =0
	mov r5, r1
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L418
	b .L400
.L395:
	vldr.32 s4, [fp, #-4]
	vldr.32 s1, [fp, #-12]
	vldr.32 s0, [fp, #-20]
	vmul.f32 s0, s1, s0
	vadd.f32 s5, s4, s0
	vldr.32 s4, [fp, #-8]
	vldr.32 s1, [fp, #-16]
	vldr.32 s0, [fp, #-20]
	vmul.f32 s0, s1, s0
	vadd.f32 s1, s4, s0
	mov r1, #0
	mov r2, #-28
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r4, r0, r1
	mov r0, r4
	vmov s0, s5
	bl scene
	vldr.32 s1, [r4]
	ldr r1, addr_EPSILON0
	vldr.32 s0, [r1]
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movlt r1, #1
	movge r1, #0
	blt .L405
	b .L410
.L396:
	ldr r1, =0
	vmov s0, r1
	add sp, sp, #32
	vpop {s4, s5}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L400:
	ldr r1, =0
	b .L396
.L405:
	mov r2, #1
	mov r3, #-28
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	vldr.32 s0, [r1]
	add sp, sp, #32
	vpop {s4, s5}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L406:
	vldr.32 s1, [fp, #-20]
	mov r2, #0
	mov r3, #-28
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	vldr.32 s0, [r1]
	vadd.f32 s0, s1, s0
	vstr.32 s0, [fp, #-20]
	add r2, r5, #1
	ldr r1, addr_MAX_STEP0
	ldr r1, [r1]
	mov r5, r2
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L418
	b .L421
.L410:
	b .L406
.L418:
	vldr.32 s1, [fp, #-20]
	ldr r1, addr_MAX_DISTANCE0
	vldr.32 s0, [r1]
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movlt r1, #1
	movge r1, #0
	blt .L395
	b .L424
.L421:
	b .L396
.L424:
	b .L396

	.global sample
	.type sample , %function
sample:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #24
.L425:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	ldr r1, =0
	vmov s4, r1
	vstr.32 s4, [fp, #-12]
	b .L430
.L430:
	ldr r1, addr_N0
	ldr r2, [r1]
	ldr r1, =0
	mov r4, r1
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L431
	b .L435
.L431:
	bl rand
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vstr.32 s0, [fp, #-16]
	ldr r0, addr_TWO_PI0
	vldr.32 s6, [r0]
	vmov s0, r4
	vcvt.f32.s32  s5, s0
	vldr.32 s4, [fp, #-16]
	ldr r0, addr_RAND_MAX0
	ldr r0, [r0]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	vadd.f32 s0, s5, s0
	vmul.f32 s4, s6, s0
	ldr r0, addr_N0
	ldr r0, [r0]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	vstr.32 s0, [fp, #-20]
	vldr.32 s4, [fp, #-12]
	vldr.32 s6, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	vldr.32 s0, [fp, #-20]
	bl my_cos
	vmov s7, s0
	vldr.32 s0, [fp, #-20]
	bl my_sin
	vmov s3, s0
	vmov s0, s6
	vmov s1, s5
	vmov s2, s7
	bl trace
	vmov s5, s0
	vadd.f32 s4, s4, s5
	vstr.32 s4, [fp, #-12]
	add r2, r4, #1
	ldr r1, addr_N0
	ldr r1, [r1]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L536
	b .L443
.L432:
	vldr.32 s1, [fp, #-12]
	ldr r1, addr_N0
	ldr r1, [r1]
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s1, s0
	add sp, sp, #24
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L435:
	ldr r1, =0
	b .L432
.L443:
	b .L432
.L536:
	mov r4, r2
	b .L431

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L444:
	mov r0, #80
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	ldr r0, addr_W0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_H0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	mov r0, #255
	bl putint
	mov r0, #10
	bl putch
	b .L446
.L446:
	ldr r1, addr_H0
	ldr r2, [r1]
	ldr r1, =0
	ldr r3, =0
	ldr r3, =0
	mov r6, r3
	ldr r3, =0
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L447
	b .L451
.L447:
	b .L453
.L448:
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L451:
	ldr r1, =0
	ldr r1, =0
	ldr r1, =0
	b .L448
.L453:
	ldr r0, addr_W0
	ldr r2, [r0]
	mov r0, r1
	ldr r0, =0
	mov r5, r0
	ldr r0, =0
	cmp r0, r2
	movlt r0, #1
	movge r0, #0
	blt .L454
	b .L458
.L454:
	vmov s0, r5
	vcvt.f32.s32  s0, s0
	vstr.32 s0, [fp, #-4]
	vmov s0, r6
	vcvt.f32.s32  s0, s0
	vstr.32 s0, [fp, #-8]
	vldr.32 s1, [fp, #-4]
	ldr r0, addr_W0
	ldr r0, [r0]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s4, s1, s0
	vldr.32 s1, [fp, #-8]
	ldr r0, addr_H0
	ldr r0, [r0]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s1, s1, s0
	vmov s0, s4
	bl sample
	vmov s5, s0
	ldr r0, =1132396544
	vmov s4, r0
	vmul.f32 s4, s5, s4
	vcvt.s32.f32  s4, s4
	vmov r1, s4
	cmp r1, #255
	movgt r0, #1
	movle r0, #0
	bgt .L462
	b .L466
.L455:
	mov r0, #10
	bl putch
	add r3, r6, #1
	ldr r1, addr_H0
	ldr r2, [r1]
	mov r1, r4
	mov r6, r3
	cmp r3, r2
	movlt r2, #1
	movge r2, #0
	blt .L447
	b .L478
.L458:
	mov r4, r1
	ldr r0, =0
	b .L455
.L462:
	ldr r0, =255
	mov r4, r0
	b .L463
.L463:
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	add r2, r5, #1
	ldr r0, addr_W0
	ldr r1, [r0]
	mov r0, r4
	mov r5, r2
	cmp r2, r1
	movlt r0, #1
	movge r0, #0
	blt .L454
	b .L472
.L466:
	mov r4, r1
	b .L463
.L472:
	b .L455
.L478:
	b .L448

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L479:
	bl write_pgm
	mov r0, #0
	pop {r3, r4, fp, lr}
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
	.ident "ZWJM"
