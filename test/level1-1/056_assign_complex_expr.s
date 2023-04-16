	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L42:
	ldr r0, =0
	sub r5, r0, #2
	mov r1, r5
	ldr r0, =2
	sdiv r1, r1, r0
	ldr r0, =5
	sub r4, r0, #5
	add r0, r1, r4
	ldr r1, =1
	add r2, r1, #3
	ldr r1, =0
	sub r1, r1, r2
	and r1, r1, #1
	sub r0, r0, r1
	bl putint
	and r0, r5, #1
	add r1, r0, #67
	ldr r0, =0
	sub r0, r0, r4
	add r2, r1, r0
	ldr r0, =1
	add r0, r0, #2
	and r1, r0, #1
	ldr r0, =0
	sub r0, r0, r1
	sub r0, r2, r0
	add r0, r0, #3
	bl putint
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
