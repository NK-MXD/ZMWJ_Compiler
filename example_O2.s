	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global relu_reg
	.type relu_reg , %function
relu_reg:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L46:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #127
	movgt r0, #1
	movle r0, #0
	bgt .L48
	b .L52
.L48:
	mov r0, #127
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L49:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L53
	b .L57
.L52:
	b .L49
.L53:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L54:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L57:
	b .L54

	.global model
	.type model , %function
model:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L58:
	str r0, [fp, #-4]
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	ldr r3, [fp, #-4]
	mov r2, #0
	mov r1, #20
	mul r1, r2, r1
	add r3, r3, r1
	mov r2, #1
	mov r1, #4
	mul r1, r2, r1
	add r1, r3, r1
	ldr r1, [r1]
	add r4, r0, r1
	mov r0, r4
	bl relu_reg
	mov r5, r0
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	ldr r2, [fp, #-4]
	mov r1, #0
	mov r0, #20
	mul r0, r1, r0
	add r2, r2, r0
	mov r1, #1
	mov r0, #4
	mul r0, r1, r0
	add r0, r2, r0
	ldr r0, [r0]
	mov r0, r4
	bl relu_reg
	add r0, r5, r0
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L60
	b .L76
.L60:
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L61:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L76:
	b .L61

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L77:
	bl getint
	str r0, [fp, #-4]
	b .L80
.L80:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L81
	b .L85
.L81:
	ldr r0, =0
	str r0, [fp, #-108]
	b .L87
.L82:
	mov r0, #0
	add sp, sp, #112
	pop {r3, r4, fp, lr}
	bx lr
.L85:
	b .L82
.L87:
	ldr r0, [fp, #-108]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L92
.L88:
	ldr r0, =0
	str r0, [fp, #-112]
	b .L94
.L89:
	mov r1, #0
	mov r2, #-104
	mov r0, #20
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	bl model
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L111
	b .L115
.L92:
	b .L89
.L94:
	ldr r0, [fp, #-112]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L95
	b .L99
.L95:
	bl getint
	ldr r2, [fp, #-108]
	mov r3, #-104
	mov r1, #20
	mul r2, r2, r1
	add r1, fp, r3
	add r3, r1, r2
	ldr r2, [fp, #-112]
	mov r1, #4
	mul r1, r2, r1
	add r1, r3, r1
	str r0, [r1]
	ldr r0, [fp, #-112]
	add r0, r0, #1
	str r0, [fp, #-112]
	ldr r0, [fp, #-112]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L95
	b .L105
.L96:
	ldr r0, [fp, #-108]
	add r0, r0, #1
	str r0, [fp, #-108]
	ldr r0, [fp, #-108]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L110
.L99:
	b .L96
.L105:
	b .L96
.L110:
	b .L89
.L111:
	mov r0, #99
	bl putch
	mov r0, #97
	bl putch
	mov r0, #116
	bl putch
	mov r0, #10
	bl putch
	b .L113
.L112:
	mov r0, #100
	bl putch
	mov r0, #111
	bl putch
	mov r0, #103
	bl putch
	mov r0, #10
	bl putch
	b .L113
.L113:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L81
	b .L121
.L115:
	b .L112
.L121:
	b .L82

	.ident "ZWJM"
