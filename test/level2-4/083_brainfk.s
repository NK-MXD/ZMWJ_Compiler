	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global ptr
	.align 4
	.size ptr, 4
ptr:
	.word 0
	.section .rodata
	.global TAPE_LEN
	.align 4
	.size TAPE_LEN, 4
TAPE_LEN:
	.word 65536
	.global BUFFER_LEN
	.align 4
	.size BUFFER_LEN, 4
BUFFER_LEN:
	.word 32768
	.comm tape, 262144, 4
	.comm program, 131072, 4
	.text
	.global read_program
	.type read_program , %function
read_program:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L94:
	ldr r4, =0
	str r4, [fp, #-4]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	b .L97
.L97:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L98
	b .L102
.L98:
	bl getch
	mov r4, r0
	ldr r5, [fp, #-4]
	ldr r6, addr_program0
	mov r7, #4
	mul r8, r5, r7
	add r5, r6, r8
	mov r6, r5
	str r4, [r6]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L98
	b .L108
.L99:
	ldr r4, [fp, #-4]
	ldr r5, addr_program0
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	ldr r4, =0
	str r4, [r5]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L102:
	b .L99
.L108:
	b .L99

	.global interpret
	.type interpret , %function
interpret:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L109:
	str r0, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-16]
	b .L114
.L114:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L115
	b .L120
.L115:
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #62
	moveq r4, #1
	movne r4, #0
	beq .L124
	b .L129
.L116:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L120:
	b .L116
.L124:
	ldr r4, addr_ptr0
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, addr_ptr0
	str r4, [r5]
	b .L126
.L125:
	ldr r4, [fp, #-8]
	cmp r4, #60
	moveq r4, #1
	movne r4, #0
	beq .L130
	b .L135
.L126:
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L115
	b .L203
.L129:
	b .L125
.L130:
	ldr r4, addr_ptr0
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, addr_ptr0
	str r4, [r5]
	b .L132
.L131:
	ldr r4, [fp, #-8]
	cmp r4, #43
	moveq r4, #1
	movne r4, #0
	beq .L136
	b .L141
.L132:
	b .L126
.L135:
	b .L131
.L136:
	ldr r4, addr_ptr0
	ldr r5, [r4]
	ldr r4, addr_tape0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, addr_ptr0
	ldr r6, [r5]
	ldr r5, addr_tape0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	mov r5, r6
	str r4, [r5]
	b .L138
.L137:
	ldr r4, [fp, #-8]
	cmp r4, #45
	moveq r4, #1
	movne r4, #0
	beq .L143
	b .L148
.L138:
	b .L132
.L141:
	b .L137
.L143:
	ldr r4, addr_ptr0
	ldr r5, [r4]
	ldr r4, addr_tape0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, addr_ptr0
	ldr r6, [r5]
	ldr r5, addr_tape0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	mov r5, r6
	str r4, [r5]
	b .L145
.L144:
	ldr r4, [fp, #-8]
	cmp r4, #46
	moveq r4, #1
	movne r4, #0
	beq .L150
	b .L155
.L145:
	b .L138
.L148:
	b .L144
.L150:
	ldr r4, addr_ptr0
	ldr r5, [r4]
	ldr r4, addr_tape0
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	mov r0, r5
	bl putch
	b .L152
.L151:
	ldr r4, [fp, #-8]
	cmp r4, #44
	moveq r4, #1
	movne r4, #0
	beq .L157
	b .L162
.L152:
	b .L145
.L155:
	b .L151
.L157:
	bl getch
	mov r4, r0
	ldr r5, addr_ptr0
	ldr r6, [r5]
	ldr r5, addr_tape0
	mov r7, #4
	mul r8, r6, r7
	add r6, r5, r8
	mov r5, r6
	str r4, [r5]
	b .L159
.L158:
	ldr r4, [fp, #-8]
	cmp r4, #93
	moveq r4, #1
	movne r4, #0
	beq .L165
	b .L168
.L159:
	b .L152
	b .F0
.LTORG
addr_TAPE_LEN0:
	.word TAPE_LEN
addr_BUFFER_LEN0:
	.word BUFFER_LEN
addr_tape0:
	.word tape
addr_program0:
	.word program
addr_ptr0:
	.word ptr
.F0:
.L162:
	b .L158
.L163:
	ldr r4, =1
	str r4, [fp, #-12]
	b .L173
.L164:
	b .L159
.L165:
	ldr r4, addr_ptr1
	ldr r5, [r4]
	ldr r4, addr_tape1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	ldr r5, [r4]
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L163
	b .L171
.L168:
	b .L164
.L171:
	b .L164
.L173:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L174
	b .L178
.L174:
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-16]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [r5]
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #91
	moveq r4, #1
	movne r4, #0
	beq .L181
	b .L186
.L175:
	b .L164
.L178:
	b .L175
.L181:
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	b .L183
.L182:
	ldr r4, [fp, #-8]
	cmp r4, #93
	moveq r4, #1
	movne r4, #0
	beq .L187
	b .L191
.L183:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L174
	b .L196
.L186:
	b .L182
.L187:
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	b .L188
.L188:
	b .L183
.L191:
	b .L188
.L196:
	b .L175
.L203:
	b .L116

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L205:
	bl read_program
	mov r4, #0
	ldr r5, addr_program1
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	mov r5, r4
	mov r0, r5
	bl interpret
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

addr_TAPE_LEN1:
	.word TAPE_LEN
addr_BUFFER_LEN1:
	.word BUFFER_LEN
addr_tape1:
	.word tape
addr_program1:
	.word program
addr_ptr1:
	.word ptr
