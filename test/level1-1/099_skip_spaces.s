	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =400
	sub sp, sp, r4
.L23:
	b .L27
.L27:
	bl getint
	mov r1, r0
	ldr r0, =0
	mov r4, r0
	cmp r1, #0
	movne r0, #1
	moveq r0, #0
	bne .L28
	b .L31
.L28:
	bl getint
	mov r3, r0
	ldr r2, =-400
	mov r0, #4
	mul r1, r4, r0
	add r0, fp, r2
	add r0, r0, r1
	str r3, [r0]
	add r4, r4, #1
	bl getint
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L68
	b .L36
.L29:
	b .L38
.L31:
	ldr r0, =0
	mov r2, r0
	b .L29
.L36:
	mov r2, r4
	b .L29
.L38:
	ldr r0, =0
	mov r4, r0
	mov r1, r2
	cmp r2, #0
	movne r0, #1
	moveq r0, #0
	bne .L39
	b .L42
.L39:
	sub r3, r1, #1
	ldr r2, =-400
	mov r0, #4
	mul r1, r3, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r4, r0
	cmp r3, #0
	movne r0, #1
	moveq r0, #0
	bne .L72
	b .L48
.L40:
	ldr r2, =79
	sdiv r1, r0, r2
	mul r1, r1, r2
	sub r0, r0, r1
	ldr r1, =400
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr
.L42:
	ldr r0, =0
	b .L40
.L48:
	mov r0, r1
	b .L40
.L68:
	b .L28
.L72:
	mov r4, r1
	mov r1, r3
	b .L39

	.ident "ZWJM"
