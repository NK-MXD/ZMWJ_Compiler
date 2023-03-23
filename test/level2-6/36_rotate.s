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
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L234:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L236
	b .L240
.L236:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L237:
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L240:
	b .L237

	.global p
	.type p , %function
p:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L241:
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
.L243:
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
	ble .L245
	b .L249
.L245:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L246:
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
.L249:
	b .L246

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L250:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L252
	b .L257
.L252:
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
	b .L253
.L253:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_PI0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L262
	b .L266
.L254:
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
	blt .L252
	b .L260
.L257:
	b .L254
.L260:
	b .L253
.L262:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	b .L263
.L263:
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
	blt .L267
	b .L271
.L266:
	b .L263
.L267:
	vldr.32 s5, [fp, #-4]
	ldr r4, addr_TWO_PI0
	vldr.32 s6, [r4]
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	b .L268
.L268:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl my_sin_impl
	vmov s5, s0
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, fp, lr}
	bx lr
.L271:
	b .L268

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L272:
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

	.global read_image
	.type read_image , %function
read_image:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L274:
	bl getch
	mov r4, r0
	cmp r4, #80
	movne r4, #1
	moveq r4, #0
	bne .L275
	b .L280
.L275:
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L276:
	bl getint
	mov r4, r0
	ldr r5, addr_width0
	str r4, [r5]
	bl getint
	mov r4, r0
	ldr r5, addr_height0
	str r4, [r5]
	ldr r4, addr_width0
	ldr r5, [r4]
	ldr r4, addr_MAX_WIDTH0
	ldr r6, [r4]
	cmp r5, r6
	movgt r4, #1
	movle r4, #0
	bgt .L284
	b .L290
.L277:
	bl getch
	mov r4, r0
	cmp r4, #50
	movne r4, #1
	moveq r4, #0
	bne .L275
	b .L283
.L280:
	b .L277
.L283:
	b .L276
.L284:
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L285:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L298
.L286:
	bl getint
	mov r4, r0
	cmp r4, #255
	movne r4, #1
	moveq r4, #0
	bne .L284
	b .L296
.L287:
	ldr r4, addr_height0
	ldr r5, [r4]
	ldr r4, addr_MAX_HEIGHT0
	ldr r6, [r4]
	cmp r5, r6
	movgt r4, #1
	movle r4, #0
	bgt .L284
	b .L293
.L290:
	b .L287
.L293:
	b .L286
.L296:
	b .L285
.L298:
	ldr r4, [fp, #-4]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L299
	b .L303
.L299:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L305
.L300:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L303:
	b .L300
.L305:
	ldr r4, [fp, #-8]
	ldr r5, addr_width0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L306
	b .L310
.L306:
	bl getint
	mov r4, r0
	ldr r5, [fp, #-4]
	ldr r6, addr_width0
	ldr r7, [r6]
	mul r6, r5, r7
	ldr r5, [fp, #-8]
	add r7, r6, r5
	ldr r5, addr_image0
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	mov r5, r6
	str r4, [r5]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_width0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L306
	b .L316
.L307:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L299
	b .L322
.L310:
	b .L307
.L316:
	b .L307
.L322:
	b .L300

	.global rotate
	.type rotate , %function
rotate:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #48
.L323:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	vstr.32 s0, [fp, #-12]
	vldr.32 s5, [fp, #-12]
	vmov s0, s5
	bl my_sin
	vmov s5, s0
	vstr.32 s5, [fp, #-16]
	vldr.32 s5, [fp, #-12]
	vmov s0, s5
	bl my_cos
	vmov s5, s0
	vstr.32 s5, [fp, #-20]
	ldr r4, addr_width0
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-24]
	ldr r4, addr_height0
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	str r6, [fp, #-28]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-24]
	sub r6, r4, r5
	str r6, [fp, #-32]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-28]
	sub r6, r4, r5
	str r6, [fp, #-36]
	ldr r4, [fp, #-32]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-20]
	vmul.f32 s7, s6, s5
	ldr r4, [fp, #-36]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-16]
	vmul.f32 s8, s6, s5
	vsub.f32 s5, s7, s8
	ldr r4, [fp, #-24]
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vadd.f32 s6, s5, s7
	vcvt.s32.f32  s5, s6
	vmov r4, s5
	str r4, [fp, #-40]
	ldr r4, [fp, #-32]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-16]
	vmul.f32 s7, s6, s5
	ldr r4, [fp, #-36]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vldr.32 s5, [fp, #-20]
	vmul.f32 s8, s6, s5
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-28]
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vadd.f32 s6, s5, s7
	vcvt.s32.f32  s5, s6
	vmov r4, s5
	str r4, [fp, #-44]
	ldr r4, [fp, #-40]
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L335
	b .L342
.L335:
	mov r0, #0
	add sp, sp, #48
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L336:
	ldr r4, [fp, #-44]
	ldr r5, addr_width0
	ldr r6, [r5]
	mul r5, r4, r6
	ldr r4, [fp, #-40]
	add r6, r5, r4
	ldr r4, addr_image0
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #48
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L337:
	ldr r4, [fp, #-44]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movge r4, #1
	movlt r4, #0
	bge .L335
	b .L351
.L338:
	ldr r4, [fp, #-44]
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L335
	b .L348
.L339:
	ldr r4, [fp, #-40]
	ldr r5, addr_width0
	ldr r6, [r5]
	cmp r4, r6
	movge r4, #1
	movlt r4, #0
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
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #16
.L353:
	vstr.32 s0, [fp, #-4]
	mov r0, #80
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	ldr r4, addr_width0
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_height0
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
	str r4, [fp, #-8]
	b .L356
.L356:
	ldr r4, [fp, #-8]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L357
	b .L361
.L357:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L363
.L358:
	add sp, sp, #16
	vpop {s4, s5}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L361:
	b .L358
.L363:
	ldr r4, [fp, #-12]
	ldr r5, addr_width0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L364
	b .L368
.L364:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	vldr.32 s5, [fp, #-4]
	mov r0, r4
	mov r1, r5
	vmov s0, s5
	bl rotate
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, addr_width0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L364
	b .L374
.L365:
	mov r0, #10
	bl putch
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L357
	b .L380
.L368:
	b .L365
.L374:
	b .L365
.L380:
	b .L358

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L381:
	bl getfloat
	vmov s5, s0
	vstr.32 s5, [fp, #-4]
	bl getch
	mov r4, r0
	bl read_image
	mov r4, r0
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L383
	b .L387
.L383:
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L384:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl write_pgm
	mov r0, #0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, r5, r6, fp, lr}
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
