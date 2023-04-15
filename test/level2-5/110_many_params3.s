	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global testParam8
	.type testParam8 , %function
testParam8:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L344:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	sub r1, r1, r0
	ldr r0, [fp, #-20]
	sub r1, r1, r0
	ldr r0, [fp, #-24]
	sub r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r0, r1, r0
	add sp, sp, #32
	pop {r3, r4, fp, lr}
	bx lr

	.global testParam16
	.type testParam16 , %function
testParam16:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L353:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r3, [fp, #32]
	str r3, [fp, #-36]
	ldr r3, [fp, #36]
	str r3, [fp, #-40]
	ldr r3, [fp, #40]
	str r3, [fp, #-44]
	ldr r3, [fp, #44]
	str r3, [fp, #-48]
	ldr r3, [fp, #48]
	str r3, [fp, #-52]
	ldr r3, [fp, #52]
	str r3, [fp, #-56]
	ldr r3, [fp, #56]
	str r3, [fp, #-60]
	ldr r3, [fp, #60]
	str r3, [fp, #-64]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	sub r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	sub r1, r1, r0
	ldr r0, [fp, #-40]
	add r1, r1, r0
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
	add r0, r1, r0
	add sp, sp, #64
	pop {r3, r4, fp, lr}
	bx lr

	.global testParam32
	.type testParam32 , %function
testParam32:
	push {r3, r4, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L370:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r3, [fp, #16]
	str r3, [fp, #-20]
	ldr r3, [fp, #20]
	str r3, [fp, #-24]
	ldr r3, [fp, #24]
	str r3, [fp, #-28]
	ldr r3, [fp, #28]
	str r3, [fp, #-32]
	ldr r3, [fp, #32]
	str r3, [fp, #-36]
	ldr r3, [fp, #36]
	str r3, [fp, #-40]
	ldr r3, [fp, #40]
	str r3, [fp, #-44]
	ldr r3, [fp, #44]
	str r3, [fp, #-48]
	ldr r3, [fp, #48]
	str r3, [fp, #-52]
	ldr r3, [fp, #52]
	str r3, [fp, #-56]
	ldr r3, [fp, #56]
	str r3, [fp, #-60]
	ldr r3, [fp, #60]
	str r3, [fp, #-64]
	ldr r3, [fp, #64]
	str r3, [fp, #-68]
	ldr r3, [fp, #68]
	str r3, [fp, #-72]
	ldr r3, [fp, #72]
	str r3, [fp, #-76]
	ldr r3, [fp, #76]
	str r3, [fp, #-80]
	ldr r3, [fp, #80]
	str r3, [fp, #-84]
	ldr r3, [fp, #84]
	str r3, [fp, #-88]
	ldr r3, [fp, #88]
	str r3, [fp, #-92]
	ldr r3, [fp, #92]
	str r3, [fp, #-96]
	ldr r3, [fp, #96]
	str r3, [fp, #-100]
	ldr r3, [fp, #100]
	str r3, [fp, #-104]
	ldr r3, [fp, #104]
	str r3, [fp, #-108]
	ldr r3, [fp, #108]
	str r3, [fp, #-112]
	ldr r3, [fp, #112]
	str r3, [fp, #-116]
	ldr r3, [fp, #116]
	str r3, [fp, #-120]
	ldr r3, [fp, #120]
	str r3, [fp, #-124]
	ldr r3, [fp, #124]
	str r3, [fp, #-128]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	mla r1, r1, r0, r2
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	add r1, r1, r0
	ldr r0, [fp, #-40]
	add r1, r1, r0
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-48]
	add r1, r1, r0
	ldr r0, [fp, #-52]
	sub r1, r1, r0
	ldr r0, [fp, #-56]
	sub r1, r1, r0
	ldr r0, [fp, #-60]
	sub r1, r1, r0
	ldr r0, [fp, #-64]
	sub r1, r1, r0
	ldr r0, [fp, #-68]
	sub r1, r1, r0
	ldr r0, [fp, #-72]
	sub r1, r1, r0
	ldr r0, [fp, #-76]
	sub r1, r1, r0
	ldr r0, [fp, #-80]
	sub r1, r1, r0
	ldr r0, [fp, #-84]
	sub r1, r1, r0
	ldr r0, [fp, #-88]
	sub r1, r1, r0
	ldr r0, [fp, #-92]
	add r1, r1, r0
	ldr r0, [fp, #-96]
	add r1, r1, r0
	ldr r0, [fp, #-100]
	add r1, r1, r0
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
	add sp, sp, #128
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #232
.L403:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =1
	str r0, [fp, #-8]
	ldr r0, =2
	str r0, [fp, #-12]
	ldr r0, =3
	str r0, [fp, #-16]
	ldr r0, =4
	str r0, [fp, #-20]
	ldr r0, =5
	str r0, [fp, #-24]
	ldr r0, =6
	str r0, [fp, #-28]
	ldr r0, =7
	str r0, [fp, #-32]
	ldr r0, =8
	str r0, [fp, #-36]
	ldr r0, =9
	str r0, [fp, #-40]
	ldr r0, =0
	str r0, [fp, #-44]
	ldr r0, =1
	str r0, [fp, #-48]
	ldr r0, =2
	str r0, [fp, #-52]
	ldr r0, =3
	str r0, [fp, #-56]
	ldr r0, =4
	str r0, [fp, #-60]
	ldr r0, =5
	str r0, [fp, #-64]
	ldr r0, =6
	str r0, [fp, #-68]
	ldr r0, =7
	str r0, [fp, #-72]
	ldr r0, =8
	str r0, [fp, #-76]
	ldr r0, =9
	str r0, [fp, #-80]
	ldr r0, =0
	str r0, [fp, #-84]
	ldr r0, =1
	str r0, [fp, #-88]
	ldr r0, =2
	str r0, [fp, #-92]
	ldr r0, =3
	str r0, [fp, #-96]
	ldr r0, =4
	str r0, [fp, #-100]
	ldr r0, =5
	str r0, [fp, #-104]
	ldr r0, =6
	str r0, [fp, #-108]
	ldr r0, =7
	str r0, [fp, #-112]
	ldr r0, =8
	str r0, [fp, #-116]
	ldr r0, =9
	str r0, [fp, #-120]
	ldr r0, =0
	str r0, [fp, #-124]
	ldr r0, =1
	str r0, [fp, #-128]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-12]
	ldr r3, [fp, #-16]
	ldr r7, [fp, #-20]
	ldr r6, [fp, #-24]
	ldr r5, [fp, #-28]
	ldr r4, [fp, #-32]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	bl testParam8
	add sp, sp, #16
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-12]
	ldr r3, [fp, #-16]
	ldr r4, [fp, #-20]
	str r4, [fp, #-132]
	ldr r4, [fp, #-24]
	str r4, [fp, #-136]
	ldr r4, [fp, #-28]
	str r4, [fp, #-140]
	ldr r4, [fp, #-32]
	str r4, [fp, #-144]
	ldr r4, [fp, #-36]
	str r4, [fp, #-148]
	ldr r10, [fp, #-40]
	ldr r9, [fp, #-44]
	ldr r8, [fp, #-48]
	ldr r7, [fp, #-52]
	ldr r6, [fp, #-56]
	ldr r5, [fp, #-60]
	ldr r4, [fp, #-64]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, [fp, #-148]
	push {r4}
	ldr r4, [fp, #-144]
	push {r4}
	ldr r4, [fp, #-140]
	push {r4}
	ldr r4, [fp, #-136]
	push {r4}
	ldr r4, [fp, #-132]
	push {r4}
	bl testParam16
	add sp, sp, #48
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-12]
	ldr r3, [fp, #-16]
	ldr r4, [fp, #-20]
	str r4, [fp, #-152]
	ldr r4, [fp, #-24]
	str r4, [fp, #-156]
	ldr r4, [fp, #-28]
	str r4, [fp, #-160]
	ldr r4, [fp, #-32]
	str r4, [fp, #-164]
	ldr r4, [fp, #-36]
	str r4, [fp, #-168]
	ldr r4, [fp, #-40]
	str r4, [fp, #-172]
	ldr r4, [fp, #-44]
	str r4, [fp, #-176]
	ldr r4, [fp, #-48]
	str r4, [fp, #-180]
	ldr r4, [fp, #-52]
	str r4, [fp, #-184]
	ldr r4, [fp, #-56]
	str r4, [fp, #-188]
	ldr r4, [fp, #-60]
	str r4, [fp, #-192]
	ldr r4, [fp, #-64]
	str r4, [fp, #-196]
	ldr r4, [fp, #-68]
	str r4, [fp, #-200]
	ldr r4, [fp, #-72]
	str r4, [fp, #-204]
	ldr r4, [fp, #-76]
	str r4, [fp, #-208]
	ldr r4, [fp, #-80]
	str r4, [fp, #-212]
	ldr r4, [fp, #-84]
	str r4, [fp, #-216]
	ldr r4, [fp, #-88]
	str r4, [fp, #-220]
	ldr r4, [fp, #-92]
	str r4, [fp, #-224]
	ldr r4, [fp, #-96]
	str r4, [fp, #-228]
	ldr r4, [fp, #-100]
	str r4, [fp, #-232]
	ldr r10, [fp, #-104]
	ldr r9, [fp, #-108]
	ldr r8, [fp, #-112]
	ldr r7, [fp, #-116]
	ldr r6, [fp, #-120]
	ldr r5, [fp, #-124]
	ldr r4, [fp, #-128]
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	ldr r4, [fp, #-232]
	push {r4}
	ldr r4, [fp, #-228]
	push {r4}
	ldr r4, [fp, #-224]
	push {r4}
	ldr r4, [fp, #-220]
	push {r4}
	ldr r4, [fp, #-216]
	push {r4}
	ldr r4, [fp, #-212]
	push {r4}
	ldr r4, [fp, #-208]
	push {r4}
	ldr r4, [fp, #-204]
	push {r4}
	ldr r4, [fp, #-200]
	push {r4}
	ldr r4, [fp, #-196]
	push {r4}
	ldr r4, [fp, #-192]
	push {r4}
	ldr r4, [fp, #-188]
	push {r4}
	ldr r4, [fp, #-184]
	push {r4}
	ldr r4, [fp, #-180]
	push {r4}
	ldr r4, [fp, #-176]
	push {r4}
	ldr r4, [fp, #-172]
	push {r4}
	ldr r4, [fp, #-168]
	push {r4}
	ldr r4, [fp, #-164]
	push {r4}
	ldr r4, [fp, #-160]
	push {r4}
	ldr r4, [fp, #-156]
	push {r4}
	ldr r4, [fp, #-152]
	push {r4}
	bl testParam32
	add sp, sp, #112
	str r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #0
	add sp, sp, #232
	pop {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
	b .F0
.LTORG
.F0:

	.ident "ZWJM"
