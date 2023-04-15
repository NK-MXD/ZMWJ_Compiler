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
	vldr.32 s1, [fp, #-4]
	ldr r1, =0
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vcmp.f32 s1, s0
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
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
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
	add sp, sp, #8
	pop {r3, r4, fp, lr}
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
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L285:
	ldr r0, =0
	str r0, [fp, #-4]
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
	ldr r1, [fp, #-4]
	ldr r0, addr_height0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L299
	b .L303
.L299:
	ldr r0, =0
	str r0, [fp, #-8]
	b .L305
.L300:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L303:
	b .L300
.L305:
	ldr r1, [fp, #-8]
	ldr r0, addr_width0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L306
	b .L310
.L306:
	bl getint
	ldr r2, [fp, #-4]
	ldr r1, addr_width0
	ldr r1, [r1]
	mul r2, r2, r1
	ldr r1, [fp, #-8]
	add r3, r2, r1
	ldr r2, addr_image0
	mov r1, #4
	mla r1, r3, r1, r2
	str r0, [r1]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L305
.L307:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L298
.L310:
	b .L307

	.global rotate
	.type rotate , %function
rotate:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L311:
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
	sdiv r0, r1, r0
	str r0, [fp, #-24]
	ldr r0, addr_height0
	ldr r1, [r0]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-28]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-24]
	sub r0, r1, r0
	str r0, [fp, #-32]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-28]
	sub r0, r1, r0
	str r0, [fp, #-36]
	ldr r0, [fp, #-32]
	vmov s1, r0
	vcvt.f32.s32  s2, s1
	vldr.32 s1, [fp, #-20]
	vmul.f32 s3, s2, s1
	ldr r0, [fp, #-36]
	vmov s1, r0
	vcvt.f32.s32  s2, s1
	vldr.32 s1, [fp, #-16]
	vmul.f32 s1, s2, s1
	vsub.f32 s2, s3, s1
	ldr r0, [fp, #-24]
	vmov s1, r0
	vcvt.f32.s32  s1, s1
	vadd.f32 s1, s2, s1
	vcvt.s32.f32  s1, s1
	vmov r0, s1
	str r0, [fp, #-40]
	ldr r0, [fp, #-32]
	vmov s1, r0
	vcvt.f32.s32  s2, s1
	vldr.32 s1, [fp, #-16]
	vmul.f32 s3, s2, s1
	ldr r0, [fp, #-36]
	vmov s1, r0
	vcvt.f32.s32  s2, s1
	vldr.32 s1, [fp, #-20]
	vmul.f32 s1, s2, s1
	vadd.f32 s2, s3, s1
	ldr r0, [fp, #-28]
	vmov s1, r0
	vcvt.f32.s32  s1, s1
	vadd.f32 s1, s2, s1
	vcvt.s32.f32  s1, s1
	vmov r0, s1
	str r0, [fp, #-44]
	ldr r0, [fp, #-40]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L323
	b .L330
.L323:
	mov r0, #0
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L324:
	ldr r1, [fp, #-44]
	ldr r0, addr_width0
	ldr r0, [r0]
	mul r1, r1, r0
	ldr r0, [fp, #-40]
	add r2, r1, r0
	ldr r1, addr_image0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L325:
	ldr r1, [fp, #-44]
	ldr r0, addr_height0
	ldr r0, [r0]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L323
	b .L339
.L326:
	ldr r0, [fp, #-44]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L323
	b .L336
.L327:
	ldr r1, [fp, #-40]
	ldr r0, addr_width0
	ldr r0, [r0]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L323
	b .L333
.L330:
	b .L327
.L333:
	b .L326
.L336:
	b .L325
.L339:
	b .L324

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L341:
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
	ldr r1, =0
	str r1, [fp, #-8]
	b .L344
.L344:
	ldr r2, [fp, #-8]
	ldr r1, addr_height0
	ldr r1, [r1]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L345
	b .L349
.L345:
	ldr r0, =0
	str r0, [fp, #-12]
	b .L351
.L346:
	add sp, sp, #16
	pop {r3, r4, fp, lr}
	bx lr
.L349:
	b .L346
.L351:
	ldr r1, [fp, #-12]
	ldr r0, addr_width0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L352
	b .L356
.L352:
	ldr r0, [fp, #-12]
	ldr r1, [fp, #-8]
	vldr.32 s0, [fp, #-4]
	bl rotate
	bl putint
	mov r0, #32
	bl putch
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L351
.L353:
	mov r0, #10
	bl putch
	ldr r1, [fp, #-8]
	add r1, r1, #1
	str r1, [fp, #-8]
	b .L344
.L356:
	b .L353

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L357:
	bl getfloat
	vmov s4, s0
	vstr.32 s4, [fp, #-4]
	bl getch
	bl read_image
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L359
	b .L363
.L359:
	ldr r0, =0
	sub r0, r0, #1
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L360:
	vldr.32 s0, [fp, #-4]
	bl write_pgm
	mov r0, #0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L363:
	b .L360

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
