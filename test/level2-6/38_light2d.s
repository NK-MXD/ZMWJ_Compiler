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
	add r2, r1, r0
	ldr r1, =100000007
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
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
	sub sp, sp, #16
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
	ldr r1, =10
	str r1, [fp, #-12]
	b .L319
.L319:
	ldr r1, [fp, #-12]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L320
	b .L323
.L320:
	vldr.32 s2, [fp, #-8]
	vldr.32 s1, [fp, #-4]
	vldr.32 s0, [fp, #-8]
	vdiv.f32 s0, s1, s0
	vadd.f32 s1, s2, s0
	ldr r1, =2
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s1, s0
	vstr.32 s0, [fp, #-8]
	ldr r1, [fp, #-12]
	sub r1, r1, #1
	str r1, [fp, #-12]
	b .L319
.L321:
	vldr.32 s0, [fp, #-8]
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L323:
	b .L321

	.global p
	.type p , %function
p:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L325:
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
.L327:
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
	ble .L329
	b .L333
.L329:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L330:
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
.L333:
	b .L330

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L334:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L336
	b .L341
.L336:
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
	b .L337
.L337:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s0, [r0]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L346
	b .L350
.L338:
	vldr.32 s5, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s4, [r0]
	vneg.f32 s0, s4
	vcmp.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L336
	b .L344
.L341:
	b .L338
.L344:
	b .L337
.L346:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vsub.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	b .L347
.L347:
	vldr.32 s5, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s4, [r0]
	vneg.f32 s0, s4
	vcmp.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L351
	b .L355
.L350:
	b .L347
.L351:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vadd.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	b .L352
.L352:
	vldr.32 s0, [fp, #-4]
	bl my_sin_impl
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L355:
	b .L352

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L356:
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
.L358:
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
.L366:
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
	blt .L372
	b .L377
.L372:
	vldr.32 s1, [fp, #-16]
	ldr r3, [fp, #-12]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s1, [r1]
	ldr r3, [fp, #-12]
	mov r2, #1
	mov r1, #4
	mla r2, r2, r1, r3
	ldr r1, =1077936128
	vmov s1, r1
	vstr.32 s1, [r2]
	b .L374
.L373:
	vldr.32 s1, [fp, #-20]
	ldr r3, [fp, #-12]
	mov r2, #0
	mov r1, #4
	mla r1, r2, r1, r3
	vstr.32 s1, [r1]
	ldr r3, [fp, #-12]
	mov r2, #1
	mov r1, #4
	mla r2, r2, r1, r3
	ldr r1, =0
	vmov s1, r1
	vstr.32 s1, [r2]
	b .L374
.L374:
	add sp, sp, #24
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L377:
	b .L373

	.global trace
	.type trace , %function
trace:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #32
.L382:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	vstr.32 s3, [fp, #-16]
	ldr r1, =0
	vmov s0, r1
	vstr.32 s0, [fp, #-20]
	ldr r1, =0
	str r1, [fp, #-24]
	b .L389
.L389:
	ldr r2, [fp, #-24]
	ldr r1, addr_MAX_STEP0
	ldr r1, [r1]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L392
	b .L395
.L390:
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
	mov r2, #-32
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	vmov s0, s5
	bl scene
	mov r2, #0
	mov r3, #-32
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	vldr.32 s1, [r1]
	ldr r1, addr_EPSILON0
	vldr.32 s0, [r1]
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movlt r1, #1
	movge r1, #0
	blt .L400
	b .L405
.L391:
	ldr r1, =0
	vmov s0, r1
	add sp, sp, #32
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L392:
	vldr.32 s1, [fp, #-20]
	ldr r1, addr_MAX_DISTANCE0
	vldr.32 s0, [r1]
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movlt r1, #1
	movge r1, #0
	blt .L390
	b .L398
.L395:
	b .L391
.L398:
	b .L391
.L400:
	mov r2, #1
	mov r3, #-32
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	vldr.32 s0, [r1]
	add sp, sp, #32
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L401:
	vldr.32 s1, [fp, #-20]
	mov r2, #0
	mov r3, #-32
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	vldr.32 s0, [r1]
	vadd.f32 s0, s1, s0
	vstr.32 s0, [fp, #-20]
	ldr r1, [fp, #-24]
	add r1, r1, #1
	str r1, [fp, #-24]
	b .L389
.L405:
	b .L401

	.global sample
	.type sample , %function
sample:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #24
.L408:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	ldr r1, =0
	vmov s4, r1
	vstr.32 s4, [fp, #-12]
	ldr r1, =0
	str r1, [fp, #-16]
	b .L413
.L413:
	ldr r2, [fp, #-16]
	ldr r1, addr_N0
	ldr r1, [r1]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L414
	b .L418
.L414:
	bl rand
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vstr.32 s0, [fp, #-20]
	ldr r0, addr_TWO_PI0
	vldr.32 s6, [r0]
	ldr r0, [fp, #-16]
	vmov s0, r0
	vcvt.f32.s32  s5, s0
	vldr.32 s4, [fp, #-20]
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
	vstr.32 s0, [fp, #-24]
	vldr.32 s4, [fp, #-12]
	vldr.32 s7, [fp, #-4]
	vldr.32 s6, [fp, #-8]
	vldr.32 s0, [fp, #-24]
	bl my_cos
	vmov s5, s0
	vldr.32 s0, [fp, #-24]
	bl my_sin
	vmov s3, s0
	vmov s0, s7
	vmov s1, s6
	vmov s2, s5
	bl trace
	vmov s5, s0
	vadd.f32 s4, s4, s5
	vstr.32 s4, [fp, #-12]
	ldr r1, [fp, #-16]
	add r1, r1, #1
	str r1, [fp, #-16]
	b .L413
.L415:
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
.L418:
	b .L415

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #24
.L421:
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
	ldr r1, =0
	str r1, [fp, #-4]
	b .L423
.L423:
	ldr r2, [fp, #-4]
	ldr r1, addr_H0
	ldr r1, [r1]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L424
	b .L428
.L424:
	ldr r0, =0
	str r0, [fp, #-8]
	b .L430
.L425:
	add sp, sp, #24
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L428:
	b .L425
.L430:
	ldr r1, [fp, #-8]
	ldr r0, addr_W0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L431
	b .L435
.L431:
	ldr r0, [fp, #-8]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vstr.32 s0, [fp, #-12]
	ldr r0, [fp, #-4]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vstr.32 s0, [fp, #-16]
	vldr.32 s1, [fp, #-12]
	ldr r0, addr_W0
	ldr r0, [r0]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s4, s1, s0
	vldr.32 s1, [fp, #-16]
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
	vmov r0, s4
	str r0, [fp, #-20]
	mov r0, r0
	cmp r0, #255
	movgt r0, #1
	movle r0, #0
	bgt .L439
	b .L443
.L432:
	mov r0, #10
	bl putch
	ldr r1, [fp, #-4]
	add r1, r1, #1
	str r1, [fp, #-4]
	b .L423
.L435:
	b .L432
.L439:
	ldr r0, =255
	str r0, [fp, #-20]
	b .L440
.L440:
	ldr r0, [fp, #-20]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L430
.L443:
	b .L440

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L444:
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
