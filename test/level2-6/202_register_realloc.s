	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #160
.L341:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, =1
	str r0, [fp, #-16]
	ldr r0, =2
	str r0, [fp, #-20]
	ldr r0, =3
	str r0, [fp, #-24]
	ldr r0, =4
	str r0, [fp, #-28]
	ldr r1, [fp, #-16]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-32]
	ldr r1, [fp, #-20]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-36]
	ldr r1, [fp, #-24]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-40]
	ldr r1, [fp, #-28]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-44]
	ldr r1, [fp, #-32]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-48]
	ldr r1, [fp, #-36]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-52]
	ldr r1, [fp, #-40]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-56]
	ldr r1, [fp, #-44]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-60]
	ldr r1, [fp, #-48]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-64]
	ldr r1, [fp, #-52]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-68]
	ldr r1, [fp, #-56]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-72]
	ldr r1, [fp, #-60]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-76]
	ldr r1, [fp, #-64]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-80]
	ldr r1, [fp, #-68]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-84]
	ldr r1, [fp, #-72]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-88]
	ldr r1, [fp, #-76]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-92]
	ldr r1, [fp, #-80]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-96]
	ldr r1, [fp, #-84]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-100]
	ldr r1, [fp, #-88]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-104]
	ldr r1, [fp, #-92]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-108]
	ldr r1, [fp, #-96]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-112]
	ldr r1, [fp, #-100]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-116]
	ldr r1, [fp, #-104]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-120]
	ldr r1, [fp, #-108]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-124]
	ldr r1, [fp, #-112]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-128]
	ldr r1, [fp, #-116]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-132]
	ldr r1, [fp, #-120]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-136]
	ldr r1, [fp, #-124]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-140]
	ldr r1, [fp, #-128]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-144]
	ldr r1, [fp, #-132]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-148]
	ldr r1, [fp, #-136]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-152]
	ldr r1, [fp, #-140]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-156]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	add r0, r0, #10
	str r0, [fp, #-12]
	ldr r1, [fp, #-128]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-144]
	ldr r1, [fp, #-132]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-148]
	ldr r1, [fp, #-136]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-152]
	ldr r1, [fp, #-140]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-156]
	ldr r1, [fp, #-112]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-128]
	ldr r1, [fp, #-116]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-132]
	ldr r1, [fp, #-120]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-136]
	ldr r1, [fp, #-124]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-140]
	ldr r1, [fp, #-96]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-112]
	ldr r1, [fp, #-100]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-116]
	ldr r1, [fp, #-104]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-120]
	ldr r1, [fp, #-108]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-124]
	ldr r1, [fp, #-80]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-96]
	ldr r1, [fp, #-84]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-100]
	ldr r1, [fp, #-88]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-104]
	ldr r1, [fp, #-92]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-108]
	ldr r1, [fp, #-64]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-80]
	ldr r1, [fp, #-68]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-84]
	ldr r1, [fp, #-72]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-88]
	ldr r1, [fp, #-76]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-92]
	ldr r1, [fp, #-48]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-64]
	ldr r1, [fp, #-52]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-68]
	ldr r1, [fp, #-56]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-72]
	ldr r1, [fp, #-60]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-76]
	ldr r1, [fp, #-32]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-48]
	ldr r1, [fp, #-36]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-52]
	ldr r1, [fp, #-40]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-56]
	ldr r1, [fp, #-44]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-60]
	ldr r1, [fp, #-16]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-32]
	ldr r1, [fp, #-20]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-36]
	ldr r1, [fp, #-24]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-40]
	ldr r1, [fp, #-28]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-44]
	ldr r1, [fp, #-144]
	ldr r0, =1
	add r0, r0, r1
	str r0, [fp, #-16]
	ldr r1, [fp, #-148]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-20]
	ldr r1, [fp, #-152]
	ldr r0, =3
	add r0, r0, r1
	str r0, [fp, #-24]
	ldr r1, [fp, #-156]
	ldr r0, =4
	add r0, r0, r1
	str r0, [fp, #-28]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	sub r1, r1, r0
	ldr r0, [fp, #-36]
	sub r1, r1, r0
	ldr r0, [fp, #-40]
	sub r1, r1, r0
	ldr r0, [fp, #-44]
	sub r1, r1, r0
	ldr r0, [fp, #-48]
	add r1, r1, r0
	ldr r0, [fp, #-52]
	add r1, r1, r0
	ldr r0, [fp, #-56]
	add r1, r1, r0
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, [fp, #-64]
	sub r1, r1, r0
	ldr r0, [fp, #-68]
	sub r1, r1, r0
	ldr r0, [fp, #-72]
	sub r1, r1, r0
	ldr r0, [fp, #-76]
	sub r1, r1, r0
	ldr r0, [fp, #-80]
	add r1, r1, r0
	ldr r0, [fp, #-84]
	add r1, r1, r0
	ldr r0, [fp, #-88]
	add r1, r1, r0
	ldr r0, [fp, #-92]
	add r1, r1, r0
	ldr r0, [fp, #-96]
	sub r1, r1, r0
	ldr r0, [fp, #-100]
	sub r1, r1, r0
	ldr r0, [fp, #-104]
	sub r1, r1, r0
	ldr r0, [fp, #-108]
	sub r1, r1, r0
	ldr r0, [fp, #-112]
	add r1, r1, r0
	ldr r0, [fp, #-116]
	add r1, r1, r0
	ldr r0, [fp, #-120]
	add r1, r1, r0
	ldr r0, [fp, #-124]
	add r1, r1, r0
	ldr r0, [fp, #-128]
	sub r1, r1, r0
	ldr r0, [fp, #-132]
	sub r1, r1, r0
	ldr r0, [fp, #-136]
	sub r1, r1, r0
	ldr r0, [fp, #-140]
	sub r1, r1, r0
	ldr r0, [fp, #-144]
	add r1, r1, r0
	ldr r0, [fp, #-148]
	add r1, r1, r0
	ldr r0, [fp, #-152]
	add r1, r1, r0
	ldr r0, [fp, #-156]
	add r0, r1, r0
	add sp, sp, #160
	pop {r3, r4, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L381:
	ldr r0, =1
	str r0, [fp, #-4]
	mov r1, r0
	mov r0, #18
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	bl func
	add sp, sp, #8
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
