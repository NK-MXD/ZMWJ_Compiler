	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global foo
	.type foo , %function
foo:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #136
.L158:
	mov r1, #0
	mov r2, #-64
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r1, r0, r1
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
	str r0, [fp, #-68]
	ldr r0, =7
	str r0, [fp, #-72]
	ldr r0, =5
	str r0, [fp, #-76]
	ldr r0, =6
	str r0, [fp, #-80]
	ldr r0, =1
	str r0, [fp, #-84]
	ldr r0, =0
	str r0, [fp, #-88]
	ldr r0, =3
	str r0, [fp, #-92]
	ldr r0, =5
	str r0, [fp, #-96]
	ldr r0, =4
	str r0, [fp, #-100]
	ldr r0, =2
	str r0, [fp, #-104]
	ldr r0, =7
	str r0, [fp, #-108]
	ldr r0, =9
	str r0, [fp, #-112]
	ldr r0, =8
	str r0, [fp, #-116]
	ldr r0, =1
	str r0, [fp, #-120]
	ldr r0, =4
	str r0, [fp, #-124]
	ldr r0, =6
	str r0, [fp, #-128]
	ldr r1, [fp, #-68]
	ldr r0, [fp, #-72]
	add r1, r1, r0
	ldr r0, [fp, #-76]
	add r1, r1, r0
	ldr r0, [fp, #-80]
	add r1, r1, r0
	ldr r0, [fp, #-84]
	add r1, r1, r0
	ldr r0, [fp, #-88]
	add r1, r1, r0
	ldr r0, [fp, #-92]
	add r1, r1, r0
	ldr r0, [fp, #-96]
	add r0, r1, r0
	str r0, [fp, #-132]
	ldr r1, [fp, #-100]
	ldr r0, [fp, #-104]
	add r1, r1, r0
	ldr r0, [fp, #-108]
	add r1, r1, r0
	ldr r0, [fp, #-112]
	add r1, r1, r0
	ldr r0, [fp, #-116]
	add r1, r1, r0
	ldr r0, [fp, #-120]
	add r1, r1, r0
	ldr r0, [fp, #-124]
	add r1, r1, r0
	ldr r0, [fp, #-128]
	add r0, r1, r0
	str r0, [fp, #-136]
	ldr r1, [fp, #-132]
	ldr r0, [fp, #-136]
	add r3, r1, r0
	ldr r1, [fp, #-68]
	mov r2, #-64
	mov r0, #4
	mul r1, r1, r0
	add r0, fp, r2
	add r0, r0, r1
	ldr r0, [r0]
	add r0, r3, r0
	add sp, sp, #136
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L195:
	ldr r0, =3
	str r0, [fp, #-4]
	ldr r0, =7
	str r0, [fp, #-8]
	ldr r0, =5
	str r0, [fp, #-12]
	ldr r0, =6
	str r0, [fp, #-16]
	ldr r0, =1
	str r0, [fp, #-20]
	ldr r0, =0
	str r0, [fp, #-24]
	ldr r0, =3
	str r0, [fp, #-28]
	ldr r0, =5
	str r0, [fp, #-32]
	ldr r0, =4
	str r0, [fp, #-36]
	ldr r0, =2
	str r0, [fp, #-40]
	ldr r0, =7
	str r0, [fp, #-44]
	ldr r0, =9
	str r0, [fp, #-48]
	ldr r0, =8
	str r0, [fp, #-52]
	ldr r0, =1
	str r0, [fp, #-56]
	ldr r0, =4
	str r0, [fp, #-60]
	ldr r0, =6
	str r0, [fp, #-64]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r0, r1, r0
	str r0, [fp, #-68]
	ldr r1, [fp, #-36]
	ldr r0, [fp, #-40]
	add r1, r1, r0
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-48]
	add r1, r1, r0
	ldr r0, [fp, #-52]
	add r1, r1, r0
	ldr r0, [fp, #-56]
	add r1, r1, r0
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, [fp, #-64]
	add r0, r1, r0
	str r0, [fp, #-72]
	ldr r4, [fp, #-68]
	bl foo
	add r0, r4, r0
	str r0, [fp, #-68]
	ldr r0, =4
	str r0, [fp, #-76]
	ldr r0, =7
	str r0, [fp, #-80]
	ldr r0, =2
	str r0, [fp, #-84]
	ldr r0, =5
	str r0, [fp, #-88]
	ldr r0, =8
	str r0, [fp, #-92]
	ldr r0, =0
	str r0, [fp, #-96]
	ldr r0, =6
	str r0, [fp, #-100]
	ldr r0, =3
	str r0, [fp, #-104]
	ldr r4, [fp, #-72]
	bl foo
	add r0, r4, r0
	str r0, [fp, #-72]
	ldr r0, [fp, #-36]
	str r0, [fp, #-4]
	ldr r0, [fp, #-40]
	str r0, [fp, #-8]
	ldr r0, [fp, #-44]
	str r0, [fp, #-12]
	ldr r0, [fp, #-48]
	str r0, [fp, #-16]
	ldr r0, [fp, #-52]
	str r0, [fp, #-20]
	ldr r0, [fp, #-56]
	str r0, [fp, #-24]
	ldr r0, [fp, #-60]
	str r0, [fp, #-28]
	ldr r0, [fp, #-64]
	str r0, [fp, #-32]
	ldr r1, [fp, #-76]
	ldr r0, [fp, #-80]
	add r1, r1, r0
	ldr r0, [fp, #-84]
	add r1, r1, r0
	ldr r0, [fp, #-88]
	add r1, r1, r0
	ldr r0, [fp, #-92]
	add r1, r1, r0
	ldr r0, [fp, #-96]
	add r1, r1, r0
	ldr r0, [fp, #-100]
	add r1, r1, r0
	ldr r0, [fp, #-104]
	add r0, r1, r0
	str r0, [fp, #-108]
	ldr r1, [fp, #-68]
	ldr r0, [fp, #-72]
	add r1, r1, r0
	ldr r0, [fp, #-108]
	add r0, r1, r0
	str r0, [fp, #-112]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #112
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
