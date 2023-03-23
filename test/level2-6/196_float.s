	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global RADIUS
	.align 4
	.size RADIUS, 4
RADIUS:
	.word 1085276160
	.global PI
	.align 4
	.size PI, 4
PI:
	.word 1078530011
	.global EPS
	.align 4
	.size EPS, 4
EPS:
	.word 897988541
	.global PI_HEX
	.align 4
	.size PI_HEX, 4
PI_HEX:
	.word 1078530011
	.global HEX2
	.align 4
	.size HEX2, 4
HEX2:
	.word 1033895936
	.global FACT
	.align 4
	.size FACT, 4
FACT:
	.word 3338725376
	.global EVAL1
	.align 4
	.size EVAL1, 4
EVAL1:
	.word 1119752446
	.global EVAL2
	.align 4
	.size EVAL2, 4
EVAL2:
	.word 1107966695
	.global EVAL3
	.align 4
	.size EVAL3, 4
EVAL3:
	.word 1107966695
	.global CONV1
	.align 4
	.size CONV1, 4
CONV1:
	.word 1130954752
	.global CONV2
	.align 4
	.size CONV2, 4
CONV2:
	.word 1166012416
	.global MAX
	.align 4
	.size MAX, 4
MAX:
	.word 1000000000
	.global TWO
	.align 4
	.size TWO, 4
TWO:
	.word 2
	.global THREE
	.align 4
	.size THREE, 4
THREE:
	.word 3
	.global FIVE
	.align 4
	.size FIVE, 4
FIVE:
	.word 5
	.text
	.global float_abs
	.type float_abs , %function
float_abs:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L160:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L162
	b .L166
.L162:
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L163:
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L166:
	b .L163

	.global circle_area
	.type circle_area , %function
circle_area:
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #8
.L167:
	str r0, [fp, #-4]
	ldr r4, addr_PI0
	vldr.32 s5, [r4]
	ldr r4, [fp, #-4]
	vmov s6, r4
	vcvt.f32.s32  s7, s6
	vmul.f32 s6, s5, s7
	ldr r4, [fp, #-4]
	vmov s5, r4
	vcvt.f32.s32  s7, s5
	vmul.f32 s5, s6, s7
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mul r6, r4, r5
	vmov s6, r6
	vcvt.f32.s32  s7, s6
	ldr r4, addr_PI0
	vldr.32 s6, [r4]
	vmul.f32 s8, s7, s6
	vadd.f32 s6, s5, s8
	ldr r4, =2
	vmov s5, r4
	vcvt.f32.s32  s7, s5
	vdiv.f32 s5, s6, s7
	vmov s0, s5
	add sp, sp, #8
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.global float_eq
	.type float_eq , %function
float_eq:
	push {r3, r4, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L169:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-8]
	vsub.f32 s7, s5, s6
	vmov s0, s7
	bl float_abs
	vmov s5, s0
	ldr r4, addr_EPS0
	vldr.32 s6, [r4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movlt r4, #1
	movge r4, #0
	blt .L172
	b .L177
.L172:
	ldr r4, =1
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, =1073741824
	vmov s5, r4
	vmul.f32 s7, s6, s5
	ldr r4, =2
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	vdiv.f32 s5, s7, s6
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	mov r0, r4
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L173:
	mov r0, #0
	add sp, sp, #8
	vpop {s4, s5, s6, s7}
	pop {r3, r4, fp, lr}
	bx lr
.L177:
	b .L173

	.global error
	.type error , %function
error:
	push {fp, lr}
	mov fp, sp
.L178:
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
	pop {fp, lr}
	bx lr

	.global ok
	.type ok , %function
ok:
	push {fp, lr}
	mov fp, sp
.L179:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	pop {fp, lr}
	bx lr

	.global assert
	.type assert , %function
assert:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L180:
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
	bne .L182
	b .L187
.L182:
	bl error
	b .L184
.L183:
	bl ok
	b .L184
.L184:
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L187:
	b .L183

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	vpush {s4, s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #64
.L189:
	ldr r4, addr_HEX20
	vldr.32 s5, [r4]
	ldr r4, addr_FACT0
	vldr.32 s6, [r4]
	vmov s0, s5
	vmov s1, s6
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
	vldr.32 s5, [r4]
	ldr r4, addr_EVAL20
	vldr.32 s6, [r4]
	vmov s0, s5
	vmov s1, s6
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
	vldr.32 s5, [r4]
	ldr r4, addr_EVAL30
	vldr.32 s6, [r4]
	vmov s0, s5
	vmov s1, s6
	bl float_eq
	mov r4, r0
	mov r0, r4
	bl assert
	ldr r4, addr_RADIUS0
	vldr.32 s5, [r4]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	mov r0, r4
	bl circle_area
	vmov s5, s0
	ldr r4, addr_FIVE0
	ldr r5, [r4]
	mov r0, r5
	bl circle_area
	vmov s6, s0
	vmov s0, s5
	vmov s1, s6
	bl float_eq
	mov r4, r0
	mov r0, r4
	bl assert
	ldr r4, addr_CONV10
	vldr.32 s5, [r4]
	ldr r4, addr_CONV20
	vldr.32 s6, [r4]
	vmov s0, s5
	vmov s1, s6
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
	vmov s5, r4
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movne r4, #1
	moveq r4, #0
	bne .L193
	b .L197
.L193:
	bl ok
	b .L194
.L194:
	ldr r4, =1079194419
	vmov s5, r4
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movne r4, #1
	moveq r4, #0
	cmp r4, #0
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
	bne .L198
	b .L206
.L197:
	b .L194
.L198:
	bl ok
	b .L199
.L199:
	ldr r4, =0
	vmov s5, r4
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movne r4, #1
	moveq r4, #0
	bne .L210
	b .L213
.L206:
	b .L199
.L208:
	bl error
	b .L209
.L209:
	ldr r4, =0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L217
	b .L221
.L210:
	ldr r4, =3
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L208
	b .L215
.L213:
	b .L209
.L215:
	b .L209
.L217:
	bl ok
	b .L218
.L218:
	ldr r4, =1
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	add r0, fp, #-48
	mov r1, #0
	mov r2, #40
	bl memset
	mov r4, #0
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =1065353216
	vmov s5, r4
	vstr.32 s5, [r5]
	ldr r4, =2
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	add r4, r5, #4
	vstr.32 s6, [r4]
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
	b .L241
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
.L219:
	ldr r4, =1050253722
	vmov s5, r4
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	movne r4, #1
	moveq r4, #0
	bne .L217
	b .L225
.L221:
	b .L219
.L225:
	b .L218
.L241:
	ldr r4, [fp, #-4]
	ldr r5, addr_MAX1
	ldr r6, [r5]
	cmp r4, r6
	movlt r4, #1
	movge r4, #0
	blt .L242
	b .L246
.L242:
	bl getfloat
	vmov s5, s0
	vstr.32 s5, [fp, #-56]
	ldr r4, addr_PI1
	vldr.32 s5, [r4]
	vldr.32 s6, [fp, #-56]
	vmul.f32 s7, s5, s6
	vldr.32 s5, [fp, #-56]
	vmul.f32 s6, s7, s5
	vstr.32 s6, [fp, #-60]
	vldr.32 s5, [fp, #-56]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	mov r0, r4
	bl circle_area
	vmov s5, s0
	vstr.32 s5, [fp, #-64]
	ldr r4, [fp, #-8]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vldr.32 s5, [r5]
	vldr.32 s6, [fp, #-56]
	vadd.f32 s7, s5, s6
	ldr r4, [fp, #-8]
	mov r5, #-48
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	vstr.32 s7, [r5]
	vldr.32 s5, [fp, #-60]
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-64]
	vcvt.s32.f32  s6, s5
	vmov r4, s6
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	vmov s5, r4
	vcvt.f32.s32  s6, s5
	ldr r4, =0
	vmov s5, r4
	ldr r4, =1092616192
	vmov s7, r4
	vsub.f32 s8, s5, s7
	ldr r4, =0
	vmov s5, r4
	vsub.f32 s7, s5, s8
	vmul.f32 s5, s6, s7
	vcvt.s32.f32  s6, s5
	vmov r4, s6
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
	blt .L242
	b .L256
.L243:
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
	vpop {s4, s5, s6, s7, s8, s9}
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L246:
	b .L243
.L256:
	b .L243

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
	.ident "ZWJM"
