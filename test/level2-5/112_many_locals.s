	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global foo
	.type foo , %function
foo:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #136
.L158:
	mov r4, #0
	mov r5, #-64
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	ldr r4, =3
	str r4, [fp, #-68]
	ldr r4, =7
	str r4, [fp, #-72]
	ldr r4, =5
	str r4, [fp, #-76]
	ldr r4, =6
	str r4, [fp, #-80]
	ldr r4, =1
	str r4, [fp, #-84]
	ldr r4, =0
	str r4, [fp, #-88]
	ldr r4, =3
	str r4, [fp, #-92]
	ldr r4, =5
	str r4, [fp, #-96]
	ldr r4, =4
	str r4, [fp, #-100]
	ldr r4, =2
	str r4, [fp, #-104]
	ldr r4, =7
	str r4, [fp, #-108]
	ldr r4, =9
	str r4, [fp, #-112]
	ldr r4, =8
	str r4, [fp, #-116]
	ldr r4, =1
	str r4, [fp, #-120]
	ldr r4, =4
	str r4, [fp, #-124]
	ldr r4, =6
	str r4, [fp, #-128]
	ldr r4, [fp, #-68]
	ldr r5, [fp, #-72]
	add r6, r4, r5
	ldr r4, [fp, #-76]
	add r5, r6, r4
	ldr r4, [fp, #-80]
	add r6, r5, r4
	ldr r4, [fp, #-84]
	add r5, r6, r4
	ldr r4, [fp, #-88]
	add r6, r5, r4
	ldr r4, [fp, #-92]
	add r5, r6, r4
	ldr r4, [fp, #-96]
	add r6, r5, r4
	str r6, [fp, #-132]
	ldr r4, [fp, #-100]
	ldr r5, [fp, #-104]
	add r6, r4, r5
	ldr r4, [fp, #-108]
	add r5, r6, r4
	ldr r4, [fp, #-112]
	add r6, r5, r4
	ldr r4, [fp, #-116]
	add r5, r6, r4
	ldr r4, [fp, #-120]
	add r6, r5, r4
	ldr r4, [fp, #-124]
	add r5, r6, r4
	ldr r4, [fp, #-128]
	add r6, r5, r4
	str r6, [fp, #-136]
	ldr r4, [fp, #-132]
	ldr r5, [fp, #-136]
	add r6, r4, r5
	ldr r4, [fp, #-68]
	mov r5, #-64
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r5
	add r5, r4, r8
	ldr r4, [r5]
	add r5, r6, r4
	mov r0, r5
	add sp, sp, #136
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L195:
	ldr r4, =3
	str r4, [fp, #-4]
	ldr r4, =7
	str r4, [fp, #-8]
	ldr r4, =5
	str r4, [fp, #-12]
	ldr r4, =6
	str r4, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-24]
	ldr r4, =3
	str r4, [fp, #-28]
	ldr r4, =5
	str r4, [fp, #-32]
	ldr r4, =4
	str r4, [fp, #-36]
	ldr r4, =2
	str r4, [fp, #-40]
	ldr r4, =7
	str r4, [fp, #-44]
	ldr r4, =9
	str r4, [fp, #-48]
	ldr r4, =8
	str r4, [fp, #-52]
	ldr r4, =1
	str r4, [fp, #-56]
	ldr r4, =4
	str r4, [fp, #-60]
	ldr r4, =6
	str r4, [fp, #-64]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, [fp, #-12]
	add r5, r6, r4
	ldr r4, [fp, #-16]
	add r6, r5, r4
	ldr r4, [fp, #-20]
	add r5, r6, r4
	ldr r4, [fp, #-24]
	add r6, r5, r4
	ldr r4, [fp, #-28]
	add r5, r6, r4
	ldr r4, [fp, #-32]
	add r6, r5, r4
	str r6, [fp, #-68]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-40]
	add r6, r4, r5
	ldr r4, [fp, #-44]
	add r5, r6, r4
	ldr r4, [fp, #-48]
	add r6, r5, r4
	ldr r4, [fp, #-52]
	add r5, r6, r4
	ldr r4, [fp, #-56]
	add r6, r5, r4
	ldr r4, [fp, #-60]
	add r5, r6, r4
	ldr r4, [fp, #-64]
	add r6, r5, r4
	str r6, [fp, #-72]
	ldr r4, [fp, #-68]
	bl foo
	mov r5, r0
	add r6, r4, r5
	str r6, [fp, #-68]
	ldr r4, =4
	str r4, [fp, #-76]
	ldr r4, =7
	str r4, [fp, #-80]
	ldr r4, =2
	str r4, [fp, #-84]
	ldr r4, =5
	str r4, [fp, #-88]
	ldr r4, =8
	str r4, [fp, #-92]
	ldr r4, =0
	str r4, [fp, #-96]
	ldr r4, =6
	str r4, [fp, #-100]
	ldr r4, =3
	str r4, [fp, #-104]
	ldr r4, [fp, #-72]
	bl foo
	mov r5, r0
	add r6, r4, r5
	str r6, [fp, #-72]
	ldr r4, [fp, #-36]
	str r4, [fp, #-4]
	ldr r4, [fp, #-40]
	str r4, [fp, #-8]
	ldr r4, [fp, #-44]
	str r4, [fp, #-12]
	ldr r4, [fp, #-48]
	str r4, [fp, #-16]
	ldr r4, [fp, #-52]
	str r4, [fp, #-20]
	ldr r4, [fp, #-56]
	str r4, [fp, #-24]
	ldr r4, [fp, #-60]
	str r4, [fp, #-28]
	ldr r4, [fp, #-64]
	str r4, [fp, #-32]
	ldr r4, [fp, #-76]
	ldr r5, [fp, #-80]
	add r6, r4, r5
	ldr r4, [fp, #-84]
	add r5, r6, r4
	ldr r4, [fp, #-88]
	add r6, r5, r4
	ldr r4, [fp, #-92]
	add r5, r6, r4
	ldr r4, [fp, #-96]
	add r6, r5, r4
	ldr r4, [fp, #-100]
	add r5, r6, r4
	ldr r4, [fp, #-104]
	add r6, r5, r4
	str r6, [fp, #-108]
	ldr r4, [fp, #-68]
	ldr r5, [fp, #-72]
	add r6, r4, r5
	ldr r4, [fp, #-108]
	add r5, r6, r4
	str r5, [fp, #-112]
	ldr r4, [fp, #-112]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #112
	pop {r3, r4, r5, r6, fp, lr}
	bx lr

	.ident "ZWJM"
