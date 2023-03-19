	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global e
	.align 4
	.size e, 4
e:
	.word 0
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r4, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L390:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L392
	b .L396
.L392:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L393:
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vmov r16, r23
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L396:
	b .L393

	.global my_pow
	.type my_pow , %function
my_pow:
	push {r4, r5, r6, r7, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L397:
	vstr.32 r16, [fp, #-4]
	str r0, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L400
	b .L404
.L400:
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	sub r6, r5, r4
	mov r0, r6
	vmov r16, r21
	bl my_pow
	vmov r21, r16
	vmov r16, r23
	add sp, sp, #12
	pop {r4, r5, r6, r7, r21, r22, r23, fp, lr}
	bx lr
.L401:
	ldr r4, =1065353216
	vmov r21, r4
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-12]
	b .L406
.L404:
	b .L401
.L406:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L407
	b .L410
.L407:
	ldr r4, [fp, #-8]
	ldr r5, =2
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L412
	b .L415
.L408:
	ldr r4, [fp, #-12]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #12
	pop {r4, r5, r6, r7, r21, r22, r23, fp, lr}
	bx lr
.L410:
	b .L408
.L412:
	ldr r4, [fp, #-12]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	vcvt.s32.f32  r21, r23
	vmov r4, r21
	str r4, [fp, #-12]
	b .L413
.L413:
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-4]
	vstr.32 r23, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L407
	b .L420
.L415:
	b .L413
.L420:
	b .L408

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r4, r5, r21, r22, r23, r24, r25, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L422:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =100
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L424
	b .L428
.L424:
	vldr.32 r21, [fp, #-4]
	ldr r4, =100
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vmov r16, r22
	bl my_sqrt
	vmov r21, r16
	ldr r4, =1092616192
	vmov r22, r4
	vmov r16, r23
	add sp, sp, #12
	pop {r4, r5, r21, r22, r23, r24, r25, fp, lr}
	bx lr
.L425:
	vldr.32 r21, [fp, #-4]
	ldr r4, =8
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	ldr r4, =1056964608
	vmov r21, r4
	ldr r4, =2
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	ldr r4, =4
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	vcvt.s32.f32  r21, r22
	vmov r4, r21
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-12]
	b .L431
.L428:
	b .L425
.L431:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L432
	b .L435
.L432:
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	ldr r4, [fp, #-8]
	vmov r23, r4
	vcvt.f32.s32  r24, r23
	ldr r4, =2
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcvt.s32.f32  r21, r22
	vmov r4, r21
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L432
	b .L440
.L433:
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #12
	pop {r4, r5, r21, r22, r23, r24, r25, fp, lr}
	bx lr
.L435:
	b .L433
.L440:
	b .L433

	.global F1
	.type F1 , %function
F1:
	push {r4, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L442:
	vstr.32 r16, [fp, #-4]
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	vmov r16, r23
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr

	.global F2
	.type F2 , %function
F2:
	push {r4, r21, r22, r23, r24, r25, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L444:
	vstr.32 r16, [fp, #-4]
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r23, r21
	vldr.32 r21, [fp, #-4]
	vldr.32 r24, [fp, #-4]
	vmov r16, r21
	bl my_sqrt
	vmov r21, r16
	vmov r16, r23
	add sp, sp, #4
	pop {r4, r21, r22, r23, r24, r25, fp, lr}
	bx lr

	.global simpson
	.type simpson , %function
simpson:
	push {r4, r21, r22, r23, r24, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L446:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	str r0, [fp, #-12]
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-8]
	vldr.32 r23, [fp, #-4]
	ldr r4, =2
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcvt.s32.f32  r21, r23
	vmov r4, r21
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L451
	b .L455
.L451:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	bl F1
	vmov r21, r16
	ldr r4, =4
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	ldr r4, [fp, #-16]
	vmov r22, r4
	vcvt.f32.s32  r24, r22
	vmov r16, r24
	bl F1
	vmov r22, r16
	vldr.32 r21, [fp, #-8]
	vmov r16, r21
	bl F1
	vmov r21, r16
	vldr.32 r21, [fp, #-8]
	vldr.32 r22, [fp, #-4]
	ldr r4, =6
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vmov r16, r22
	add sp, sp, #16
	pop {r4, r21, r22, r23, r24, fp, lr}
	bx lr
.L452:
	ldr r4, [fp, #-12]
	cmp r4, #2
	moveq r4, #1
	movne r4, #0
	beq .L456
	b .L460
.L455:
	b .L452
.L456:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	bl F2
	vmov r21, r16
	ldr r4, =4
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	ldr r4, [fp, #-16]
	vmov r22, r4
	vcvt.f32.s32  r24, r22
	vmov r16, r24
	bl F2
	vmov r22, r16
	vldr.32 r21, [fp, #-8]
	vmov r16, r21
	bl F2
	vmov r21, r16
	vldr.32 r21, [fp, #-8]
	vldr.32 r22, [fp, #-4]
	ldr r4, =6
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vmov r16, r22
	add sp, sp, #16
	pop {r4, r21, r22, r23, r24, fp, lr}
	bx lr
.L457:
	ldr r4, =0
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #16
	pop {r4, r21, r22, r23, r24, fp, lr}
	bx lr
.L460:
	b .L457

	.global asr5
	.type asr5 , %function
asr5:
	push {r4, r5, r6, r21, r22, r23, r24, r25, r26, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L461:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	vstr.32 r18, [fp, #-12]
	vstr.32 r19, [fp, #-16]
	str r0, [fp, #-20]
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-8]
	vldr.32 r23, [fp, #-4]
	ldr r4, =2
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcvt.s32.f32  r21, r23
	vmov r4, r21
	str r4, [fp, #-24]
	vldr.32 r21, [fp, #-4]
	ldr r4, [fp, #-24]
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	ldr r4, [fp, #-20]
	mov r0, r4
	vmov r16, r21
	vmov r17, r23
	bl simpson
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-28]
	ldr r4, [fp, #-24]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-8]
	ldr r4, [fp, #-20]
	mov r0, r4
	vmov r16, r22
	vmov r17, r21
	bl simpson
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-32]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-32]
	add r6, r4, r5
	vmov r21, r6
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-16]
	vmov r16, r23
	bl my_fabs
	vmov r21, r16
	ldr r4, =15
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vldr.32 r22, [fp, #-12]
	vcmp.f32 r21, r24
	vmrs APSR_nzcv, FPSCR
	movle r4, #1
	movgt r4, #0
	ble .L470
	b .L474
.L470:
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-32]
	add r6, r4, r5
	vmov r21, r6
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-32]
	add r6, r4, r5
	vmov r21, r6
	vcvt.f32.s32  r23, r21
	vldr.32 r21, [fp, #-16]
	ldr r4, =1097859072
	vmov r21, r4
	vmov r16, r21
	add sp, sp, #32
	pop {r4, r5, r6, r21, r22, r23, r24, r25, r26, fp, lr}
	bx lr
.L471:
	vldr.32 r21, [fp, #-4]
	ldr r4, [fp, #-24]
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vldr.32 r22, [fp, #-12]
	ldr r4, =2
	vmov r24, r4
	vcvt.f32.s32  r25, r24
	ldr r4, [fp, #-28]
	vmov r22, r4
	vcvt.f32.s32  r25, r22
	ldr r4, [fp, #-20]
	mov r0, r4
	vmov r16, r21
	vmov r17, r23
	vmov r18, r24
	vmov r19, r25
	bl asr5
	vmov r21, r16
	ldr r4, [fp, #-24]
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vldr.32 r22, [fp, #-8]
	vldr.32 r24, [fp, #-12]
	ldr r4, =2
	vmov r25, r4
	vcvt.f32.s32  r26, r25
	ldr r4, [fp, #-32]
	vmov r24, r4
	vcvt.f32.s32  r26, r24
	ldr r4, [fp, #-20]
	mov r0, r4
	vmov r16, r23
	vmov r17, r22
	vmov r18, r25
	vmov r19, r26
	bl asr5
	vmov r22, r16
	vmov r16, r23
	add sp, sp, #32
	pop {r4, r5, r6, r21, r22, r23, r24, r25, r26, fp, lr}
	bx lr
.L474:
	b .L471

	.global asr4
	.type asr4 , %function
asr4:
	push {r4, r21, r22, r23, r24, r25, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L475:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	vstr.32 r18, [fp, #-12]
	str r0, [fp, #-16]
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-8]
	vldr.32 r23, [fp, #-12]
	vldr.32 r24, [fp, #-4]
	vldr.32 r25, [fp, #-8]
	ldr r4, [fp, #-16]
	mov r0, r4
	vmov r16, r24
	vmov r17, r25
	bl simpson
	vmov r24, r16
	ldr r4, [fp, #-16]
	mov r0, r4
	vmov r16, r21
	vmov r17, r22
	vmov r18, r23
	vmov r19, r24
	bl asr5
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #16
	pop {r4, r21, r22, r23, r24, r25, fp, lr}
	bx lr

	.global eee
	.type eee , %function
eee:
	push {r4, r5, r6, r21, r22, r23, r24, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L480:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =981668463
	vmov r22, r4
	vcmp.f32 r21, r22
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L482
	b .L486
.L482:
	vldr.32 r21, [fp, #-4]
	ldr r4, =2
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vmov r16, r22
	bl eee
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mul r6, r4, r5
	vmov r21, r6
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #8
	pop {r4, r5, r6, r21, r22, r23, r24, fp, lr}
	bx lr
.L483:
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-4]
	ldr r4, =2
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	mov r0, #3
	vmov r16, r21
	bl my_pow
	vmov r21, r16
	ldr r4, =6
	vmov r23, r4
	vcvt.f32.s32  r24, r23
	vldr.32 r22, [fp, #-4]
	mov r0, #4
	vmov r16, r22
	bl my_pow
	vmov r22, r16
	ldr r4, =24
	vmov r23, r4
	vcvt.f32.s32  r24, r23
	vldr.32 r21, [fp, #-4]
	mov r0, #5
	vmov r16, r21
	bl my_pow
	vmov r21, r16
	ldr r4, =120
	vmov r23, r4
	vcvt.f32.s32  r24, r23
	vmov r16, r21
	add sp, sp, #8
	pop {r4, r5, r6, r21, r22, r23, r24, fp, lr}
	bx lr
.L486:
	b .L483

	.global my_exp
	.type my_exp , %function
my_exp:
	push {r4, r5, r6, r21, r22, r23, r24, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L488:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L490
	b .L494
.L490:
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r23, r4
	vmov r16, r24
	bl my_exp
	vmov r21, r16
	vmov r16, r23
	add sp, sp, #16
	pop {r4, r5, r6, r21, r22, r23, r24, fp, lr}
	bx lr
.L491:
	vldr.32 r21, [fp, #-4]
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-8]
	vldr.32 r21, [fp, #-4]
	ldr r4, [fp, #-8]
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	ldr r4, addr_e0
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-8]
	mov r0, r4
	vmov r16, r22
	bl my_pow
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-12]
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	bl eee
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	mul r6, r4, r5
	vmov r21, r6
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #16
	pop {r4, r5, r6, r21, r22, r23, r24, fp, lr}
	bx lr
.L494:
	b .L491

	.global my_ln
	.type my_ln , %function
my_ln:
	push {r4, r21, r22, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L498:
	vstr.32 r16, [fp, #-4]
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	mov r0, #1
	vmov r16, r22
	vmov r17, r21
	ldr r4, =841731191
	vmov r18, r4
	bl asr4
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r21, r22, fp, lr}
	bx lr

	.global my_log
	.type my_log , %function
my_log:
	push {r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L500:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	vldr.32 r21, [fp, #-8]
	vmov r16, r21
	bl my_ln
	vmov r21, r16
	vldr.32 r22, [fp, #-4]
	vmov r16, r22
	bl my_ln
	vmov r22, r16
	vmov r16, r23
	add sp, sp, #8
	pop {r21, r22, r23, fp, lr}
	bx lr

	.global my_powf
	.type my_powf , %function
my_powf:
	push {r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L503:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	vldr.32 r21, [fp, #-8]
	vldr.32 r22, [fp, #-4]
	vmov r16, r22
	bl my_ln
	vmov r22, r16
	vmov r16, r23
	bl my_exp
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #8
	pop {r21, r22, r23, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L506:
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L508
.L508:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L509
	b .L512
.L509:
	bl getfloat
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-8]
	bl getfloat
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	bl my_fabs
	vmov r21, r16
	vmov r16, r21
	bl putfloat
	mov r0, #32
	bl putch
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	mov r0, #2
	vmov r16, r22
	bl my_pow
	vmov r21, r16
	vmov r16, r21
	bl putfloat
	mov r0, #32
	bl putch
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	bl my_sqrt
	vmov r21, r16
	vmov r16, r21
	bl putfloat
	mov r0, #32
	bl putch
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	bl my_exp
	vmov r21, r16
	vmov r16, r21
	bl putfloat
	mov r0, #32
	bl putch
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L516
	b .L521
.L510:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r21, r22, r23, fp, lr}
	bx lr
.L512:
	b .L510
.L516:
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	bl my_ln
	vmov r21, r16
	vmov r16, r21
	bl putfloat
	b .L518
.L517:
	mov r0, #45
	bl putch
	b .L518
.L518:
	mov r0, #32
	bl putch
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L525
	b .L528
.L521:
	b .L517
.L522:
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-12]
	vmov r21, r4
	vcvt.f32.s32  r23, r21
	vmov r16, r22
	vmov r17, r23
	bl my_log
	vmov r21, r16
	vmov r16, r21
	bl putfloat
	b .L524
.L523:
	mov r0, #45
	bl putch
	b .L524
.L524:
	mov r0, #32
	bl putch
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L532
	b .L537
.L525:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L522
	b .L531
.L528:
	b .L523
.L531:
	b .L523
.L532:
	ldr r4, [fp, #-8]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, [fp, #-12]
	vmov r21, r4
	vcvt.f32.s32  r23, r21
	vmov r16, r22
	vmov r17, r23
	bl my_powf
	vmov r21, r16
	vmov r16, r21
	bl putfloat
	b .L534
.L533:
	mov r0, #45
	bl putch
	b .L534
.L534:
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L509
	b .L541
.L537:
	b .L533
.L541:
	b .L510

addr_e0:
	.word e
