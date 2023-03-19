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
	.word 0
	.global MAX_HEIGHT
	.align 4
	.size MAX_HEIGHT, 4
MAX_HEIGHT:
	.word 0
	.global PI
	.align 4
	.size PI, 4
PI:
	.word 0
	.global TWO_PI
	.align 4
	.size TWO_PI, 4
TWO_PI:
	.word 0
	.global EPSILON
	.align 4
	.size EPSILON, 4
EPSILON:
	.word 0
	.comm image, 4194304, 4
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r4, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L241:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L243
	b .L247
.L243:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L244:
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vmov r16, r23
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L247:
	b .L244

	.global p
	.type p , %function
p:
	push {r4, r21, r22, r23, r24, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L248:
	vstr.32 r16, [fp, #-4]
	ldr r4, =3
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	ldr r4, =4
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vldr.32 r21, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r21, r22, r23, r24, fp, lr}
	bx lr

	.global my_sin_impl
	.type my_sin_impl , %function
my_sin_impl:
	push {r4, r5, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L250:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	bl my_fabs
	vmov r21, r16
	ldr r4, addr_EPSILON0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movle r4, #1
	movgt r4, #0
	ble .L252
	b .L256
.L252:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r5, r21, r22, r23, fp, lr}
	bx lr
.L253:
	vldr.32 r21, [fp, #-4]
	ldr r4, =1077936128
	vmov r22, r4
	vmov r16, r23
	bl my_sin_impl
	vmov r21, r16
	vmov r16, r21
	bl p
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r5, r21, r22, r23, fp, lr}
	bx lr
.L256:
	b .L253

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r4, r5, r6, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L257:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L259
	b .L264
.L259:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcvt.s32.f32  r21, r22
	vmov r4, r21
	str r4, [fp, #-8]
	vldr.32 r21, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, addr_TWO_PI0
	ldr r6, [r5]
	mul r5, r4, r6
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	b .L260
.L260:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movgt r4, #1
	movle r4, #0
	bgt .L269
	b .L273
.L261:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, r5
	vmov r22, r6
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L259
	b .L267
.L264:
	b .L261
.L267:
	b .L260
.L269:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	b .L270
.L270:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	ldr r4, =0
	sub r6, r4, r5
	vmov r22, r6
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L274
	b .L278
.L273:
	b .L270
.L274:
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_TWO_PI0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vstr.32 r22, [fp, #-4]
	b .L275
.L275:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	bl my_sin_impl
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #8
	pop {r4, r5, r6, r21, r22, r23, fp, lr}
	bx lr
.L278:
	b .L275

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r4, r5, r6, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L279:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	ldr r4, =2
	sdiv r6, r5, r4
	vmov r22, r6
	vcvt.f32.s32  r23, r22
	vmov r16, r22
	bl my_sin
	vmov r21, r16
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r5, r6, r21, r22, r23, fp, lr}
	bx lr

	.global read_image
	.type read_image , %function
read_image:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L281:
	bl getch
	mov r4, r0
	cmp r4, #80
	movne r4, #1
	moveq r4, #0
	bne .L282
	b .L287
.L282:
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L283:
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
	bgt .L291
	b .L297
.L284:
	bl getch
	mov r4, r0
	cmp r4, #50
	movne r4, #1
	moveq r4, #0
	bne .L282
	b .L290
.L287:
	b .L284
.L290:
	b .L283
.L291:
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L292:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L305
.L293:
	bl getint
	mov r4, r0
	cmp r4, #255
	movne r4, #1
	moveq r4, #0
	bne .L291
	b .L303
.L294:
	ldr r4, addr_height0
	ldr r5, [r4]
	ldr r4, addr_MAX_HEIGHT0
	ldr r6, [r4]
	cmp r5, r6
	movgt r4, #1
	movle r4, #0
	bgt .L291
	b .L300
.L297:
	b .L294
.L300:
	b .L293
.L303:
	b .L292
.L305:
	ldr r4, [fp, #-4]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L306
	b .L310
.L306:
	ldr r4, =0
	str r4, [fp, #-8]
	b .L312
.L307:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L310:
	b .L307
.L312:
	ldr r4, [fp, #-8]
	ldr r5, addr_width0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L313
	b .L317
.L313:
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
	blt .L313
	b .L323
.L314:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L306
	b .L329
.L317:
	b .L314
.L323:
	b .L314
.L329:
	b .L307

	.global rotate
	.type rotate , %function
rotate:
	push {r4, r5, r6, r7, r21, r22, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L330:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	vstr.32 r16, [fp, #-12]
	vldr.32 r21, [fp, #-12]
	vmov r16, r21
	bl my_sin
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-16]
	vldr.32 r21, [fp, #-12]
	vmov r16, r21
	bl my_cos
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-20]
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
	ldr r5, [fp, #-20]
	mul r6, r4, r5
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-16]
	mul r7, r4, r5
	sub r4, r6, r7
	ldr r5, [fp, #-24]
	add r6, r4, r5
	str r6, [fp, #-40]
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mul r6, r4, r5
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-20]
	mul r7, r4, r5
	add r4, r6, r7
	ldr r5, [fp, #-28]
	add r6, r4, r5
	str r6, [fp, #-44]
	ldr r4, [fp, #-40]
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L342
	b .L349
.L342:
	mov r0, #0
	add sp, sp, #44
	pop {r4, r5, r6, r7, r21, r22, fp, lr}
	bx lr
.L343:
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
	add sp, sp, #44
	pop {r4, r5, r6, r7, r21, r22, fp, lr}
	bx lr
.L344:
	ldr r4, [fp, #-44]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movge r4, #1
	movlt r4, #0
	bge .L342
	b .L358
.L345:
	ldr r4, [fp, #-44]
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L342
	b .L355
.L346:
	ldr r4, [fp, #-40]
	ldr r5, addr_width0
	ldr r6, [r5]
	cmp r4, r6
	movge r4, #1
	movlt r4, #0
	bge .L342
	b .L352
.L349:
	b .L346
.L352:
	b .L345
.L355:
	b .L344
.L358:
	b .L343

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r4, r5, r6, r21, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L360:
	vstr.32 r16, [fp, #-4]
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
	b .L363
.L363:
	ldr r4, [fp, #-8]
	ldr r5, addr_height0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L364
	b .L368
.L364:
	ldr r4, =0
	str r4, [fp, #-12]
	b .L370
.L365:
	add sp, sp, #12
	pop {r4, r5, r6, r21, fp, lr}
	bx lr
.L368:
	b .L365
.L370:
	ldr r4, [fp, #-12]
	ldr r5, addr_width0
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L371
	b .L375
.L371:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	vldr.32 r21, [fp, #-4]
	mov r0, r4
	mov r1, r5
	vmov r16, r21
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
	blt .L371
	b .L381
.L372:
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
	blt .L364
	b .L387
.L375:
	b .L372
.L381:
	b .L372
.L387:
	b .L365

	.global main
	.type main , %function
main:
	push {r4, r5, r21, r22, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L388:
	bl getfloat
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-4]
	bl getch
	mov r4, r0
	bl read_image
	mov r4, r0
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L390
	b .L394
.L390:
	ldr r4, =0
	sub r5, r4, #1
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r21, r22, fp, lr}
	bx lr
.L391:
	ldr r4, [fp, #-4]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	bl write_pgm
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r21, r22, fp, lr}
	bx lr
.L394:
	b .L391

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
