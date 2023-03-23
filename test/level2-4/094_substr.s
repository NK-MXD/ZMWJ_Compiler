	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global MAX
	.type MAX , %function
MAX:
	push {r3, r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L111:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L114
	b .L119
.L114:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L115:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L120
	b .L125
.L119:
	b .L115
.L120:
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L121:
	ldr r4, [fp, #-8]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, fp, lr}
	bx lr
.L125:
	b .L121

	.global max_sum_nonadjacent
	.type max_sum_nonadjacent , %function
max_sum_nonadjacent:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #80
.L126:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	add r0, fp, #-72
	mov r1, #0
	mov r2, #64
	bl memset
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	mov r5, #0
	mov r6, #-72
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-4]
	mov r5, #0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	ldr r5, [r6]
	mov r0, r4
	mov r1, r5
	bl MAX
	mov r4, r0
	mov r5, #1
	mov r6, #-72
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, =2
	str r4, [fp, #-76]
	b .L138
.L138:
	ldr r4, [fp, #-76]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L139
	b .L143
.L139:
	ldr r4, [fp, #-76]
	sub r5, r4, #2
	mov r4, #-72
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	ldr r6, [fp, #-76]
	mov r7, #4
	mul r8, r6, r7
	add r6, r4, r8
	ldr r4, [r6]
	add r6, r5, r4
	ldr r4, [fp, #-76]
	sub r5, r4, #1
	mov r4, #-72
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r4
	add r4, r5, r8
	ldr r5, [r4]
	mov r0, r6
	mov r1, r5
	bl MAX
	mov r4, r0
	ldr r5, [fp, #-76]
	mov r6, #-72
	mov r7, #4
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-76]
	add r5, r4, #1
	str r5, [fp, #-76]
	ldr r4, [fp, #-76]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L139
	b .L153
.L140:
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	mov r4, #-72
	mov r6, #4
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #80
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L143:
	b .L140
.L153:
	b .L140

	.global longest_common_subseq
	.type longest_common_subseq , %function
longest_common_subseq:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	ldr r4, =1048
	sub sp, sp, r4
.L155:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	str r2, [fp, #-12]
	str r3, [fp, #-16]
	ldr r4, =-1040
	add r0, fp, r4
	mov r1, #0
	ldr r4, =1024
	mov r2, r4
	bl memset
	ldr r4, =1
	ldr r5, =-1044
	str r4, [fp, r5]
	b .L164
.L164:
	ldr r5, =-1044
	ldr r4, [fp, r5]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L165
	b .L169
.L165:
	ldr r4, =1
	ldr r5, =-1048
	str r4, [fp, r5]
	b .L170
.L166:
	ldr r4, [fp, #-8]
	ldr r5, =-1040
	mov r6, #64
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r0, r5
	ldr r1, =1048
	add sp, sp, r1
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L169:
	b .L166
.L170:
	ldr r5, =-1048
	ldr r4, [fp, r5]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L171
	b .L175
.L171:
	ldr r4, [fp, #-4]
	ldr r6, =-1044
	ldr r5, [fp, r6]
	sub r6, r5, #1
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	ldr r5, [fp, #-12]
	ldr r7, =-1048
	ldr r6, [fp, r7]
	sub r7, r6, #1
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	ldr r5, [r6]
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L176
	b .L185
.L172:
	ldr r5, =-1044
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-1044
	str r5, [fp, r4]
	ldr r4, =-1044
	ldr r5, [fp, r4]
	ldr r4, [fp, #-8]
	cmp r5, r4
	movle r4, #1
	movgt r4, #0
	ble .L165
	b .L205
.L175:
	b .L172
.L176:
	ldr r5, =-1044
	ldr r4, [fp, r5]
	sub r5, r4, #1
	ldr r4, =-1040
	mov r6, #64
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r6, =-1048
	ldr r5, [fp, r6]
	sub r6, r5, #1
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	add r5, r4, #1
	ldr r6, =-1044
	ldr r4, [fp, r6]
	ldr r6, =-1040
	mov r7, #64
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	ldr r7, =-1048
	ldr r4, [fp, r7]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	b .L178
.L177:
	ldr r5, =-1044
	ldr r4, [fp, r5]
	sub r5, r4, #1
	ldr r4, =-1040
	mov r6, #64
	mul r7, r5, r6
	add r5, fp, r4
	add r4, r5, r7
	ldr r6, =-1048
	ldr r5, [fp, r6]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	ldr r6, =-1044
	ldr r5, [fp, r6]
	ldr r6, =-1040
	mov r7, #64
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r7, =-1048
	ldr r5, [fp, r7]
	sub r7, r5, #1
	mov r5, #4
	mul r8, r7, r5
	add r5, r6, r8
	ldr r6, [r5]
	mov r0, r4
	mov r1, r6
	bl MAX
	mov r4, r0
	ldr r6, =-1044
	ldr r5, [fp, r6]
	ldr r6, =-1040
	mov r7, #64
	mul r8, r5, r7
	add r5, fp, r6
	add r6, r5, r8
	ldr r7, =-1048
	ldr r5, [fp, r7]
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	str r4, [r5]
	b .L178
.L178:
	ldr r5, =-1048
	ldr r4, [fp, r5]
	add r5, r4, #1
	ldr r4, =-1048
	str r5, [fp, r4]
	ldr r5, =-1048
	ldr r4, [fp, r5]
	ldr r5, [fp, #-16]
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L171
	b .L199
	b .F0
.LTORG
.F0:
.L185:
	b .L177
.L199:
	b .L172
.L205:
	b .L166

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L208:
	mov r4, #0
	mov r5, #-60
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =8
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =7
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =2
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =7
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =9
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =7
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	mov r4, #0
	mov r5, #-112
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	ldr r4, =3
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =9
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =7
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =2
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =4
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =3
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =6
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =8
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =0
	str r4, [r5]
	add r4, r5, #4
	ldr r5, =1
	str r5, [r4]
	add r5, r4, #4
	ldr r4, =5
	str r4, [r5]
	mov r4, #0
	mov r5, #-60
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r0, r5
	mov r1, #15
	bl max_sum_nonadjacent
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r4, #0
	mov r5, #-60
	mov r6, #4
	mul r7, r4, r6
	add r4, fp, r5
	add r5, r4, r7
	mov r4, #0
	mov r6, #-112
	mov r7, #4
	mul r8, r4, r7
	add r4, fp, r6
	add r6, r4, r8
	mov r0, r5
	mov r1, #15
	mov r2, r6
	mov r3, #13
	bl longest_common_subseq
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #120
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.ident "ZWJM"
