	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L42:
	ldr r0, =5
	str r0, [fp, #-4]
	ldr r0, =5
	str r0, [fp, #-8]
	ldr r0, =1
	str r0, [fp, #-12]
	ldr r0, =0
	sub r0, r0, #2
	str r0, [fp, #-16]
	mov r1, r0
	ldr r0, =2
	sdiv r2, r1, r0
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-12]
	add r1, r0, #3
	ldr r0, =0
	sub r0, r0, r1
	and r0, r0, #1
	sub r0, r2, r0
	str r0, [fp, #-20]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-16]
	and r0, r0, #1
	add r2, r0, #67
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r1, r1, r0
	ldr r0, =0
	sub r0, r0, r1
	add r2, r2, r0
	ldr r0, [fp, #-12]
	add r0, r0, #2
	and r1, r0, #1
	ldr r0, =0
	sub r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-20]
	mov r0, r0
	add r0, r0, #3
	str r0, [fp, #-20]
	mov r0, r0
	bl putint
	mov r0, #0
	add sp, sp, #24
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
