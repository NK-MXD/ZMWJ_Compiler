	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global fun
	.type fun , %function
fun:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L34:
	b .L38
.L38:
	cmp r1, #0
	movgt r4, #1
	movle r4, #0
	bgt .L39
	b .L43
.L39:
	sdiv r4, v54, v60
	mul r5, r4, v60
	sub r4, v54, r5
	mov r0, r4
	bl putint
	mov r0, r4
	bl putint
	mov r0, v60
	bl putint
	mov r0, #32
	bl putch
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L39
	b .L48
.L40:
	mov r0, v67
	bl putint
	mov r0, #32
	bl putch
	mov r0, v61
	bl putint
	mov r0, #32
	bl putch
	mov r0, v55
	bl putint
	mov r0, #32
	bl putch
	mov r0, v55
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L43:
	b .L40
.L48:
	b .L40

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L49:
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl fun
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
