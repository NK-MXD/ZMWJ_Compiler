	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 7
	.text
	.global func
	.type func , %function
func:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r0, addr_a0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, =1
	str r0, [fp, #-8]
	mov r1, r0
	ldr r0, [fp, #-4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L27
	b .L32
.L27:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L28:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L32:
	b .L28

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L33:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L36
.L36:
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L41
.L37:
	bl func
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L42
	b .L46
.L38:
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L52
	b .L57
.L41:
	b .L38
.L42:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L43
.L43:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	mov r0, r0
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L51
.L46:
	b .L43
.L51:
	b .L38
.L52:
	mov r0, #1
	bl putint
	b .L54
.L53:
	mov r0, #0
	bl putint
	b .L54
.L54:
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L57:
	b .L53

addr_a0:
	.word a
	.ident "ZWJM"
