	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L341:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	ldr r0, =1
	add r2, r0, #1
	ldr r0, =2
	add r1, r0, #2
	ldr r0, =3
	add r0, r0, #3
	str r0, [fp, #-76]
	ldr r0, =4
	add r0, r0, #4
	str r0, [fp, #-68]
	ldr r0, =1
	add r0, r0, r2
	str r0, [fp, #-72]
	ldr r0, =2
	add r0, r0, r1
	str r0, [fp, #-64]
	ldr r3, =3
	ldr r0, [fp, #-76]
	add r0, r3, r0
	str r0, [fp, #-60]
	ldr r3, =4
	ldr r0, [fp, #-68]
	add r0, r3, r0
	str r0, [fp, #-56]
	ldr r3, =1
	ldr r0, [fp, #-72]
	add r0, r3, r0
	str r0, [fp, #-48]
	ldr r3, =2
	ldr r0, [fp, #-64]
	add r0, r3, r0
	str r0, [fp, #-52]
	ldr r3, =3
	ldr r0, [fp, #-60]
	add r0, r3, r0
	str r0, [fp, #-44]
	ldr r3, =4
	ldr r0, [fp, #-56]
	add r0, r3, r0
	str r0, [fp, #-36]
	ldr r3, =1
	ldr r0, [fp, #-48]
	add r0, r3, r0
	str r0, [fp, #-40]
	ldr r3, =2
	ldr r0, [fp, #-52]
	add r0, r3, r0
	str r0, [fp, #-32]
	ldr r3, =3
	ldr r0, [fp, #-44]
	add r0, r3, r0
	str r0, [fp, #-28]
	ldr r3, =4
	ldr r0, [fp, #-36]
	add r0, r3, r0
	str r0, [fp, #-24]
	ldr r3, =1
	ldr r0, [fp, #-40]
	add r0, r3, r0
	str r0, [fp, #-16]
	ldr r3, =2
	ldr r0, [fp, #-32]
	add r0, r3, r0
	str r0, [fp, #-20]
	ldr r3, =3
	ldr r0, [fp, #-28]
	add r0, r3, r0
	str r0, [fp, #-12]
	ldr r3, =4
	ldr r0, [fp, #-24]
	add r0, r3, r0
	str r0, [fp, #-80]
	ldr r3, =1
	ldr r0, [fp, #-16]
	add r0, r3, r0
	str r0, [fp, #-84]
	ldr r3, =2
	ldr r0, [fp, #-20]
	add r0, r3, r0
	str r0, [fp, #-88]
	ldr r3, =3
	ldr r0, [fp, #-12]
	add r0, r3, r0
	str r0, [fp, #-92]
	ldr r3, =4
	ldr r0, [fp, #-80]
	add r0, r3, r0
	str r0, [fp, #-96]
	ldr r3, =1
	ldr r0, [fp, #-84]
	add r0, r3, r0
	str r0, [fp, #-100]
	ldr r3, =2
	ldr r0, [fp, #-88]
	add r0, r3, r0
	str r0, [fp, #-104]
	ldr r3, =3
	ldr r0, [fp, #-92]
	add r0, r3, r0
	str r0, [fp, #-108]
	ldr r3, =4
	ldr r0, [fp, #-96]
	add r0, r3, r0
	str r0, [fp, #-112]
	ldr r3, =1
	ldr r0, [fp, #-100]
	add r0, r3, r0
	str r0, [fp, #-116]
	ldr r3, =2
	ldr r0, [fp, #-104]
	add r0, r3, r0
	ldr r4, =3
	ldr r3, [fp, #-108]
	add r3, r4, r3
	ldr r5, =4
	ldr r4, [fp, #-112]
	add r4, r5, r4
	ldr r6, [fp, #-4]
	ldr r5, [fp, #-8]
	sub r5, r6, r5
	add r6, r5, #10
	ldr r7, =1
	ldr r5, [fp, #-116]
	add r5, r7, r5
	ldr r7, =2
	add r7, r7, r0
	ldr r8, =3
	add r8, r8, r3
	ldr r9, =4
	add r9, r9, r4
	add r5, r6, r5
	add r5, r5, r7
	add r5, r5, r8
	add r5, r5, r9
	sub r2, r5, r2
	sub r2, r2, r1
	ldr r1, [fp, #-76]
	sub r2, r2, r1
	ldr r1, [fp, #-68]
	sub r2, r2, r1
	ldr r1, [fp, #-72]
	add r2, r2, r1
	ldr r1, [fp, #-64]
	add r2, r2, r1
	ldr r1, [fp, #-60]
	add r2, r2, r1
	ldr r1, [fp, #-56]
	add r2, r2, r1
	ldr r1, [fp, #-48]
	sub r2, r2, r1
	ldr r1, [fp, #-52]
	sub r2, r2, r1
	ldr r1, [fp, #-44]
	sub r2, r2, r1
	ldr r1, [fp, #-36]
	sub r2, r2, r1
	ldr r1, [fp, #-40]
	add r2, r2, r1
	ldr r1, [fp, #-32]
	add r2, r2, r1
	ldr r1, [fp, #-28]
	add r2, r2, r1
	ldr r1, [fp, #-24]
	add r2, r2, r1
	ldr r1, [fp, #-16]
	sub r2, r2, r1
	ldr r1, [fp, #-20]
	sub r2, r2, r1
	ldr r1, [fp, #-12]
	sub r2, r2, r1
	ldr r1, [fp, #-80]
	sub r2, r2, r1
	ldr r1, [fp, #-84]
	add r2, r2, r1
	ldr r1, [fp, #-88]
	add r2, r2, r1
	ldr r1, [fp, #-92]
	add r2, r2, r1
	ldr r1, [fp, #-96]
	add r2, r2, r1
	ldr r1, [fp, #-100]
	sub r2, r2, r1
	ldr r1, [fp, #-104]
	sub r2, r2, r1
	ldr r1, [fp, #-108]
	sub r2, r2, r1
	ldr r1, [fp, #-112]
	sub r2, r2, r1
	ldr r1, [fp, #-116]
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r3
	add r0, r0, r4
	add sp, sp, #120
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L381:
	mov r1, #18
	ldr r0, =1
	add r1, r0, r1
	mov r0, #1
	bl func
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
