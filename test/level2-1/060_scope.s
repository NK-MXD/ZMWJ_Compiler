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
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r4, addr_a0
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r4, =1
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L27
	b .L32
.L27:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	mov r0, #1
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L28:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L32:
	b .L28

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L33:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L36
.L36:
	ldr r4, [fp, #-8]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L37
	b .L41
.L37:
	bl func
	mov r4, r0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L42
	b .L46
.L38:
	ldr r4, [fp, #-4]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
	blt .L52
	b .L57
.L41:
	b .L38
.L42:
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L43
.L43:
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #100
	movlt r4, #1
	movge r4, #0
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
	pop {r4, r5, fp, lr}
	bx lr
.L57:
	b .L53

addr_a0:
	.word a
