	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L35:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-12]
	b .L39
.L39:
	ldr r0, [fp, #-12]
	cmp r0, #75
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L44
.L40:
	ldr r0, =42
	str r0, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L46
	b .L50
.L41:
	ldr r0, [fp, #-12]
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr
.L44:
	b .L41
.L46:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	add r0, r1, r0
	str r0, [fp, #-12]
	mov r0, r0
	cmp r0, #99
	movgt r0, #1
	movle r0, #0
	bgt .L51
	b .L55
.L47:
	ldr r0, [fp, #-12]
	cmp r0, #75
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L66
.L50:
	b .L47
.L51:
	ldr r0, [fp, #-16]
	add r0, r0, r0
	str r0, [fp, #-20]
	ldr r0, =1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L57
	b .L61
.L52:
	b .L47
.L55:
	b .L52
.L57:
	ldr r0, [fp, #-20]
	add r0, r0, r0
	str r0, [fp, #-12]
	b .L58
.L58:
	b .L52
.L61:
	b .L58
.L66:
	b .L41

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L67:
	ldr r0, =2
	str r0, [fp, #-4]
	mov r0, r0
	ldr r1, [fp, #-4]
	bl deepWhileBr
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
