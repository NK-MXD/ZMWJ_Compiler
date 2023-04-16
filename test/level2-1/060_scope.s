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
.L24:
	ldr r0, addr_a0
	ldr r0, [r0]
	ldr r1, =1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L27
	b .L32
.L27:
	ldr r0, =1
	add r0, r0, #1
	mov r0, #1
	pop {r3, r4, fp, lr}
	bx lr
.L28:
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L32:
	b .L28

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L33:
	b .L36
.L36:
	ldr r0, =0
	mov r5, r0
	ldr r0, =0
	mov r4, r0
	ldr r0, =0
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
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L52
	b .L57
.L41:
	ldr r0, =0
	ldr r0, =0
	b .L38
.L42:
	add r0, r4, #1
	mov r1, r0
	b .L43
.L43:
	add r0, r5, #1
	mov r5, r0
	mov r4, r1
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L51
.L46:
	mov r1, r4
	b .L43
.L51:
	mov r0, r1
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
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L57:
	b .L53

addr_a0:
	.word a
	.ident "ZWJM"
