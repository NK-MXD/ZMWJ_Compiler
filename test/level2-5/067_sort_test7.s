	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm buf, 800, 4
	.text
	.global merge_sort
	.type merge_sort , %function
merge_sort:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L95:
	str r0, [fp, #-4]
	str r1, [fp, #-8]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	ldr r4, [fp, #-8]
	cmp r5, r4
	movge r4, #1
	movlt r4, #0
	bge .L98
	b .L102
.L98:
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L99:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	str r5, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r0, r4
	mov r1, r5
	bl merge_sort
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	mov r0, r4
	mov r1, r5
	bl merge_sort
	ldr r4, [fp, #-4]
	str r4, [fp, #-16]
	ldr r4, [fp, #-12]
	str r4, [fp, #-20]
	ldr r4, [fp, #-4]
	str r4, [fp, #-24]
	b .L107
.L102:
	b .L99
.L107:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L140
	b .L113
.L108:
	mov r4, #0
	ldr r5, addr_buf0
	ldr r6, =400
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r4, #0
	ldr r6, addr_buf0
	ldr r7, =400
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-20]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	ldr r6, [r4]
	cmp r5, r6
	movlt r4, #1
	movge r4, #0
	blt .L117
	b .L126
.L109:
	b .L147
.L113:
	b .L109
.L117:
	mov r4, #0
	ldr r5, addr_buf0
	ldr r6, =400
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r4, #1
	ldr r6, addr_buf0
	ldr r7, =400
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-24]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L119
.L118:
	mov r4, #0
	ldr r5, addr_buf0
	ldr r6, =400
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-20]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r4, #1
	ldr r6, addr_buf0
	ldr r7, =400
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-24]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	b .L119
.L119:
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L140
	b .L143
.L126:
	b .L118
.L140:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L108
	b .L146
.L143:
	b .L109
.L146:
	b .L109
.L147:
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L148
	b .L152
.L148:
	mov r4, #0
	ldr r5, addr_buf0
	ldr r6, =400
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-16]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r4, #1
	ldr r6, addr_buf0
	ldr r7, =400
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-24]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L148
	b .L161
	b .F0
.LTORG
addr_buf0:
	.word buf
.F0:
.L149:
	b .L162
.L152:
	b .L149
.L161:
	b .L149
.L162:
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L163
	b .L167
.L163:
	mov r4, #0
	ldr r5, addr_buf1
	ldr r6, =400
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-20]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r4, #1
	ldr r6, addr_buf1
	ldr r7, =400
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-24]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	str r5, [fp, #-24]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L163
	b .L176
.L164:
	b .L177
.L167:
	b .L164
.L176:
	b .L164
.L177:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L178
	b .L182
.L178:
	mov r4, #1
	ldr r5, addr_buf1
	ldr r6, =400
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [r4]
	mov r4, #0
	ldr r6, addr_buf1
	ldr r7, =400
	mul r8, r4, r7
	add r4, r6, r8
	mov r6, r4
	ldr r4, [fp, #-4]
	mov r7, #4
	mul r8, r4, r7
	add r4, r6, r8
	str r5, [r4]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L178
	b .L191
.L179:
	add sp, sp, #24
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L182:
	b .L179
.L191:
	b .L179

	.global main
	.type main , %function
main:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L192:
	mov r4, #0
	ldr r5, addr_buf1
	ldr r6, =400
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	mov r4, #0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r0, r4
	bl getarray
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, #0
	mov r1, r4
	bl merge_sort
	ldr r4, [fp, #-4]
	mov r5, #0
	ldr r6, addr_buf1
	ldr r7, =400
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	mov r5, #0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr

addr_buf1:
	.word buf
	.ident "ZWJM"
