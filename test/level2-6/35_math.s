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
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L352:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L354
	b .L358
.L354:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L355:
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L358:
	b .L355

	.global my_pow
	.type my_pow , %function
my_pow:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #16
.L359:
	vstr.32 s0, [fp, #-4]
	str r0, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L362
	b .L366
.L362:
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	sub r6, r5, r4
	mov r0, r6
	vmov s0, s5
	bl my_pow
	vmov s5, s0
	vdiv.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #16
	vpop {s4, s5, s6, s7}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L363:
	ldr r4, =1065353216
	vmov s5, r4
	vstr.32 s5, [fp, #-12]
	b .L368
.L366:
	b .L363
.L368:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L369
	b .L372
.L369:
	ldr r4, [fp, #-8]
	ldr r5, =2
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L374
	b .L377
.L370:
	vldr.32 s5, [fp, #-12]
	vmov s0, s5
	add sp, sp, #16
	vpop {s4, s5, s6, s7}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L372:
	b .L370
.L374:
	vldr.32 s5, [fp, #-12]
	vldr.32 s6, [fp, #-4]
	vmul.f32 s7, s5, s6
	vstr.32 s7, [fp, #-12]
	b .L375
.L375:
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-4]
	vmul.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L369
	b .L382
.L377:
	b .L375
.L382:
	b .L370

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #16
.L384:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =100
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L386
	b .L390
.L386:
	vldr.32 s5, [fp, #-4]
	ldr r4, =100
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s5, s7
	vmov s0, s6
	bl my_sqrt
	vmov s5, s0
	ldr r4, =1092616192
	vmov s6, r4
	vmul.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L387:
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
	b .L393
.L390:
	b .L387
.L393:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L394
	b .L397
.L394:
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
	bne .L394
	b .L402
.L395:
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L397:
	b .L395
.L402:
	b .L395

	.global F1
	.type F1 , %function
F1:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L404:
	vstr.32 s0, [fp, #-4]
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	vdiv.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr

	.global F2
	.type F2 , %function
F2:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L406:
	vstr.32 s0, [fp, #-4]
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s7, s5
	vldr.32 s5, [fp, #-4]
	vldr.32 s8, [fp, #-4]
	vmul.f32 s9, s5, s8
	vsub.f32 s5, s7, s9
	vmov s0, s5
	bl my_sqrt
	vmov s5, s0
	vdiv.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr

	.global simpson
	.type simpson , %function
simpson:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #16
.L408:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	str r0, [fp, #-12]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-8]
	vldr.32 s7, [fp, #-4]
	vsub.f32 s8, s6, s7
	ldr r4, =2
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s8, s7
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L413
	b .L417
.L413:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl F1
	vmov s5, s0
	ldr r4, =4
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vldr.32 s6, [fp, #-16]
	vmov s0, s6
	bl F1
	vmov s6, s0
	vmul.f32 s8, s7, s6
	vadd.f32 s6, s5, s8
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl F1
	vmov s5, s0
	vadd.f32 s7, s6, s5
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vsub.f32 s8, s5, s6
	vmul.f32 s5, s7, s8
	ldr r4, =6
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s5, s7
	vmov s0, s6
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L414:
	ldr r4, [fp, #-12]
	cmp r4, #2
	moveq r4, #1
	movne r4, #0
	beq .L418
	b .L422
.L417:
	b .L414
.L418:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl F2
	vmov s5, s0
	ldr r4, =4
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vldr.32 s6, [fp, #-16]
	vmov s0, s6
	bl F2
	vmov s6, s0
	vmul.f32 s8, s7, s6
	vadd.f32 s6, s5, s8
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl F2
	vmov s5, s0
	vadd.f32 s7, s6, s5
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vsub.f32 s8, s5, s6
	vmul.f32 s5, s7, s8
	ldr r4, =6
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s5, s7
	vmov s0, s6
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L419:
	ldr r4, =0
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vmov s0, s6
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L422:
	b .L419

	.global asr5
	.type asr5 , %function
asr5:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9, s10, s11}
	mov fp, sp
	sub sp, sp, #32
.L423:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	vstr.32 s3, [fp, #-16]
	str r0, [fp, #-20]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-8]
	vldr.32 s7, [fp, #-4]
	vsub.f32 s8, s6, s7
	ldr r4, =2
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s8, s7
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-24]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-24]
	ldr r4, [fp, #-20]
	mov r0, r4
	vmov s0, s5
	vmov s1, s6
	bl simpson
	vmov s5, s0
	vstr.32 s5, [fp, #-28]
	vldr.32 s5, [fp, #-24]
	vldr.32 s6, [fp, #-8]
	ldr r4, [fp, #-20]
	mov r0, r4
	vmov s0, s5
	vmov s1, s6
	bl simpson
	vmov s5, s0
	vstr.32 s5, [fp, #-32]
	vldr.32 s5, [fp, #-28]
	vldr.32 s6, [fp, #-32]
	vadd.f32 s7, s5, s6
	vldr.32 s5, [fp, #-16]
	vsub.f32 s6, s7, s5
	vmov s0, s6
	bl my_fabs
	vmov s5, s0
	ldr r4, =15
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vldr.32 s6, [fp, #-12]
	vmul.f32 s8, s7, s6
	vcmp.f32 s5, s8
	vmrs APSR_nzcv, FPSCR
	movle r4, #1
	movgt r4, #0
	ble .L432
	b .L436
.L432:
	vldr.32 s5, [fp, #-28]
	vldr.32 s6, [fp, #-32]
	vadd.f32 s7, s5, s6
	vldr.32 s5, [fp, #-28]
	vldr.32 s6, [fp, #-32]
	vadd.f32 s8, s5, s6
	vldr.32 s5, [fp, #-16]
	vsub.f32 s6, s8, s5
	ldr r4, =1097859072
	vmov s5, r4
	vdiv.f32 s8, s6, s5
	vadd.f32 s5, s7, s8
	vmov s0, s5
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9, s10, s11}
	pop {r3, r4, fp, lr}
	bx lr
.L433:
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-24]
	vldr.32 s7, [fp, #-12]
	ldr r4, =2
	vmov s8, r4
	vcvt.f32.s32  s9, s8
	vdiv.f32 s8, s7, s9
	vldr.32 s7, [fp, #-28]
	ldr r4, [fp, #-20]
	mov r0, r4
	vmov s0, s5
	vmov s1, s6
	vmov s2, s8
	vmov s3, s7
	bl asr5
	vmov s5, s0
	vldr.32 s6, [fp, #-24]
	vldr.32 s7, [fp, #-8]
	vldr.32 s8, [fp, #-12]
	ldr r4, =2
	vmov s9, r4
	vcvt.f32.s32  s10, s9
	vdiv.f32 s9, s8, s10
	vldr.32 s8, [fp, #-32]
	ldr r4, [fp, #-20]
	mov r0, r4
	vmov s0, s6
	vmov s1, s7
	vmov s2, s9
	vmov s3, s8
	bl asr5
	vmov s6, s0
	vadd.f32 s7, s5, s6
	vmov s0, s7
	add sp, sp, #32
	vpop {s4, s5, s6, s7, s8, s9, s10, s11}
	pop {r3, r4, fp, lr}
	bx lr
.L436:
	b .L433

	.global asr4
	.type asr4 , %function
asr4:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #16
.L437:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vstr.32 s2, [fp, #-12]
	str r0, [fp, #-16]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-8]
	vldr.32 s7, [fp, #-12]
	vldr.32 s8, [fp, #-4]
	vldr.32 s9, [fp, #-8]
	ldr r4, [fp, #-16]
	mov r0, r4
	vmov s0, s8
	vmov s1, s9
	bl simpson
	vmov s8, s0
	ldr r4, [fp, #-16]
	mov r0, r4
	vmov s0, s5
	vmov s1, s6
	vmov s2, s7
	vmov s3, s8
	bl asr5
	vmov s5, s0
	vmov s0, s5
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr

	.global eee
	.type eee , %function
eee:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L442:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =981668463
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L444
	b .L448
.L444:
	vldr.32 s5, [fp, #-4]
	ldr r4, =2
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vdiv.f32 s6, s5, s7
	vmov s0, s6
	bl eee
	vmov s5, s0
	vstr.32 s5, [fp, #-8]
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-8]
	vmul.f32 s7, s5, s6
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L445:
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	vadd.f32 s7, s6, s5
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-4]
	vmul.f32 s8, s5, s6
	ldr r4, =2
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vdiv.f32 s5, s8, s6
	vadd.f32 s6, s7, s5
	vldr.32 s5, [fp, #-4]
	mov r0, #3
	vmov s0, s5
	bl my_pow
	vmov s5, s0
	ldr r4, =6
	vmov s7, r4
	vcvt.f32.s32  s8, s7
	vdiv.f32 s7, s5, s8
	vadd.f32 s5, s6, s7
	vldr.32 s6, [fp, #-4]
	mov r0, #4
	vmov s0, s6
	bl my_pow
	vmov s6, s0
	ldr r4, =24
	vmov s7, r4
	vcvt.f32.s32  s8, s7
	vdiv.f32 s7, s6, s8
	vadd.f32 s6, s5, s7
	vldr.32 s5, [fp, #-4]
	mov r0, #5
	vmov s0, s5
	bl my_pow
	vmov s5, s0
	ldr r4, =120
	vmov s7, r4
	vcvt.f32.s32  s8, s7
	vdiv.f32 s7, s5, s8
	vadd.f32 s5, s6, s7
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L448:
	b .L445

	.global my_exp
	.type my_exp , %function
my_exp:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #16
.L450:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L452
	b .L456
.L452:
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s7, r4
	vsub.f32 s8, s7, s5
	vmov s0, s8
	bl my_exp
	vmov s5, s0
	vdiv.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L453:
	vldr.32 s5, [fp, #-4]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	str r4, [fp, #-8]
	vldr.32 s5, [fp, #-4]
	ldr r4, [fp, #-8]
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vsub.f32 s6, s5, s7
	vstr.32 s6, [fp, #-4]
	ldr r4, addr_e0
	vldr.32 s5, [r4]
	ldr r4, [fp, #-8]
	mov r0, r4
	vmov s0, s5
	bl my_pow
	vmov s5, s0
	vstr.32 s5, [fp, #-12]
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl eee
	vmov s5, s0
	vstr.32 s5, [fp, #-16]
	vldr.32 s5, [fp, #-12]
	vldr.32 s6, [fp, #-16]
	vmul.f32 s7, s5, s6
	vmov s0, s7
	add sp, sp, #16
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L456:
	b .L453

	.global my_ln
	.type my_ln , %function
my_ln:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L460:
	vstr.32 s0, [fp, #-4]
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-4]
	mov r0, #1
	vmov s0, s6
	vmov s1, s5
	ldr r4, =841731191
	vmov s2, r4
	bl asr4
	vmov s5, s0
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr

	.global my_log
	.type my_log , %function
my_log:
	push {fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L462:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_ln
	vmov s5, s0
	vldr.32 s6, [fp, #-4]
	vmov s0, s6
	bl my_ln
	vmov s6, s0
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {fp, lr}
	bx lr

	.global my_powf
	.type my_powf , %function
my_powf:
	push {fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L465:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vmov s0, s6
	bl my_ln
	vmov s6, s0
	vmul.f32 s7, s5, s6
	vmov s0, s7
	bl my_exp
	vmov s5, s0
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #16
.L468:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L470
.L470:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L471
	b .L474
.L471:
	bl getfloat
	vmov s5, s0
	vstr.32 s5, [fp, #-8]
	bl getfloat
	vmov s5, s0
	vstr.32 s5, [fp, #-12]
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_fabs
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	mov r0, #2
	vmov s0, s5
	bl my_pow
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_sqrt
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_exp
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L478
	b .L483
.L472:
	mov r0, #0
	add sp, sp, #16
	vpop {s4, s5, s6, s7}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L474:
	b .L472
.L478:
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_ln
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	b .L480
.L479:
	mov r0, #45
	bl putch
	b .L480
.L480:
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L487
	b .L490
.L483:
	b .L479
.L484:
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-12]
	vmov s0, s5
	vmov s1, s6
	bl my_log
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	b .L486
.L485:
	mov r0, #45
	bl putch
	b .L486
.L486:
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L494
	b .L499
.L487:
	vldr.32 s5, [fp, #-12]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L484
	b .L493
.L490:
	b .L485
.L493:
	b .L485
.L494:
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-12]
	vmov s0, s5
	vmov s1, s6
	bl my_powf
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	b .L496
.L495:
	mov r0, #45
	bl putch
	b .L496
.L496:
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L471
	b .L503
.L499:
	b .L495
.L503:
	b .L472

addr_e0:
	.word e
	.ident "ZWJM"
