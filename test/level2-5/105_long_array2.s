	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm a, 16384, 4
	.text
	.global f1
	.type f1 , %function
f1:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L17:
	str r0, [fp, #-4]
	mov r2, #5
	ldr r1, addr_a0
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =4000
	str r0, [r1]
	ldr r2, =4000
	ldr r1, addr_a0
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =3
	str r0, [r1]
	ldr r2, =4095
	ldr r1, addr_a0
	mov r0, #4
	mla r1, r2, r0, r1
	ldr r0, =7
	str r0, [r1]
	ldr r2, =2216
	ldr r1, addr_a0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add r0, r0, #9
	ldr r4, [fp, #-4]
	ldr r3, =4095
	ldr r2, addr_a0
	mov r1, #4
	mla r1, r3, r1, r2
	ldr r2, [r1]
	mov r1, #4
	mla r1, r2, r1, r4
	str r0, [r1]
	mov r2, #5
	ldr r1, addr_a0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r2, [r0]
	ldr r1, addr_a0
	mov r0, #4
	mla r0, r2, r0, r1
	ldr r0, [r0]
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	ldr r4, =32768
	sub sp, sp, r4
.L24:
	ldr r0, =-16384
	add r0, fp, r0
	mov r1, #0
	ldr r2, =16384
	bl memset
	mov r1, #1
	ldr r2, =-16384
	ldr r0, =4096
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	ldr r0, =4096
	add r1, r1, r0
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	ldr r0, =4092
	add r1, r1, r0
	ldr r0, =4
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =6
	str r0, [r1]
	ldr r0, =-32768
	add r0, fp, r0
	mov r1, #0
	ldr r2, =16384
	bl memset
	mov r1, #0
	ldr r2, =-32768
	mov r0, #16
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #12
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =4
	str r0, [r1]
	mov r1, #0
	ldr r2, =-32768
	mov r0, #16
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	bl f1
	bl putint
	mov r0, #10
	bl putch
	mov r1, #2
	ldr r2, =-32768
	mov r0, #16
	mul r1, r1, r0
	add r0, fp, r2
	add r2, r0, r1
	mov r1, #0
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r0, [r0]
	ldr r1, =32768
	add sp, sp, r1
	pop {r3, r4, fp, lr}
	bx lr

addr_a0:
	.word a
	.ident "ZWJM"
