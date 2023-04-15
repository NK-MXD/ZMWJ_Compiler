	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global reverse
	.type reverse , %function
reverse:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L15:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #1
	movle r0, #1
	movgt r0, #0
	ble .L18
	b .L23
.L18:
	bl getint
	str r0, [fp, #-8]
	mov r0, r0
	bl putint
	b .L20
.L19:
	bl getint
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	bl reverse
	ldr r0, [fp, #-8]
	bl putint
	b .L20
.L20:
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr
.L23:
	b .L19

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L24:
	ldr r0, =200
	str r0, [fp, #-4]
	mov r0, r0
	bl reverse
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
