	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm a, 16384, 4
	.text
	.global f1
	.type f1 , %function
f1:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L17:
	str r0, [fp, #-4]
	mov r4, #5
	ldr r5, addr_a0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =4000
	str r4, [r5]
	ldr r4, =4000
	ldr r5, addr_a0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =3
	str r4, [r5]
	ldr r4, =4095
	ldr r5, addr_a0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =7
	str r4, [r5]
	ldr r4, =2216
	ldr r5, addr_a0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	add r5, r4, #9
	ldr r4, [fp, #-4]
	ldr r6, =4095
	ldr r7, addr_a0
	mov r8, #4
	mul r9, r6, r8
	add r6, r7, r9
	mov r7, r6
	ldr r6, [r7]
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	str r5, [r6]
	mov r4, #5
	ldr r5, addr_a0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	ldr r5, addr_a0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [r5]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =32768
	sub sp, sp, r4
.L24:
	ldr r4, =-16384
	add r0, fp, r4
	mov r1, #0
	ldr r4, =16384
	mov r2, r4
	bl memset
	mov r4, #1
	ldr r5, =-16384
	ldr r6, =4096
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =1
	str r5, [r4]
	ldr r6, =4096
	add r5, r4, r6
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	ldr r6, =4092
	add r5, r4, r6
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =5
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =6
	str r4, [r5]
	ldr r4, =-32768
	add r0, fp, r4
	mov r1, #0
	ldr r4, =16384
	mov r2, r4
	bl memset
	mov r4, #0
	ldr r5, =-32768
	mov r6, #16
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #12
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	mov r4, #0
	ldr r5, =-32768
	mov r6, #16
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r0, r4
	bl f1
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r4, #2
	ldr r5, =-32768
	mov r6, #16
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	ldr r1, =32768
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

addr_a0:
	.word a
	.ident "ZWJM"
