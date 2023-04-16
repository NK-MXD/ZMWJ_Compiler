	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.section .rodata
	.global ascii_0
	.align 4
	.size ascii_0, 4
ascii_0:
	.word 48
	.text
	.global my_getint
	.type my_getint , %function
my_getint:
	push {r3, r4, fp, lr}
	mov fp, sp
.L66:
	ldr r0, =0
	mov r1, r0
	b .L69
.L69:
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L70
	b .L73
.L70:
	bl getch
	mov r1, r0
	ldr r0, addr_ascii_00
	ldr r0, [r0]
	sub r1, r1, r0
	cmp r1, #0
	movlt r0, #1
	movge r0, #0
	blt .L75
	b .L81
.L71:
	b .L91
.L73:
	b .L71
.L75:
	b .L69
.L76:
	b .L71
.L78:
	cmp r1, #9
	movgt r0, #1
	movle r0, #0
	bgt .L75
	b .L84
.L81:
	b .L78
.L84:
	b .L76
.L91:
	mov r0, r1
	mov r4, r1
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L92
	b .L95
.L92:
	bl getch
	mov r1, r0
	ldr r0, addr_ascii_00
	ldr r0, [r0]
	sub r1, r1, r0
	cmp r1, #0
	movge r0, #1
	movlt r0, #0
	bge .L100
	b .L103
.L93:
	pop {r3, r4, fp, lr}
	bx lr
.L95:
	mov r0, r1
	mov r0, r1
	b .L93
.L97:
	ldr r0, =10
	mla r1, r4, r0, r1
	b .L99
.L98:
	mov r0, r4
	b .L93
.L99:
	mov r4, r1
	ldr r0, =1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L92
	b .L110
.L100:
	cmp r1, #9
	movle r0, #1
	movgt r0, #0
	ble .L97
	b .L106
.L103:
	b .L98
.L106:
	b .L98
.L110:
	mov r0, r1
	b .L93

	.global my_putint
	.type my_putint , %function
my_putint:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L112:
	str r0, [fp, #-4]
	b .L116
.L116:
	ldr r3, [fp, #-4]
	ldr r1, =0
	mov r2, r1
	cmp r3, #0
	movgt r1, #1
	movle r1, #0
	bgt .L117
	b .L121
.L117:
	ldr r3, [fp, #-4]
	ldr r1, =10
	sdiv r4, r3, r1
	mul r1, r4, r1
	sub r1, r3, r1
	ldr r3, addr_ascii_00
	ldr r3, [r3]
	add r1, r1, r3
	mov r4, #-68
	mov r3, #4
	mul r3, r2, r3
	add r4, fp, r4
	add r3, r4, r3
	str r1, [r3]
	ldr r1, [fp, #-4]
	ldr r3, =3435973837
	umull r3, r4, r1, r3
	mov r5, r4, ASR#3
	mov r3, r4, LSR#31
	add r5, r5, r3
	ldr r3, =10
	sdiv r5, r1, r3
	str r5, [fp, #-4]
	add r2, r2, #1
	ldr r1, [fp, #-4]
	cmp r1, #0
	movgt r1, #1
	movle r1, #0
	bgt .L199
	b .L126
.L118:
	b .L127
.L121:
	ldr r1, =0
	b .L118
.L126:
	mov r1, r2
	b .L118
.L127:
	mov r2, r1
	cmp r1, #0
	movgt r1, #1
	movle r1, #0
	bgt .L128
	b .L132
.L128:
	sub r4, r2, #1
	mov r2, #-68
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl putch
	cmp r4, #0
	movgt r1, #1
	movle r1, #0
	bgt .L202
	b .L138
.L129:
	add sp, sp, #72
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L132:
	b .L129
.L138:
	b .L129
.L199:
	b .L117
.L202:
	mov r2, r4
	b .L128

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L139:
	bl my_getint
	mov r1, r0
	b .L141
.L141:
	ldr r0, =0
	mov r4, r1
	cmp r1, #0
	movgt r0, #1
	movle r0, #0
	bgt .L142
	b .L146
.L142:
	bl my_getint
	bl my_putint
	mov r0, #10
	bl putch
	sub r1, r4, #1
	cmp r1, #0
	movgt r0, #1
	movle r0, #0
	bgt .L206
	b .L152
.L143:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L146:
	ldr r0, =0
	b .L143
.L152:
	b .L143
.L206:
	mov r4, r1
	b .L142

addr_ascii_00:
	.word ascii_0
	.ident "ZWJM"
