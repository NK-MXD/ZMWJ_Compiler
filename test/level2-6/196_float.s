	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global RADIUS
	.align 4
	.size RADIUS, 4
RADIUS:
	.word 0
	.global PI
	.align 4
	.size PI, 4
PI:
	.word 0
	.global EPS
	.align 4
	.size EPS, 4
EPS:
	.word 0
	.global PI_HEX
	.align 4
	.size PI_HEX, 4
PI_HEX:
	.word 0
	.global HEX2
	.align 4
	.size HEX2, 4
HEX2:
	.word 0
	.global FACT
	.align 4
	.size FACT, 4
FACT:
	.word 0
	.global EVAL1
	.align 4
	.size EVAL1, 4
EVAL1:
	.word 0
	.global EVAL2
	.align 4
	.size EVAL2, 4
EVAL2:
	.word 0
	.global EVAL3
	.align 4
	.size EVAL3, 4
EVAL3:
	.word 0
	.global CONV1
	.align 4
	.size CONV1, 4
CONV1:
	.word 0
	.global CONV2
	.align 4
	.size CONV2, 4
CONV2:
	.word 0
	.global MAX
	.align 4
	.size MAX, 4
MAX:
	.word 0
	.global TWO
	.align 4
	.size TWO, 4
TWO:
	.word 0
	.global THREE
	.align 4
	.size THREE, 4
THREE:
	.word 0
	.global FIVE
	.align 4
	.size FIVE, 4
FIVE:
	.word 0
	.text
	.global float_abs
	.type float_abs , %function
float_abs:
	push {r4, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L167:
	vstr.32 r16, [fp, #-4]
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L169
	b .L173
.L169:
	vldr.32 r21, [fp, #-4]
	ldr r4, =0
	vmov r22, r4
	vmov r16, r23
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L170:
	vldr.32 r21, [fp, #-4]
	vmov r16, r21
	add sp, sp, #4
	pop {r4, r21, r22, r23, fp, lr}
	bx lr
.L173:
	b .L170

	.global circle_area
	.type circle_area , %function
circle_area:
	push {r4, r5, r6, r7, r21, r22, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L174:
	str r0, [fp, #-4]
	ldr r4, addr_PI0
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	mul r6, r5, r4
	ldr r4, [fp, #-4]
	mul r5, r6, r4
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-4]
	mul r7, r4, r6
	ldr r4, addr_PI0
	ldr r6, [r4]
	mul r4, r7, r6
	add r6, r5, r4
	ldr r4, =2
	sdiv r5, r6, r4
	vmov r21, r5
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	add sp, sp, #4
	pop {r4, r5, r6, r7, r21, r22, fp, lr}
	bx lr

	.global float_eq
	.type float_eq , %function
float_eq:
	push {r4, r5, r21, r22, r23, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L176:
	vstr.32 r16, [fp, #-4]
	vstr.32 r17, [fp, #-8]
	vldr.32 r21, [fp, #-4]
	vldr.32 r22, [fp, #-8]
	vmov r16, r23
	bl float_abs
	vmov r21, r16
	ldr r4, addr_EPS0
	ldr r5, [r4]
	vmov r22, r5
	vcvt.f32.s32  r23, r22
	vcmp.f32 r21, r23
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L179
	b .L184
.L179:
	ldr r4, =1
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, =1073741824
	vmov r21, r4
	ldr r4, =2
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r21, r22, r23, fp, lr}
	bx lr
.L180:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r21, r22, r23, fp, lr}
	bx lr
.L184:
	b .L180

	.global error
	.type error , %function
error:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L185:
	mov r0, #101
	bl putch
	mov r0, #114
	bl putch
	mov r0, #114
	bl putch
	mov r0, #111
	bl putch
	mov r0, #114
	bl putch
	mov r0, #10
	bl putch
	add sp, sp, #0
	pop {fp, lr}
	bx lr

	.global ok
	.type ok , %function
ok:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L186:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	add sp, sp, #0
	pop {fp, lr}
	bx lr

	.global assert
	.type assert , %function
assert:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L187:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L189
	b .L194
.L189:
	bl error
	b .L191
.L190:
	bl ok
	b .L191
.L191:
	add sp, sp, #4
	pop {r4, fp, lr}
	bx lr
.L194:
	b .L190

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r21, r22, r23, r24, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L196:
	ldr r4, addr_HEX20
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r22, r21
	ldr r4, addr_FACT0
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r23, r21
	vmov r16, r22
	vmov r17, r23
	bl float_eq
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	mov r0, r4
	bl assert
	ldr r4, addr_EVAL10
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r22, r21
	ldr r4, addr_EVAL20
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r23, r21
	vmov r16, r22
	vmov r17, r23
	bl float_eq
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	mov r0, r4
	bl assert
	ldr r4, addr_EVAL20
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r22, r21
	ldr r4, addr_EVAL30
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r23, r21
	vmov r16, r22
	vmov r17, r23
	bl float_eq
	mov r4, r0
	mov r0, r4
	bl assert
	ldr r4, addr_RADIUS0
	ldr r5, [r4]
	mov r0, r5
	bl circle_area
	vmov r21, r16
	ldr r4, addr_FIVE0
	ldr r5, [r4]
	mov r0, r5
	bl circle_area
	vmov r22, r16
	vmov r16, r21
	vmov r17, r22
	bl float_eq
	mov r4, r0
	mov r0, r4
	bl assert
	ldr r4, addr_CONV10
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r22, r21
	ldr r4, addr_CONV20
	ldr r5, [r4]
	vmov r21, r5
	vcvt.f32.s32  r23, r21
	vmov r16, r22
	vmov r17, r23
	bl float_eq
	mov r4, r0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	mov r0, r4
	bl assert
	ldr r4, =1069547520
	vmov r21, r4
	ldr r4, =0
	vmov r22, r4
	vcmp.f32 r21, r22
	vmrs APSR_nzcv, FPSCR
	movne r4, #1
	moveq r4, #0
	bne .L200
	b .L204
.L200:
	bl ok
	b .L201
.L201:
	ldr r4, =1079194419
	vmov r21, r4
	ldr r4, =0
	vmov r22, r4
	vcmp.f32 r21, r22
	vmrs APSR_nzcv, FPSCR
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L205
	b .L210
.L204:
	b .L201
.L205:
	bl ok
	b .L206
.L206:
	ldr r4, =0
	vmov r21, r4
	ldr r4, =0
	vmov r22, r4
	vcmp.f32 r21, r22
	vmrs APSR_nzcv, FPSCR
	movne r4, #1
	moveq r4, #0
	bne .L214
	b .L217
.L210:
	b .L206
.L212:
	bl error
	b .L213
.L213:
	ldr r4, =0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L221
	b .L225
.L214:
	ldr r4, =3
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L212
	b .L219
.L217:
	b .L213
.L219:
	b .L213
.L221:
	bl ok
	b .L222
.L222:
	ldr r4, =1
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	add r0, fp, #-48
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r4, =1065353216
	vmov r21, r4
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	mov r5, #0
	mov r6, #-48
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	add r4, r6, #4
	ldr r5, =2
	str r5, [r4]
	mov r4, #0
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	bl getfarray
	mov r4, r0
	str r4, [fp, #-52]
	b .L245
	b .F0
.LTORG
addr_RADIUS0:
	.word RADIUS
addr_PI0:
	.word PI
addr_EPS0:
	.word EPS
addr_PI_HEX0:
	.word PI_HEX
addr_HEX20:
	.word HEX2
addr_FACT0:
	.word FACT
addr_EVAL10:
	.word EVAL1
addr_EVAL20:
	.word EVAL2
addr_EVAL30:
	.word EVAL3
addr_CONV10:
	.word CONV1
addr_CONV20:
	.word CONV2
addr_MAX0:
	.word MAX
addr_TWO0:
	.word TWO
addr_THREE0:
	.word THREE
addr_FIVE0:
	.word FIVE
.F0:
.L223:
	ldr r4, =1050253722
	vmov r21, r4
	ldr r4, =0
	vmov r22, r4
	vcmp.f32 r21, r22
	vmrs APSR_nzcv, FPSCR
	movne r4, #1
	moveq r4, #0
	bne .L221
	b .L229
.L225:
	b .L223
.L229:
	b .L222
.L245:
	ldr r4, [fp, #-4]
	ldr r5, addr_MAX1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L246
	b .L250
.L246:
	bl getfloat
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-56]
	ldr r4, addr_PI1
	ldr r5, [r4]
	ldr r4, [fp, #-56]
	mul r6, r5, r4
	ldr r4, [fp, #-56]
	mul r5, r6, r4
	str r5, [fp, #-60]
	ldr r4, [fp, #-56]
	mov r0, r4
	bl circle_area
	vmov r21, r16
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-64]
	ldr r4, [fp, #-8]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-56]
	add r6, r4, r5
	ldr r4, [fp, #-8]
	mov r5, #-48
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r5
	add r5, r4, r8
	str r6, [r5]
	ldr r4, [fp, #-60]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	vmov r16, r22
	bl putfloat
	mov r0, #32
	bl putch
	ldr r4, [fp, #-64]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	vmov r21, r4
	vcvt.f32.s32  r22, r21
	ldr r4, =0
	vmov r21, r4
	ldr r4, =1092616192
	vmov r23, r4
	ldr r4, =0
	vmov r21, r4
	vcvt.s32.f32  r22, r21
	vmov r4, r22
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, addr_MAX1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L246
	b .L260
.L247:
	ldr r4, [fp, #-52]
	mov r5, #0
	mov r6, #-48
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	mov r0, r4
	mov r1, r6
	bl putfarray
	mov r0, #0
	add sp, sp, #64
	pop {r4, r5, r6, r7, r8, r21, r22, r23, r24, fp, lr}
	bx lr
.L250:
	b .L247
.L260:
	b .L247

addr_RADIUS1:
	.word RADIUS
addr_PI1:
	.word PI
addr_EPS1:
	.word EPS
addr_PI_HEX1:
	.word PI_HEX
addr_HEX21:
	.word HEX2
addr_FACT1:
	.word FACT
addr_EVAL11:
	.word EVAL1
addr_EVAL21:
	.word EVAL2
addr_EVAL31:
	.word EVAL3
addr_CONV11:
	.word CONV1
addr_CONV21:
	.word CONV2
addr_MAX1:
	.word MAX
addr_TWO1:
	.word TWO
addr_THREE1:
	.word THREE
addr_FIVE1:
	.word FIVE
