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
	sub r0, r1, r0
	ldr r1, [fp, #-12]
	add r0, r0, r1
	ldr r1, [fp, #-16]
	sub r1, r0, r1
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
	sub r0, r1, r0
	ldr r1, [fp, #-72]
	sub r1, r0, r1
	ldr r0, [fp, #-76]
	sub r0, r1, r0
	ldr r1, [fp, #-80]
	sub r1, r0, r1
	ldr r0, [fp, #-84]
	sub r1, r1, r0
	ldr r0, [fp, #-88]
	sub r0, r1, r0
	ldr r1, [fp, #-92]
	add r1, r0, r1
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
	push {r3, r4, fp, lr}
	mov fp, sp
.L403:
	mov r0, #0
	mov r1, #1
	mov r2, #2
	mov r3, #3
	mov r4, #7
	push {r4}
	mov r4, #6
	push {r4}
	mov r4, #5
	push {r4}
	mov r4, #4
	push {r4}
	bl testParam8
	add sp, sp, #16
	mov r1, #1
	mov r2, #2
	mov r3, #3
	mov r4, #5
	push {r4}
	mov r4, #4
	push {r4}
	mov r4, #3
	push {r4}
	mov r4, #2
	push {r4}
	mov r4, #1
	push {r4}
	mov r4, #0
	push {r4}
	mov r4, #9
	push {r4}
	mov r4, #8
	push {r4}
	mov r4, #7
	push {r4}
	mov r4, #6
	push {r4}
	mov r4, #5
	push {r4}
	mov r4, #4
	push {r4}
	bl testParam16
	add sp, sp, #48
	mov r1, #1
	mov r2, #2
	mov r3, #3
	mov r4, #1
	push {r4}
	mov r4, #0
	push {r4}
	mov r4, #9
	push {r4}
	mov r4, #8
	push {r4}
	mov r4, #7
	push {r4}
	mov r4, #6
	push {r4}
	mov r4, #5
	push {r4}
	mov r4, #4
	push {r4}
	mov r4, #3
	push {r4}
	mov r4, #2
	push {r4}
	mov r4, #1
	push {r4}
	mov r4, #0
	push {r4}
	mov r4, #9
	push {r4}
	mov r4, #8
	push {r4}
	mov r4, #7
	push {r4}
	mov r4, #6
	push {r4}
	mov r4, #5
	push {r4}
	mov r4, #4
	push {r4}
	mov r4, #3
	push {r4}
	mov r4, #2
	push {r4}
	mov r4, #1
	push {r4}
	mov r4, #0
	push {r4}
	mov r4, #9
	push {r4}
	mov r4, #8
	push {r4}
	mov r4, #7
	push {r4}
	mov r4, #6
	push {r4}
	mov r4, #5
	push {r4}
	mov r4, #4
	push {r4}
	bl testParam32
	add sp, sp, #112
	bl putint
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
