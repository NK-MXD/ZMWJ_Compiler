	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifElseIf
	.type ifElseIf , %function
ifElseIf:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L30:
	ldr r0, =5
	str r0, [fp, #-4]
	ldr r0, =10
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #6
	moveq r0, #1
	movne r0, #0
	beq .L33
	b .L39
.L33:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L34:
	ldr r0, [fp, #-8]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L46
	b .L49
.L35:
	ldr r0, [fp, #-4]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L36:
	ldr r0, [fp, #-8]
	cmp r0, #11
	moveq r0, #1
	movne r0, #0
	beq .L33
	b .L42
.L39:
	b .L36
.L42:
	b .L34
.L43:
	ldr r0, =25
	str r0, [fp, #-4]
	b .L45
.L44:
	ldr r0, [fp, #-8]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L56
	b .L59
.L45:
	b .L35
.L46:
	ldr r0, [fp, #-4]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L43
	b .L52
.L49:
	b .L44
.L52:
	b .L44
.L53:
	ldr r0, [fp, #-4]
	add r0, r0, #15
	str r0, [fp, #-4]
	b .L55
.L54:
	ldr r1, [fp, #-4]
	ldr r0, =0
	sub r0, r0, r1
	str r0, [fp, #-4]
	b .L55
.L55:
	b .L45
.L56:
	ldr r1, [fp, #-4]
	ldr r0, =0
	sub r0, r0, #5
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L53
	b .L62
.L59:
	b .L54
.L62:
	b .L54

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L63:
	bl ifElseIf
	bl putint
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
