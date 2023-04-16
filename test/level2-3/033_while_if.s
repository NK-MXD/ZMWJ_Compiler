	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_one
	.type get_one , %function
get_one:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L40:
	str r0, [fp, #-4]
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L42:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r2, r1, r0
	b .L46
.L46:
	ldr r0, =0
	mov r1, r0
	ldr r0, =0
	mov r0, r2
	cmp r2, #75
	movlt r3, #1
	movge r3, #0
	blt .L47
	b .L51
.L47:
	cmp r0, #100
	movlt r2, #1
	movge r2, #0
	blt .L53
	b .L57
.L48:
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L51:
	ldr r0, =0
	ldr r0, =0
	mov r0, r2
	b .L48
.L53:
	add r5, r0, #42
	cmp r5, #99
	movgt r0, #1
	movle r0, #0
	bgt .L58
	b .L62
.L54:
	ldr r0, =42
	mov r0, r2
	cmp r2, #75
	movlt r3, #1
	movge r3, #0
	blt .L47
	b .L73
.L57:
	mov r2, r0
	b .L54
.L58:
	mov r4, #84
	mov r0, #0
	bl get_one
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L64
	b .L68
.L59:
	mov r2, r0
	b .L54
.L62:
	mov r0, r5
	b .L59
.L64:
	add r0, r4, r4
	b .L65
.L65:
	mov r1, r4
	b .L59
.L68:
	mov r0, r5
	b .L65
.L73:
	ldr r0, =42
	mov r0, r2
	b .L48

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L74:
	mov r0, #2
	mov r1, #2
	bl deepWhileBr
	bl putint
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
