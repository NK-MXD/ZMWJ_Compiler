	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global climbStairs
	.type climbStairs , %function
climbStairs:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L36:
	str r0, [fp, #-4]
	mov r0, r0
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L38
	b .L42
.L38:
	ldr r0, [fp, #-4]
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L39:
	mov r1, #0
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	mov r1, #1
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =1
	str r0, [r1]
	mov r1, #2
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =2
	str r0, [r1]
	b .L45
.L42:
	b .L39
.L45:
	ldr r0, [fp, #-4]
	add r2, r0, #1
	ldr r0, =3
	ldr r1, =3
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L46
	b .L50
.L46:
	sub r2, r0, #1
	mov r3, #-44
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r4, [r1]
	sub r2, r0, #2
	mov r3, #-44
	mov r1, #4
	mul r2, r2, r1
	add r1, fp, r3
	add r1, r1, r2
	ldr r1, [r1]
	add r4, r4, r1
	mov r3, #-44
	mov r1, #4
	mul r2, r0, r1
	add r1, fp, r3
	add r1, r1, r2
	str r4, [r1]
	add r1, r0, #1
	ldr r0, [fp, #-4]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L73
	b .L59
.L47:
	ldr r1, [fp, #-4]
	mov r2, #-44
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add sp, sp, #48
	pop {r3, r4, fp, lr}
	bx lr
.L50:
	ldr r0, =3
	b .L47
.L59:
	b .L47
.L73:
	mov r0, r1
	b .L46

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L61:
	mov r0, #5
	bl climbStairs
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
