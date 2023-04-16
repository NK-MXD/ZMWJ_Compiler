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
	bl putint
	b .L20
.L19:
	bl getint
	mov r4, r0
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	bl reverse
	mov r0, r4
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
.L24:
	mov r0, #200
	bl reverse
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
