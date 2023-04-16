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
	mov fp, sp
	sub sp, sp, #8
.L160:
	vstr.32 s0, [fp, #-4]
	vldr.32 s1, [fp, #-4]
	ldr r1, =0
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movlt r1, #1
	movge r1, #0
	blt .L162
	b .L166
.L162:
	vldr.32 s1, [fp, #-4]
	vneg.f32 s0, s1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L163:
	vldr.32 s0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L166:
	b .L163

	.global circle_area
	.type circle_area , %function
circle_area:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L167:
	str r0, [fp, #-4]
	ldr r1, addr_PI0
	vldr.32 s2, [r1]
	ldr r1, [fp, #-4]
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	vmul.f32 s0, s2, s1
	ldr r1, [fp, #-4]
	vmul.f32 s2, s0, s1
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-4]
	mul r1, r2, r1
	vmov s0, r1
	vcvt.f32.s32  s1, s0
	ldr r1, addr_PI0
	vldr.32 s0, [r1]
	vmul.f32 s0, s1, s0
	vadd.f32 s1, s2, s0
	ldr r1, =2
	vmov s0, r1
	vcvt.f32.s32  s0, s0
	vdiv.f32 s0, s1, s0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global float_eq
	.type float_eq , %function
float_eq:
	push {r3, r4, fp, lr}
	vpush {s4, s5}
	mov fp, sp
	sub sp, sp, #8
.L169:
	vstr.32 s0, [fp, #-4]
	vstr.32 s1, [fp, #-8]
	vldr.32 s4, [fp, #-4]
	vldr.32 s0, [fp, #-8]
	vsub.f32 s0, s4, s0
	bl float_abs
	vmov s2, s0
	ldr r0, addr_EPS0
	vldr.32 s1, [r0]
	vcmp.f32 s2, s1
	vmrs APSR_nzcv, FPSCR
	movlt r0, #1
	movge r0, #0
	blt .L172
	b .L177
.L172:
	ldr r0, =1
	vmov s1, r0
	vcvt.f32.s32  s2, s1
	ldr r0, =1073741824
	vmov s1, r0
	vmul.f32 s2, s2, s1
	ldr r0, =2
	vmov s1, r0
	vcvt.f32.s32  s1, s1
	vdiv.f32 s1, s2, s1
	vcvt.s32.f32  s1, s1
	vmov r0, s1
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L173:
	mov r0, #0
	add sp, sp, #8
	vpop {s4, s5}
	pop {r3, r4, fp, lr}
	bx lr
.L177:
	b .L173

	.global error
	.type error , %function
error:
	push {r3, r4, fp, lr}
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
	pop {r3, r4, fp, lr}
	bx lr

	.global ok
	.type ok , %function
ok:
	push {r3, r4, fp, lr}
	mov fp, sp
.L179:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	pop {r3, r4, fp, lr}
	bx lr

	.global assert
	.type assert , %function
assert:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L180:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
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
	push {r3, r4, r5, r6, fp, lr}
	vpush {s4, s5, s6, s7}
	mov fp, sp
	sub sp, sp, #56
.L189:
	ldr r0, addr_HEX20
	vldr.32 s0, [r0]
	ldr r0, addr_FACT0
	vldr.32 s1, [r0]
	bl float_eq
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	bl assert
	ldr r0, addr_EVAL10
	vldr.32 s0, [r0]
	ldr r0, addr_EVAL20
	vldr.32 s1, [r0]
	bl float_eq
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	bl assert
	ldr r0, addr_EVAL20
	vldr.32 s0, [r0]
	ldr r0, addr_EVAL30
	vldr.32 s1, [r0]
	bl float_eq
	bl assert
	ldr r0, addr_RADIUS0
	vldr.32 s4, [r0]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl circle_area
	vmov s4, s0
	ldr r0, addr_FIVE0
	ldr r0, [r0]
	bl circle_area
	vmov s1, s0
	vmov s0, s4
	bl float_eq
	bl assert
	ldr r0, addr_CONV10
	vldr.32 s0, [r0]
	ldr r0, addr_CONV20
	vldr.32 s1, [r0]
	bl float_eq
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	bl assert
	ldr r0, =1069547520
	vmov s5, r0
	ldr r0, =0
	vmov s4, r0
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movne r0, #1
	moveq r0, #0
	bne .L193
	b .L197
.L193:
	bl ok
	b .L194
.L194:
	ldr r0, =1079194419
	vmov s5, r0
	ldr r0, =0
	vmov s4, r0
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L198
	b .L206
.L197:
	b .L194
.L198:
	bl ok
	b .L199
.L199:
	ldr r0, =0
	vmov s5, r0
	ldr r0, =0
	vmov s4, r0
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movne r0, #1
	moveq r0, #0
	bne .L210
	b .L213
.L206:
	b .L199
.L208:
	bl error
	b .L209
.L209:
	ldr r0, =0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L217
	b .L221
.L210:
	ldr r0, =3
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
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
	add r0, fp, #-40
	mov r1, #0
	mov r2, #40
	bl memset
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =1065353216
	vmov s4, r0
	vstr.32 s4, [r1]
	ldr r0, =2
	vmov s4, r0
	vcvt.f32.s32  s4, s4
	add r0, r1, #4
	vstr.32 s4, [r0]
	mov r0, r1
	bl getfarray
	mov r6, r0
	b .L241
.L219:
	ldr r0, =1050253722
	vmov s5, r0
	ldr r0, =0
	vmov s4, r0
	vcmp.f32 s5, s4
	vmrs APSR_nzcv, FPSCR
	movne r0, #1
	moveq r0, #0
	bne .L217
	b .L225
.L221:
	b .L219
.L225:
	b .L218
.L241:
	ldr r0, addr_MAX0
	ldr r1, [r0]
	ldr r0, =0
	mov r4, r0
	ldr r0, =1
	mov r5, r0
	ldr r0, =1
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	blt .L242
	b .L246
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
.L242:
	bl getfloat
	vmov s4, s0
	vstr.32 s4, [fp, #-44]
	ldr r0, addr_PI1
	vldr.32 s5, [r0]
	vldr.32 s4, [fp, #-44]
	vmul.f32 s5, s5, s4
	vldr.32 s4, [fp, #-44]
	vmul.f32 s4, s5, s4
	vstr.32 s4, [fp, #-48]
	vldr.32 s4, [fp, #-44]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl circle_area
	vstr.32 s0, [fp, #-52]
	mov r2, #-40
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	vldr.32 s4, [r0]
	vldr.32 s0, [fp, #-44]
	vadd.f32 s0, s4, s0
	mov r2, #-40
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	vstr.32 s0, [r0]
	vldr.32 s0, [fp, #-48]
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s4, [fp, #-52]
	vcvt.s32.f32  s4, s4
	vmov r0, s4
	bl putint
	mov r0, #10
	bl putch
	vmov s4, r5
	vcvt.f32.s32  s6, s4
	ldr r0, =0
	vmov s5, r0
	ldr r0, =1092616192
	vmov s4, r0
	vsub.f32 s5, s5, s4
	vneg.f32 s4, s5
	vmul.f32 s4, s6, s4
	vcvt.s32.f32  s4, s4
	vmov r2, s4
	add r1, r4, #1
	ldr r0, addr_MAX1
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L272
	b .L256
.L243:
	mov r1, #0
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	mov r0, r6
	bl putfarray
	mov r0, #0
	add sp, sp, #56
	vpop {s4, s5, s6, s7}
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L246:
	ldr r0, =0
	ldr r0, =1
	b .L243
.L256:
	b .L243
.L272:
	mov r4, r1
	mov r5, r2
	b .L242

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
