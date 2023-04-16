	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L35:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	b .L39
.L39:
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
	mov r3, r1
	cmp r1, #75
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L44
.L40:
	cmp r3, #100
	movlt r0, #1
	movge r0, #0
	blt .L46
	b .L50
.L41:
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L44:
	ldr r0, =0
	ldr r0, =0
	mov r0, r1
	b .L41
.L46:
	add r2, r3, #42
	cmp r2, #99
	movgt r0, #1
	movle r0, #0
	bgt .L51
	b .L55
.L47:
	mov r4, r2
	ldr r0, =42
	mov r3, r1
	cmp r1, #75
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L66
.L50:
	mov r2, r4
	mov r1, r3
	b .L47
.L51:
	mov r1, #84
	ldr r0, =1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L57
	b .L61
.L52:
	mov r2, r1
	mov r1, r0
	b .L47
.L55:
	mov r1, r4
	mov r0, r2
	b .L52
.L57:
	add r0, r1, r1
	b .L58
.L58:
	b .L52
.L61:
	mov r0, r2
	b .L58
.L66:
	ldr r0, =42
	mov r0, r1
	b .L41

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L67:
	mov r0, #2
	mov r1, #2
	bl deepWhileBr
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
