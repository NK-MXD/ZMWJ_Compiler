	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L58:
	b .L62
.L62:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L63
	b .L67
.L63:
	add r3, r1, #1
	mov r2, #-40
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	cmp r3, #10
	movlt r0, #1
	movge r0, #0
	blt .L153
	b .L72
.L64:
	bl getint
	mov r5, r0
	ldr r0, =10
	sub r1, r0, #1
	ldr r0, =2
	sdiv r0, r1, r0
	b .L80
.L67:
	ldr r0, =0
	b .L64
.L72:
	b .L64
.L80:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	mov r3, r0
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L101
	b .L86
.L81:
	mov r6, #-40
	mov r0, #4
	mul r1, r2, r0
	add r0, fp, r6
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, r5
	moveq r0, #1
	movne r0, #0
	beq .L90
	b .L95
.L82:
	cmp r1, #1
	moveq r0, #1
	movne r0, #0
	beq .L108
	b .L113
.L86:
	ldr r0, =0
	mov r2, r0
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	b .L82
.L90:
	mov r1, r2
	ldr r0, =1
	b .L91
.L91:
	add r6, r2, #1
	mov r4, r1
	mov r3, r0
	mov r2, r6
	cmp r6, #10
	movlt r6, #1
	movge r6, #0
	blt .L101
	b .L104
.L95:
	mov r1, r4
	mov r0, r3
	b .L91
.L101:
	cmp r3, #0
	moveq r0, #1
	movne r0, #0
	beq .L81
	b .L107
.L104:
	mov r2, r1
	mov r1, r0
	b .L82
.L107:
	mov r2, r4
	mov r1, r3
	b .L82
.L108:
	mov r0, r2
	bl putint
	b .L110
.L109:
	mov r0, #0
	bl putint
	ldr r0, =0
	b .L110
.L110:
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #40
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L113:
	b .L109
.L153:
	mov r1, r3
	b .L63

	.ident "ZWJM"
