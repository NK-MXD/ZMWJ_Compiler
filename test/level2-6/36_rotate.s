	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global width
	.align 4
	.size width, 4
width:
	.word 0
	.global height
	.align 4
	.size height, 4
height:
	.word 0
	.section .rodata
	.global MAX_WIDTH
	.align 4
	.size MAX_WIDTH, 4
MAX_WIDTH:
	.word 1024
	.global MAX_HEIGHT
	.align 4
	.size MAX_HEIGHT, 4
MAX_HEIGHT:
	.word 1024
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
	.comm image, 4194304, 4
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L234:
	vstr.32 s0, [fp, #-4]
	vldr.32 s0, [fp, #-4]
	ldr r1, =0
	vmov s1, r1
	vcvt.f32.s32  s1, s1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movgt r1, #1
	movle r1, #0
	bgt .L236
	b .L240
.L236:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L237:
	vldr.32 s1, [fp, #-4]
	vneg.f32 s0, s1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L240:
	b .L237

	.global p
	.type p , %function
p:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L241:
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
.L243:
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
	ble .L245
	b .L249
.L245:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L246:
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
.L249:
	b .L246

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L250:
	vstr.32 s0, [fp, #-4]
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L252
	b .L257
.L252:
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
	b .L253
.L253:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s0, [r0]
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	movgt r0, #1
	movle r0, #0
	bgt .L262
	b .L266
.L254:
	vldr.32 s5, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s4, [r0]
	vneg.f32 s0, s4
	vcmp.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L252
	b .L260
.L257:
	b .L254
.L260:
	ldr r0, =0
	b .L253
.L262:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vsub.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	b .L263
.L263:
	vldr.32 s5, [fp, #-4]
	ldr r0, addr_PI0
	vldr.32 s4, [r0]
	vneg.f32 s0, s4
	vcmp.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L267
	b .L271
.L266:
	b .L263
.L267:
	vldr.32 s4, [fp, #-4]
	ldr r0, addr_TWO_PI0
	vldr.32 s0, [r0]
	vadd.f32 s0, s4, s0
	vstr.32 s0, [fp, #-4]
	b .L268
.L268:
	vldr.32 s0, [fp, #-4]
	bl my_sin_impl
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L271:
	b .L268

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L272:
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

	.global read_image
	.type read_image , %function
read_image:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L274:
	bl getch
	cmp r0, #80
	movne r0, #1
	moveq r0, #0
	bne .L275
	b .L280
.L275:
	ldr r0, =0
	sub r0, r0, #1
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L276:
	bl getint
	mov r1, r0
	ldr r0, addr_width0
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_height0
	str r1, [r0]
	ldr r0, addr_width0
	ldr r1, [r0]
	ldr r0, addr_MAX_WIDTH0
	ldr r0, [r0]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L284
	b .L290
.L277:
	bl getch
	cmp r0, #50
	movne r0, #1
	moveq r0, #0
	bne .L275
	b .L283
.L280:
	b .L277
.L283:
	b .L276
.L284:
	ldr r0, =0
	sub r0, r0, #1
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L285:
	b .L298
.L286:
	bl getint
	cmp r0, #255
	movne r0, #1
	moveq r0, #0
	bne .L284
	b .L296
.L287:
	ldr r0, addr_height0
	ldr r1, [r0]
	ldr r0, addr_MAX_HEIGHT0
	ldr r0, [r0]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L284
	b .L293
.L290:
	b .L287
.L293:
	b .L286
.L296:
	b .L285
.L298:
	ldr r0, addr_height0
	ldr r1, [r0]
	ldr r0, =0
	ldr r0, =0
	mov r5, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L299
	b .L303
.L299:
	b .L305
.L300:
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L303:
	ldr r0, =0
	ldr r0, =0
	b .L300
.L305:
	ldr r0, addr_width0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L306
	b .L310
.L306:
	bl getint
	ldr r1, addr_width0
	ldr r1, [r1]
	mla r3, r5, r1, r4
	ldr r2, addr_image0
	mov r1, #4
	mla r1, r3, r1, r2
	str r0, [r1]
	add r1, r4, #1
	ldr r0, addr_width0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L435
	b .L316
.L307:
	add r1, r5, #1
	ldr r0, addr_height0
	ldr r0, [r0]
	mov r5, r1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L299
	b .L322
.L310:
	ldr r0, =0
	b .L307
.L316:
	b .L307
.L322:
	b .L300
.L435:
	mov r4, r1
	b .L306

	.global rotate
	.type rotate , %function
rotate:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #24
.L323:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	vstr.32 s0, [fp, #-12]
	vldr.32 s0, [fp, #-12]
	bl my_sin
	vstr.32 s0, [fp, #-16]
	vldr.32 s0, [fp, #-12]
	bl my_cos
	vmov s1, s0
	vstr.32 s1, [fp, #-20]
	ldr r0, addr_width0
	ldr r1, [r0]
	ldr r0, =2
	sdiv r1, r1, r0
	ldr r0, addr_height0
	ldr r2, [r0]
	ldr r0, =2
	sdiv r0, r2, r0
	ldr r2, [fp, #-4]
	sub r3, r2, r1
	ldr r2, [fp, #-8]
	sub r2, r2, r0
	vmov s1, r3
	vcvt.f32.s32  s4, s1
	vldr.32 s1, [fp, #-20]
	vmul.f32 s2, s4, s1
	vmov s1, r2
	vcvt.f32.s32  s3, s1
	vldr.32 s1, [fp, #-16]
	vmul.f32 s1, s3, s1
	vsub.f32 s2, s2, s1
	vmov s1, r1
	vcvt.f32.s32  s1, s1
	vadd.f32 s1, s2, s1
	vcvt.s32.f32  s1, s1
	vmov r1, s1
	vldr.32 s1, [fp, #-16]
	vmul.f32 s2, s4, s1
	vldr.32 s1, [fp, #-20]
	vmul.f32 s1, s3, s1
	vadd.f32 s2, s2, s1
	vmov s1, r0
	vcvt.f32.s32  s1, s1
	vadd.f32 s1, s2, s1
	vcvt.s32.f32  s1, s1
	vmov r0, s1
	cmp r1, #0
	movlt r2, #1
	movge r2, #0
	blt .L335
	b .L342
.L335:
	mov r0, #0
	add sp, sp, #24
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L336:
	ldr r2, addr_width0
	ldr r2, [r2]
	mla r2, r0, r2, r1
	ldr r1, addr_image0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add sp, sp, #24
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L337:
	ldr r2, addr_height0
	ldr r2, [r2]
	cmp r0, r2
	movge r2, #1
	movlt r2, #0
	bge .L335
	b .L351
.L338:
	cmp r0, #0
	movlt r2, #1
	movge r2, #0
	blt .L335
	b .L348
.L339:
	ldr r2, addr_width0
	ldr r2, [r2]
	cmp r1, r2
	movge r2, #1
	movlt r2, #0
	bge .L335
	b .L345
.L342:
	b .L339
.L345:
	b .L338
.L348:
	b .L337
.L351:
	b .L336

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L353:
	vstr.32 s0, [fp, #-4]
	mov r0, #80
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	ldr r0, addr_width0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_height0
	ldr r0, [r0]
	bl putint
	mov r0, #32
	bl putch
	mov r0, #255
	bl putint
	mov r0, #10
	bl putch
	b .L356
.L356:
	ldr r1, addr_height0
	ldr r2, [r1]
	ldr r1, =0
	ldr r1, =0
	mov r5, r1
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L357
	b .L361
.L357:
	b .L363
.L358:
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L361:
	ldr r1, =0
	ldr r1, =0
	b .L358
.L363:
	ldr r0, addr_width0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L364
	b .L368
.L364:
	vldr.32 s0, [fp, #-4]
	mov r0, r4
	mov r1, r5
	bl rotate
	bl putint
	mov r0, #32
	bl putch
	add r1, r4, #1
	ldr r0, addr_width0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L442
	b .L374
.L365:
	mov r0, #10
	bl putch
	add r2, r5, #1
	ldr r1, addr_height0
	ldr r1, [r1]
	mov r5, r2
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L357
	b .L380
.L368:
	ldr r0, =0
	b .L365
.L374:
	b .L365
.L380:
	b .L358
.L442:
	mov r4, r1
	b .L364

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L381:
	bl getfloat
	vmov s4, s0
	vstr.32 s4, [fp, #-4]
	bl getch
	bl read_image
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L383
	b .L387
.L383:
	ldr r0, =0
	sub r0, r0, #1
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L384:
	vldr.32 s0, [fp, #-4]
	bl write_pgm
	mov r0, #0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L387:
	b .L384

addr_MAX_WIDTH0:
	.word MAX_WIDTH
addr_MAX_HEIGHT0:
	.word MAX_HEIGHT
addr_image0:
	.word image
addr_width0:
	.word width
addr_height0:
	.word height
addr_PI0:
	.word PI
addr_TWO_PI0:
	.word TWO_PI
addr_EPSILON0:
	.word EPSILON
	.ident "ZWJM"
