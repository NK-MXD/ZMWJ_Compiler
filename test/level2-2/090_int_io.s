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
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L66:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L69
.L69:
	ldr r4, =1
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L70
	b .L73
.L70:
	bl getch
	mov r4, r0
	ldr r5, addr_ascii_00
	ldr r6, [r5]
	sub r5, r4, r6
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movlt r4, #1
	movge r4, #0
	blt .L75
	b .L81
.L71:
	ldr r4, [fp, #-8]
	str r4, [fp, #-4]
	b .L91
.L73:
	b .L71
.L75:
	b .L69
.L76:
	b .L71
.L78:
	ldr r4, [fp, #-8]
	cmp r4, #9
	movgt r4, #1
	movle r4, #0
	bgt .L75
	b .L84
.L81:
	b .L78
.L84:
	b .L76
.L91:
	ldr r4, =1
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L92
	b .L95
.L92:
	bl getch
	mov r4, r0
	ldr r5, addr_ascii_00
	ldr r6, [r5]
	sub r5, r4, r6
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movge r4, #1
	movlt r4, #0
	bge .L100
	b .L103
.L93:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L95:
	b .L93
.L97:
	ldr r4, [fp, #-4]
	ldr r5, =10
	mul r6, r4, r5
	ldr r4, [fp, #-8]
	add r5, r6, r4
	str r5, [fp, #-4]
	b .L99
.L98:
	b .L93
.L99:
	ldr r4, =1
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L92
	b .L110
.L100:
	ldr r4, [fp, #-8]
	cmp r4, #9
	movle r4, #1
	movgt r4, #0
	ble .L97
	b .L106
.L103:
	b .L98
.L106:
	b .L98
.L110:
	b .L93

	.global my_putint
	.type my_putint , %function
my_putint:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L112:
	str r0, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-72]
	b .L116
.L116:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L117
	b .L121
.L117:
	ldr r4, [fp, #-4]
	ldr r5, =10
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r5, r4, r7
	ldr r4, addr_ascii_00
	ldr r6, [r4]
	add r4, r5, r6
	ldr r5, [fp, #-72]
	mov r6, #-68
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-4]
	ldr r5, =10
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-72]
	add r5, r4, #1
	str r5, [fp, #-72]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L117
	b .L126
.L118:
	b .L127
.L121:
	b .L118
.L126:
	b .L118
.L127:
	ldr r4, [fp, #-72]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L128
	b .L132
.L128:
	ldr r4, [fp, #-72]
	sub r5, r4, #1
	str r5, [fp, #-72]
	ldr r4, [fp, #-72]
	mov r5, #-68
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	bl putch
	ldr r4, [fp, #-72]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L128
	b .L138
.L129:
	add sp, sp, #72
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L132:
	b .L129
.L138:
	b .L129

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L139:
	bl my_getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L141
.L141:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L142
	b .L146
.L142:
	bl my_getint
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl my_putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L142
	b .L152
.L143:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L146:
	b .L143
.L152:
	b .L143

addr_ascii_00:
	.word ascii_0
	.ident "ZWJM"
