	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global e
	.align 4
	.size e, 4
e:
	.word 1076754516
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L352:
	vstr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-4]
	ldr r1, =0
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movgt r1, #1
	movle r1, #0
	bgt .L354
	b .L358
.L354:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L355:
	vldr.32 s1, [fp, #-4]
	vneg.f32 s0, s1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L358:
	b .L355

	.global my_pow
	.type my_pow , %function
my_pow:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L359:
	vstr.32 s0, [fp, #-4]
	str r0, [fp, #-8]
	mov r1, r0
	cmp r1, #0
	movlt r1, #1
	movge r1, #0
	blt .L362
	b .L366
.L362:
	ldr r0, =1
	vmov s0, r0
	vcvt.f32.s32  s4, s0
	vldr.32 s0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, =0
	sub r0, r0, r1
	bl my_pow
	vdiv.f32 s0, s4, s0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L363:
	ldr r1, =1065353216
	vmov s0, r1
	vstr.32 s0, [fp, #-12]
	b .L368
.L366:
	b .L363
.L368:
	ldr r1, [fp, #-8]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L369
	b .L372
.L369:
	ldr r1, [fp, #-8]
	and r1, r1, #1
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L374
	b .L377
.L370:
	vldr.32 s0, [fp, #-12]
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L372:
	b .L370
.L374:
	vldr.32 s1, [fp, #-12]
	vldr.32 s0, [fp, #-4]
	vmul.f32 s0, s1, s0
	vstr.32 s0, [fp, #-12]
	b .L375
.L375:
	vldr.32 s1, [fp, #-4]
	vldr.32 s0, [fp, #-4]
	vmul.f32 s0, s1, s0
	vstr.32 s0, [fp, #-4]
	ldr r2, [fp, #-8]
	ldr r1, =2
	sdiv r1, r2, r1
	str r1, [fp, #-8]
	mov r1, r1
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L369
	b .L382
.L377:
	b .L375
.L382:
	b .L370

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L384:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r1, =100
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r1, #1
	movle r1, #0
	bgt .L386
	b .L390
.L386:
	vldr.32 s4, [fp, #-4]
	ldr r0, =100
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	bl my_sqrt
	vmov s1, s0
	ldr r1, =1092616192
	vmov s0, r1
	vmul.f32 s0, s0, s1
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L387:
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
	b .L393
.L390:
	b .L387
.L393:
	ldr r1, =10
	ldr r2, =10
	cmp r2, #0
	movne r2, #1
	moveq r2, #0
	bne .L394
	b .L397
.L394:
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
	bne .L519
	b .L402
.L395:
	vldr.32 s0, [fp, #-8]
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L397:
	ldr r1, =10
	b .L395
.L402:
	b .L395
.L519:
	mov r1, r2
	b .L394

	.global F1
	.type F1 , %function
F1:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L404:
	vstr.32 s0, [fp, #-4]
	ldr r1, =1
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	vldr.32 s0, [fp, #-4]
	vdiv.f32 s0, s1, s0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global F2
	.type F2 , %function
F2:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L406:
	vstr.32 s0, [fp, #-4]
	ldr r0, =1
	vmov s0, r0
	vcvt.f32.s32  s5, s0
	vldr.32 s4, [fp, #-4]
	vldr.32 s0, [fp, #-4]
	vmul.f32 s0, s4, s0
	vsub.f32 s0, s5, s0
	bl my_sqrt
	vdiv.f32 s0, s5, s0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr

	.global simpson
	.type simpson , %function
simpson:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L408:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	str r0, [fp, #-12]
	vldr.32 s5, [fp, #-4]
	vldr.32 s4, [fp, #-8]
	vldr.32 s0, [fp, #-4]
	vsub.f32 s4, s4, s0
	ldr r1, =2
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	vadd.f32 s0, s5, s0
	vstr.32 s0, [fp, #-16]
	ldr r1, [fp, #-12]
	cmp r1, #1
	moveq r1, #1
	movne r1, #0
	beq .L413
	b .L417
.L413:
	vldr.32 s0, [fp, #-4]
	bl F1
	vmov s5, s0
	ldr r0, =4
	vmov s0, r0
	vcvt.f32.s32  s4, s0
	vldr.32 s0, [fp, #-16]
	bl F1
	vmul.f32 s0, s4, s0
	vadd.f32 s4, s5, s0
	vldr.32 s0, [fp, #-8]
	bl F1
	vadd.f32 s2, s4, s0
	vldr.32 s1, [fp, #-8]
	vldr.32 s0, [fp, #-4]
	vsub.f32 s0, s1, s0
	vmul.f32 s1, s2, s0
	ldr r1, =6
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s1, s0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L414:
	ldr r1, [fp, #-12]
	cmp r1, #2
	moveq r1, #1
	movne r1, #0
	beq .L418
	b .L422
.L417:
	b .L414
.L418:
	vldr.32 s0, [fp, #-4]
	bl F2
	vmov s5, s0
	ldr r0, =4
	vmov s0, r0
	vcvt.f32.s32  s4, s0
	vldr.32 s0, [fp, #-16]
	bl F2
	vmul.f32 s0, s4, s0
	vadd.f32 s4, s5, s0
	vldr.32 s0, [fp, #-8]
	bl F2
	vadd.f32 s2, s4, s0
	vldr.32 s1, [fp, #-8]
	vldr.32 s0, [fp, #-4]
	vsub.f32 s0, s1, s0
	vmul.f32 s1, s2, s0
	ldr r1, =6
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s1, s0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L419:
	ldr r1, =0
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L422:
	b .L419

	.global asr5
	.type asr5 , %function
asr5:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #32
.L423:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	vstr.32 s3, [fp, #-16]
	str r0, [fp, #-20]
	vldr.32 s4, [fp, #-4]
	vldr.32 s1, [fp, #-8]
	vldr.32 s0, [fp, #-4]
	vsub.f32 s1, s1, s0
	ldr r0, =2
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s4, s0
	vstr.32 s0, [fp, #-24]
	vldr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-24]
	ldr r0, [fp, #-20]
	bl simpson
	vstr.32 s0, [fp, #-28]
	vldr.32 s0, [fp, #-24]
	vldr.32 s1, [fp, #-8]
	ldr r0, [fp, #-20]
	bl simpson
	vstr.32 s0, [fp, #-32]
	vldr.32 s4, [fp, #-28]
	vldr.32 s0, [fp, #-32]
	vadd.f32 s4, s4, s0
	vldr.32 s0, [fp, #-16]
	vsub.f32 s0, s4, s0
	bl my_fabs
	vmov s2, s0
	ldr r1, =15
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	vldr.32 s0, [fp, #-12]
	vmul.f32 s0, s1, s0
	vcmp.f32 s2, s0
	vmrs APSR_nzcv, FPSCR
	movle r1, #1
	movgt r1, #0
	ble .L432
	b .L436
.L432:
	vldr.32 s1, [fp, #-28]
	vldr.32 s0, [fp, #-32]
	vadd.f32 s2, s1, s0
	vldr.32 s0, [fp, #-28]
	vldr.32 s0, [fp, #-32]
	vldr.32 s0, [fp, #-16]
	vsub.f32 s1, s2, s0
	ldr r1, =1097859072
	vmov s0, r1
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s2, s0
	add sp, sp, #32
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L433:
	vldr.32 s4, [fp, #-4]
	vldr.32 s2, [fp, #-24]
	vldr.32 s1, [fp, #-12]
	ldr r0, =2
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s5, s1, s0
	vldr.32 s3, [fp, #-28]
	ldr r0, [fp, #-20]
	vmov s0, s4
	vmov s1, s2
	vmov s2, s5
	bl asr5
	vmov s4, s0
	vldr.32 s2, [fp, #-24]
	vldr.32 s1, [fp, #-8]
	vldr.32 s0, [fp, #-12]
	vldr.32 s3, [fp, #-32]
	ldr r0, [fp, #-20]
	vmov s0, s2
	vmov s2, s5
	bl asr5
	vadd.f32 s0, s4, s0
	add sp, sp, #32
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L436:
	b .L433

	.global asr4
	.type asr4 , %function
asr4:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #16
.L437:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	str r0, [fp, #-16]
	vldr.32 s6, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	vldr.32 s4, [fp, #-12]
	vldr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-8]
	ldr r0, [fp, #-16]
	bl simpson
	vmov s3, s0
	ldr r0, [fp, #-16]
	vmov s0, s6
	vmov s1, s5
	vmov s2, s4
	bl asr5
	add sp, sp, #16
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr

	.global eee
	.type eee , %function
eee:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L442:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r0, =981668463
	vmov s0, r0
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L444
	b .L448
.L444:
	vldr.32 s4, [fp, #-4]
	ldr r0, =2
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	bl eee
	vstr.32 s0, [fp, #-8]
	vldr.32 s1, [fp, #-8]
	vldr.32 s0, [fp, #-8]
	vmul.f32 s0, s1, s0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L445:
	ldr r0, =1
	vmov s0, r0
	vcvt.f32.s32  s4, s0
	vldr.32 s0, [fp, #-4]
	vadd.f32 s5, s4, s0
	vldr.32 s4, [fp, #-4]
	vldr.32 s0, [fp, #-4]
	vmul.f32 s4, s4, s0
	ldr r0, =2
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	vadd.f32 s5, s5, s0
	vldr.32 s0, [fp, #-4]
	mov r0, #3
	bl my_pow
	vmov s4, s0
	ldr r0, =6
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	vadd.f32 s5, s5, s0
	vldr.32 s0, [fp, #-4]
	mov r0, #4
	bl my_pow
	vmov s4, s0
	ldr r0, =24
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s4, s0
	vadd.f32 s4, s5, s0
	vldr.32 s0, [fp, #-4]
	mov r0, #5
	bl my_pow
	vmov s1, s0
	ldr r1, =120
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s4, s0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L448:
	b .L445

	.global my_exp
	.type my_exp , %function
my_exp:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L450:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r0, =0
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L452
	b .L456
.L452:
	ldr r0, =1
	vmov s0, r0
	vcvt.f32.s32  s5, s0
	vldr.32 s4, [fp, #-4]
	vneg.f32 s0, s4
	bl my_exp
	vdiv.f32 s0, s5, s0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L453:
	vldr.32 s0, [fp, #-4]
	vcvt.s32.f32  s0, s0
	vmov r1, s0
	vldr.32 s4, [fp, #-4]
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vsub.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	ldr r0, addr_e0
	vldr.32 s0, [r0]
	mov r0, r1
	bl my_pow
	vstr.32 s0, [fp, #-8]
	vldr.32 s0, [fp, #-4]
	bl eee
	vstr.32 s0, [fp, #-12]
	vldr.32 s1, [fp, #-8]
	vldr.32 s0, [fp, #-12]
	vmul.f32 s0, s1, s0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L456:
	b .L453

	.global my_ln
	.type my_ln , %function
my_ln:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L460:
	vstr.32 s0, [fp, #-4]
	ldr r0, =1
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vldr.32 s1, [fp, #-4]
	mov r0, #1
	ldr r1, =841731191
	vmov s2, r1
	bl asr4
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global my_log
	.type my_log , %function
my_log:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L462:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vldr.32 s0, [fp, #-8]
	bl my_ln
	vmov s4, s0
	vldr.32 s0, [fp, #-4]
	bl my_ln
	vdiv.f32 s0, s4, s0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr

	.global my_powf
	.type my_powf , %function
my_powf:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L465:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vldr.32 s4, [fp, #-8]
	vldr.32 s0, [fp, #-4]
	bl my_ln
	vmul.f32 s0, s4, s0
	bl my_exp
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L468:
	bl getint
	b .L470
.L470:
	mov r4, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L471
	b .L474
.L471:
	bl getfloat
	vmov s4, s0
	vstr.32 s4, [fp, #-4]
	bl getfloat
	vstr.32 s0, [fp, #-8]
	vldr.32 s0, [fp, #-4]
	bl my_fabs
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s0, [fp, #-4]
	mov r0, #2
	bl my_pow
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s0, [fp, #-4]
	bl my_sqrt
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s0, [fp, #-4]
	bl my_exp
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-4]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L478
	b .L483
.L472:
	mov r0, #0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L474:
	b .L472
.L478:
	vldr.32 s0, [fp, #-4]
	bl my_ln
	bl putfloat
	b .L480
.L479:
	mov r0, #45
	bl putch
	b .L480
.L480:
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-4]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L487
	b .L490
.L483:
	b .L479
.L484:
	vldr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-8]
	bl my_log
	bl putfloat
	b .L486
.L485:
	mov r0, #45
	bl putch
	b .L486
.L486:
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-4]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L494
	b .L499
.L487:
	vldr.32 s5, [fp, #-8]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L484
	b .L493
.L490:
	b .L485
.L493:
	b .L485
.L494:
	vldr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-8]
	bl my_powf
	bl putfloat
	b .L496
.L495:
	mov r0, #45
	bl putch
	b .L496
.L496:
	mov r0, #10
	bl putch
	sub r0, r4, #1
	mov r4, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L471
	b .L503
.L499:
	b .L495
.L503:
	b .L472

addr_e0:
	.word e
	.ident "ZWJM"
