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
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
.L302:
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
	blt .L303
	b .L307
.L303:
	ldr r4, addr_seed0
	ldr r5, [r4]
	ldr r4, =100000007
	add r6, r5, r4
	ldr r4, addr_seed0
	str r6, [r4]
	b .L304
.L304:
	ldr r4, addr_seed0
	ldr r5, [r4]
	mov r0, r5
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L307:
	b .L304

	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L308:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L310
	b .L314
.L310:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L311:
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L314:
	b .L311

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #16
.L315:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =8
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s5, s7
	ldr r4, =1056964608
	vmov s5, r4
	vadd.f32 s7, s6, s5
	ldr r4, =2
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	vmul.f32 s8, s6, s5
	ldr r4, =4
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	vadd.f32 s9, s6, s5
	vdiv.f32 s5, s8, s9
	vadd.f32 s6, s7, s5
	vstr.32 s6, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-12]
	b .L319
.L319:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L320
	b .L323
.L320:
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vldr.32 s7, [fp, #-8]
	vdiv.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, =2
	vmov s5, r4
	vcvt.f32.s32  s7, s5
	vdiv.f32 s5, s6, s7
	vstr.32 s5, [fp, #-8]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L320
	b .L328
.L321:
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L323:
	b .L321
.L328:
	b .L321

	.global p
	.type p , %function
p:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L330:
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
.L332:
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
	ble .L334
	b .L338
.L334:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L335:
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
.L338:
	b .L335

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L339:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L341
	b .L346
.L341:
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
	b .L342
.L342:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_PI0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L351
	b .L355
.L343:
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
	blt .L341
	b .L349
.L346:
	b .L343
.L349:
	b .L342
.L351:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	b .L352
.L352:
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
	blt .L356
	b .L360
.L355:
	b .L352
.L356:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	b .L357
.L357:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl my_sin_impl
	vmov s5, s0
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L360:
	b .L357

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L361:
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

	.global circle_sdf
	.type circle_sdf , %function
circle_sdf:
	push {fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #32
.L363:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	vstr.32 s3, [fp, #-16]
	vstr.32 s4, [fp, #-20]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-12]
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-24]
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-16]
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-28]
	vldr.32 s5, [fp, #-24]
	vldr.32 s6, [fp, #-24]
	vmul.f32 s7, s5, s6
	vldr.32 s5, [fp, #-28]
	vldr.32 s6, [fp, #-28]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	vmov s0, s5
	bl my_sqrt
	vmov s5, s0
	vldr.32 s6, [fp, #-20]
	vsub.f32 s7, s5, s6
	vmov s0, s7
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9}
	pop {fp, lr}
	bx lr

	.global scene
	.type scene , %function
scene:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #24
.L371:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	str r0, [fp, #-12]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-8]
	vmov s0, s5
	vmov s1, s6
	ldr r4, =1053609165
	vmov s2, r4
	ldr r4, =1053609165
	vmov s3, r4
	ldr r4, =1036831949
	vmov s4, r4
	bl circle_sdf
	vmov s5, s0
	vstr.32 s5, [fp, #-16]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-8]
	vmov s0, s5
	vmov s1, s6
	ldr r4, =1058642330
	vmov s2, r4
	ldr r4, =1058642330
	vmov s3, r4
	ldr r4, =1028443341
	vmov s4, r4
	bl circle_sdf
	vmov s5, s0
	vstr.32 s5, [fp, #-20]
	vldr.32 s5, [fp, #-16]
	vldr.32 s6, [fp, #-20]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L377
	b .L382
.L377:
	vldr.32 s5, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =1077936128
	vmov s5, r4
	vstr.32 s5, [r5]
	b .L379
.L378:
	vldr.32 s5, [fp, #-20]
	ldr r4, [fp, #-12]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	b .L379
.L379:
	add sp, sp, #24
	vpop {s4, s5, s6, s7}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L382:
	b .L378

	.global trace
	.type trace , %function
trace:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #32
.L387:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	vstr.32 s3, [fp, #-16]
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-24]
	b .L394
.L394:
	ldr r4, [fp, #-24]
	ldr r5, addr_MAX_STEP0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L418
	b .L400
.L395:
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-12]
	vldr.32 s7, [fp, #-20]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	vldr.32 s5, [fp, #-8]
	vldr.32 s7, [fp, #-16]
	vldr.32 s8, [fp, #-20]
	vmul.f32 s9, s7, s8
	vadd.f32 s7, s5, s9
	mov r4, #0
	mov r5, #-32
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	vmov s0, s6
	vmov s1, s7
	bl scene
	mov r4, #0
	mov r5, #-32
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, addr_EPSILON0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L405
	b .L410
.L396:
	ldr r4, =0
	vmov s0, r4
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L400:
	b .L396
.L405:
	mov r4, #1
	mov r5, #-32
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	vmov s0, s5
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L406:
	vldr.32 s5, [fp, #-20]
	mov r4, #0
	mov r5, #-32
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s6, [r5]
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-20]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, addr_MAX_STEP0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L418
	b .L421
.L410:
	b .L406
.L418:
	vldr.32 s5, [fp, #-20]
	ldr r4, addr_MAX_DISTANCE0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L395
	b .L424
.L421:
	b .L396
.L424:
	b .L396

	.global sample
	.type sample , %function
sample:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #24
.L425:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L430
.L430:
	ldr r4, [fp, #-16]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L431
	b .L435
.L431:
	bl rand
	mov r4, r0
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vstr.32 s6, [fp, #-20]
	ldr r4, addr_TWO_PI0
	vldr.32 s5, [r4]
	ldr r4, [fp, #-16]
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vldr.32 s6, [fp, #-20]
	ldr r4, addr_RAND_MAX0
	ldr r5, [r4]
	vmov s8, r5
	vcvt.f32.s32  s9, s8
	vdiv.f32 s8, s6, s9
	vadd.f32 s6, s7, s8
	vmul.f32 s7, s5, s6
	ldr r4, addr_N0
	ldr r5, [r4]
	vmov s5, r5
	vcvt.f32.s32  s6, s5
	vdiv.f32 s5, s7, s6
	vstr.32 s5, [fp, #-24]
	vldr.32 s5, [fp, #-12]
	vldr.32 s6, [fp, #-4]
	vldr.32 s7, [fp, #-8]
	vldr.32 s8, [fp, #-24]
	vmov s0, s8
	bl my_cos
	vmov s8, s0
	vldr.32 s9, [fp, #-24]
	vmov s0, s9
	bl my_sin
	vmov s9, s0
	vmov s0, s6
	vmov s1, s7
	vmov s2, s8
	vmov s3, s9
	bl trace
	vmov s6, s0
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-12]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, addr_N0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L431
	b .L443
.L432:
	vldr.32 s5, [fp, #-12]
	ldr r4, addr_N0
	ldr r5, [r4]
	vmov s6, r5
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s5, s7
	vmov s0, s6
	add sp, sp, #24
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L435:
	b .L432
.L443:
	b .L432

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #24
.L444:
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
	b .L446
.L446:
	ldr r4, [fp, #-4]
	ldr r5, addr_H0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L447
	b .L451
.L447:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L453
.L448:
	add sp, sp, #24
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L451:
	b .L448
.L453:
	ldr r4, [fp, #-8]
	ldr r5, addr_W0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L454
	b .L458
.L454:
	ldr r4, [fp, #-8]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vstr.32 s6, [fp, #-12]
	ldr r4, [fp, #-4]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vstr.32 s6, [fp, #-16]
	vldr.32 s5, [fp, #-12]
	ldr r4, addr_W0
	ldr r5, [r4]
	vmov s6, r5
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s5, s7
	vldr.32 s5, [fp, #-16]
	ldr r4, addr_H0
	ldr r5, [r4]
	vmov s7, r5
	vcvt.f32.s32  s8, s7
	vdiv.f32 s7, s5, s8
	vmov s0, s6
	vmov s1, s7
	bl sample
	vmov s5, s0
	ldr r4, =1132396544
	vmov s6, r4
	vmul.f32 s7, s5, s6
	vcvt.s32.f32  s5, s7
	vmov r4, s5
	str r4, [fp, #-20]
	ldr r4, [fp, #-20]
	cmp r4, #255
	movgt r4, #1
	movle r4, #0
	bgt .L462
	b .L466
.L455:
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
	blt .L447
	b .L478
.L458:
	b .L455
.L462:
	ldr r4, =255
	str r4, [fp, #-20]
	b .L463
.L463:
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
	blt .L454
	b .L472
.L466:
	b .L463
.L472:
	b .L455
.L478:
	b .L448

	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
.L479:
	bl write_pgm
	mov r0, #0
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
	.ident "ZWJM"
