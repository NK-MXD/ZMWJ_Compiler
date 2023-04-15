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
	b .L368
.L377:
	b .L375

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L379:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r1, =100
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r1, #1
	movle r1, #0
	bgt .L381
	b .L385
.L381:
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
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L382:
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
	b .L388
.L385:
	b .L382
.L388:
	ldr r1, [fp, #-12]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L389
	b .L392
.L389:
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
	b .L388
.L390:
	vldr.32 s0, [fp, #-8]
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L392:
	b .L390

	.global F1
	.type F1 , %function
F1:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L394:
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
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L396:
	vstr.32 s0, [fp, #-4]
	ldr r0, =1
	vmov s0, r0
	vcvt.f32.s32  s6, s0
	ldr r0, =1
	vmov s0, r0
	vcvt.f32.s32  s5, s0
	vldr.32 s4, [fp, #-4]
	vldr.32 s0, [fp, #-4]
	vmul.f32 s0, s4, s0
	vsub.f32 s0, s5, s0
	bl my_sqrt
	vdiv.f32 s0, s6, s0
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr

	.global simpson
	.type simpson , %function
simpson:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L398:
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
	beq .L403
	b .L407
.L403:
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
.L404:
	ldr r1, [fp, #-12]
	cmp r1, #2
	moveq r1, #1
	movne r1, #0
	beq .L408
	b .L412
.L407:
	b .L404
.L408:
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
.L409:
	ldr r1, =0
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L412:
	b .L409

	.global asr5
	.type asr5 , %function
asr5:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #32
.L413:
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
	ble .L422
	b .L426
.L422:
	vldr.32 s1, [fp, #-28]
	vldr.32 s0, [fp, #-32]
	vadd.f32 s2, s1, s0
	vldr.32 s1, [fp, #-28]
	vldr.32 s0, [fp, #-32]
	vadd.f32 s1, s1, s0
	vldr.32 s0, [fp, #-16]
	vsub.f32 s1, s1, s0
	ldr r1, =1097859072
	vmov s0, r1
	vdiv.f32 s0, s1, s0
	vadd.f32 s0, s2, s0
	add sp, sp, #32
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L423:
	vldr.32 s5, [fp, #-4]
	vldr.32 s4, [fp, #-24]
	vldr.32 s1, [fp, #-12]
	ldr r0, =2
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s2, s1, s0
	vldr.32 s3, [fp, #-28]
	ldr r0, [fp, #-20]
	vmov s0, s5
	vmov s1, s4
	bl asr5
	vmov s6, s0
	vldr.32 s5, [fp, #-24]
	vldr.32 s4, [fp, #-8]
	vldr.32 s1, [fp, #-12]
	ldr r0, =2
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vdiv.f32 s2, s1, s0
	vldr.32 s3, [fp, #-32]
	ldr r0, [fp, #-20]
	vmov s0, s5
	vmov s1, s4
	bl asr5
	vadd.f32 s0, s6, s0
	add sp, sp, #32
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L426:
	b .L423

	.global asr4
	.type asr4 , %function
asr4:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #16
.L427:
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
.L432:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r0, =981668463
	vmov s0, r0
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L434
	b .L438
.L434:
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
.L435:
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
.L438:
	b .L435

	.global my_exp
	.type my_exp , %function
my_exp:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L440:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r0, =0
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L442
	b .L446
.L442:
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
.L443:
	vldr.32 s0, [fp, #-4]
	vcvt.s32.f32  s0, s0
	vmov r0, s0
	str r0, [fp, #-8]
	vldr.32 s4, [fp, #-4]
	ldr r0, [fp, #-8]
	vmov s0, r0
	vcvt.f32.s32  s0, s0
	vsub.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	ldr r0, addr_e0
	vldr.32 s0, [r0]
	ldr r0, [fp, #-8]
	bl my_pow
	vstr.32 s0, [fp, #-12]
	vldr.32 s0, [fp, #-4]
	bl eee
	vstr.32 s0, [fp, #-16]
	vldr.32 s1, [fp, #-12]
	vldr.32 s0, [fp, #-16]
	vmul.f32 s0, s1, s0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L446:
	b .L443

	.global my_ln
	.type my_ln , %function
my_ln:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L450:
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
.L452:
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
.L455:
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
	sub sp, sp, #16
.L458:
	bl getint
	str r0, [fp, #-4]
	b .L460
.L460:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L461
	b .L464
.L461:
	bl getfloat
	vmov s4, s0
	vstr.32 s4, [fp, #-8]
	bl getfloat
	vstr.32 s0, [fp, #-12]
	vldr.32 s0, [fp, #-8]
	bl my_fabs
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s0, [fp, #-8]
	mov r0, #2
	bl my_pow
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s0, [fp, #-8]
	bl my_sqrt
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s0, [fp, #-8]
	bl my_exp
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L468
	b .L473
.L462:
	mov r0, #0
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L464:
	b .L462
.L468:
	vldr.32 s0, [fp, #-8]
	bl my_ln
	bl putfloat
	b .L470
.L469:
	mov r0, #45
	bl putch
	b .L470
.L470:
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L477
	b .L480
.L473:
	b .L469
.L474:
	vldr.32 s0, [fp, #-8]
	vldr.32 s1, [fp, #-12]
	bl my_log
	bl putfloat
	b .L476
.L475:
	mov r0, #45
	bl putch
	b .L476
.L476:
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L484
	b .L489
.L477:
	vldr.32 s5, [fp, #-12]
	ldr r0, =0
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L474
	b .L483
.L480:
	b .L475
.L483:
	b .L475
.L484:
	vldr.32 s0, [fp, #-8]
	vldr.32 s1, [fp, #-12]
	bl my_powf
	bl putfloat
	b .L486
.L485:
	mov r0, #45
	bl putch
	b .L486
.L486:
	mov r0, #10
	bl putch
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L460
.L489:
	b .L485

addr_e0:
	.word e
	.ident "ZWJM"
