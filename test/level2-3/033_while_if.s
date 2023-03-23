	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_one
	.type get_one , %function
get_one:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L40:
	str r0, [fp, #-4]
	mov r0, #1
	add sp, sp, #4
	pop {fp, lr}
	bx lr

	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L42:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L46
.L46:
	ldr r4, [fp, #-12]
	cmp r4, #75
	movlt r4, #1
	movge r4, #0
	blt .L47
	b .L51
.L47:
	ldr r4, =42
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L53
	b .L57
.L48:
	ldr r4, [fp, #-12]
	mov r0, r4
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L51:
	b .L48
.L53:
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #99
	movgt r4, #1
	movle r4, #0
	bgt .L58
	b .L62
.L54:
	ldr r4, [fp, #-12]
	cmp r4, #75
	movlt r4, #1
	movge r4, #0
	blt .L47
	b .L73
.L57:
	b .L54
.L58:
	ldr r4, [fp, #-16]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-20]
	mov r0, #0
	bl get_one
	mov r4, r0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L64
	b .L68
.L59:
	b .L54
.L62:
	b .L59
.L64:
	ldr r4, [fp, #-20]
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-12]
	b .L65
.L65:
	b .L59
.L68:
	b .L65
.L73:
	b .L48

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L74:
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r4
	mov r1, r5
	bl deepWhileBr
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr

