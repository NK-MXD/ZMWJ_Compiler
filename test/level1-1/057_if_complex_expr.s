	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L42:
	ldr r0, =0
	sub r4, r0, #2
	mov r1, r4
	ldr r0, =2
	sdiv r0, r1, r0
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L48
	b .L53
.L48:
	mov r0, #2
	bl putint
	b .L49
.L49:
	and r0, r4, #1
	add r0, r0, #67
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L61
	b .L66
.L50:
	ldr r0, =5
	sub r0, r0, #5
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L54
	b .L57
.L53:
	b .L50
.L54:
	ldr r0, =1
	add r0, r0, #3
	and r0, r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L48
	b .L60
.L57:
	b .L49
.L60:
	b .L49
.L61:
	mov r0, #4
	bl putint
	ldr r0, =4
	b .L62
.L62:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L63:
	ldr r0, =5
	sub r0, r0, #5
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L67
	b .L70
.L66:
	b .L63
.L67:
	ldr r0, =1
	add r0, r0, #2
	and r0, r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L61
	b .L73
.L70:
	ldr r0, =2
	b .L62
.L73:
	ldr r0, =2
	b .L62

	.ident "ZWJM"
