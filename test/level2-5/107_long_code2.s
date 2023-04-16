	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm a, 400000, 4
	.text
	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L16003:
	mov r2, #4
	ldr r1, addr_a0
	ldr r0, =80000
	mla r2, r2, r0, r1
	ldr r1, =19999
	mov r0, #4
	mla r1, r1, r0, r2
	ldr r0, =1
	str r0, [r1]
	mov r2, #4
	ldr r1, addr_a0
	ldr r0, =80000
	mla r2, r2, r0, r1
	ldr r0, =20000
	sub r1, r0, #1
	mov r0, #4
	mla r0, r1, r0, r2
	ldr r2, [r0]
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B0
.LTORG
addr_a0:
	.word a
.B0:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B1
.LTORG
addr_a1:
	.word a
.B1:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B2
.LTORG
addr_a2:
	.word a
.B2:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B3
.LTORG
addr_a3:
	.word a
.B3:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B4
.LTORG
addr_a4:
	.word a
.B4:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B5
.LTORG
addr_a5:
	.word a
.B5:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B6
.LTORG
addr_a6:
	.word a
.B6:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B7
.LTORG
addr_a7:
	.word a
.B7:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B8
.LTORG
addr_a8:
	.word a
.B8:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B9
.LTORG
addr_a9:
	.word a
.B9:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B10
.LTORG
addr_a10:
	.word a
.B10:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B11
.LTORG
addr_a11:
	.word a
.B11:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B12
.LTORG
addr_a12:
	.word a
.B12:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B13
.LTORG
addr_a13:
	.word a
.B13:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B14
.LTORG
addr_a14:
	.word a
.B14:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	b .B15
.LTORG
addr_a15:
	.word a
.B15:
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r2, r2, r1
	ldr r1, [r0]
	add r1, r2, r1
	ldr r0, [r0]
	add r0, r1, r0
	pop {r3, r4, fp, lr}
	bx lr
	b .F16
.LTORG
addr_a16:
	.word a
.F16:

addr_a17:
	.word a
	.ident "ZWJM"
