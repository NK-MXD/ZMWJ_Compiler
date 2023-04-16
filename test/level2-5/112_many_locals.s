	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global foo
	.type foo , %function
foo:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L158:
	mov r0, #0
	mov r2, #-64
	mov r1, #4
	mul r1, r0, r1
	add r0, fp, r2
	add r1, r0, r1
	ldr r0, =0
	str r0, [r1]
	add r0, r1, #4
	ldr r1, =1
	str r1, [r0]
	add r0, r0, #4
	ldr r1, =2
	str r1, [r0]
	add r0, r0, #4
	ldr r1, =3
	str r1, [r0]
	add r0, r0, #4
	ldr r1, =0
	str r1, [r0]
	add r1, r0, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =0
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =2
	str r0, [r1]
	add r1, r1, #4
	ldr r0, =3
	str r0, [r1]
	ldr r0, =3
	add r0, r0, #7
	add r0, r0, #5
	add r0, r0, #6
	add r0, r0, #1
	add r0, r0, #3
	add r1, r0, #5
	ldr r0, =4
	add r0, r0, #2
	add r0, r0, #7
	add r0, r0, #9
	add r0, r0, #8
	add r0, r0, #1
	add r0, r0, #4
	add r0, r0, #6
	add r3, r1, r0
	mov r1, #3
	mov r2, #-64
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add r0, r3, r0
	add sp, sp, #64
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
.L195:
	ldr r0, =3
	add r0, r0, #7
	add r0, r0, #5
	add r0, r0, #6
	add r0, r0, #1
	add r0, r0, #3
	add r4, r0, #5
	ldr r0, =4
	add r0, r0, #2
	add r0, r0, #7
	add r0, r0, #9
	add r0, r0, #8
	add r0, r0, #1
	add r0, r0, #4
	add r5, r0, #6
	bl foo
	add r4, r4, r0
	bl foo
	add r0, r5, r0
	ldr r1, =4
	add r1, r1, #7
	add r1, r1, #2
	add r1, r1, #5
	add r1, r1, #8
	add r1, r1, #6
	add r1, r1, #3
	add r0, r4, r0
	add r0, r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
