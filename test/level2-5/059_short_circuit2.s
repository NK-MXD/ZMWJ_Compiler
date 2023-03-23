	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L27:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #50
	movle r4, #1
	movgt r4, #0
	ble .L29
	b .L34
.L29:
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L30:
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L34:
	b .L30

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L35:
	mov r0, #0
	bl func
	mov r4, r0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L37
	b .L43
.L37:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L39
.L38:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L39
.L39:
	mov r0, #50
	bl func
	mov r4, r0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L55
	b .L58
.L40:
	mov r0, #50
	bl func
	mov r4, r0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L44
	b .L47
.L43:
	b .L40
.L44:
	mov r0, #100
	bl func
	mov r4, r0
	cmp r4, #0
	moveq r4, #1
	movne r4, #0
	beq .L37
	b .L50
.L47:
	b .L38
.L50:
	b .L38
.L51:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L53
.L52:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L53
.L53:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L54:
	mov r0, #1
	bl func
	mov r4, r0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L51
	b .L64
.L55:
	mov r0, #40
	bl func
	mov r4, r0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L51
	b .L61
.L58:
	b .L54
.L61:
	b .L54
.L64:
	b .L52

	.ident "ZWJM"
