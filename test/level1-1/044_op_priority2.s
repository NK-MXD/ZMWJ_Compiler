	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L15:
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, =4
	str r4, [fp, #-8]
	ldr r4, =2
	str r4, [fp, #-12]
	ldr r4, =2
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	add r6, r4, r5
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-16]
	sub r7, r4, r5
	mul r4, r6, r7
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

