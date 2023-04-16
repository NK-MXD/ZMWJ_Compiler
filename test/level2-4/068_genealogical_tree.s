	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm map, 400, 4
	.comm indegree, 40, 4
	.comm queue, 40, 4
	.text
	.global topo
	.type topo , %function
topo:
	push {r3, r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L88:
	str r0, [fp, #-4]
	b .L94
.L94:
	ldr r2, [fp, #-4]
	ldr r1, =1
	ldr r1, =1
	mov r6, r1
	ldr r1, =0
	mov r4, r1
	ldr r1, =0
	mov r3, r1
	ldr r1, =1
	cmp r1, r2
	movle r1, #1
	movgt r1, #0
	ble .L95
	b .L99
.L95:
	b .L100
.L96:
	b .L145
.L99:
	ldr r1, =1
	ldr r1, =1
	ldr r1, =0
	ldr r1, =0
	b .L96
.L100:
	ldr r1, [fp, #-4]
	ldr r2, =1
	ldr r5, =1
	cmp r5, r1
	movle r1, #1
	movgt r1, #0
	ble .L101
	b .L105
.L101:
	ldr r1, addr_indegree0
	mov r5, #4
	mla r1, r2, r5, r1
	ldr r1, [r1]
	cmp r1, #0
	moveq r1, #1
	movne r1, #0
	beq .L106
	b .L111
.L102:
	ldr r2, addr_queue0
	mov r1, #4
	mla r1, r4, r1, r2
	str r5, [r1]
	add r7, r4, #1
	ldr r1, =0
	sub r2, r1, #1
	ldr r1, addr_indegree0
	mov r3, #4
	mla r1, r5, r3, r1
	str r2, [r1]
	b .L119
.L105:
	ldr r1, =1
	mov r5, r3
	b .L102
.L106:
	mov r1, r2
	mov r5, r2
	b .L102
.L107:
	add r5, r2, #1
	ldr r1, [fp, #-4]
	mov r2, r5
	cmp r5, r1
	movle r1, #1
	movgt r1, #0
	ble .L101
	b .L118
.L111:
	b .L107
.L118:
	mov r5, r3
	b .L102
.L119:
	ldr r2, [fp, #-4]
	ldr r1, =1
	ldr r3, =1
	cmp r3, r2
	movle r2, #1
	movgt r2, #0
	ble .L120
	b .L124
.L120:
	ldr r2, addr_map0
	mov r3, #40
	mla r2, r5, r3, r2
	mov r3, #4
	mla r2, r1, r3, r2
	ldr r2, [r2]
	cmp r2, #0
	movne r2, #1
	moveq r2, #0
	bne .L125
	b .L130
.L121:
	add r2, r6, #1
	ldr r1, [fp, #-4]
	mov r6, r2
	mov r4, r7
	mov r3, r5
	cmp r2, r1
	movle r1, #1
	movgt r1, #0
	ble .L95
	b .L144
.L124:
	ldr r1, =1
	b .L121
.L125:
	ldr r2, addr_indegree0
	mov r3, #4
	mla r2, r1, r3, r2
	ldr r2, [r2]
	sub r4, r2, #1
	ldr r3, addr_indegree0
	mov r2, #4
	mla r2, r1, r2, r3
	str r4, [r2]
	b .L126
.L126:
	add r3, r1, #1
	ldr r2, [fp, #-4]
	mov r1, r3
	cmp r3, r2
	movle r2, #1
	movgt r2, #0
	ble .L120
	b .L138
.L130:
	b .L126
.L138:
	b .L121
.L144:
	b .L96
.L145:
	ldr r2, [fp, #-4]
	ldr r1, =0
	mov r4, r1
	ldr r1, =0
	cmp r1, r2
	movlt r1, #1
	movge r1, #0
	blt .L146
	b .L150
.L146:
	ldr r1, addr_queue0
	mov r0, #4
	mla r0, r4, r0, r1
	ldr r0, [r0]
	bl putint
	mov r0, #10
	bl putch
	add r2, r4, #1
	ldr r1, [fp, #-4]
	cmp r2, r1
	movlt r1, #1
	movge r1, #0
	blt .L261
	b .L157
.L147:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L150:
	ldr r1, =0
	b .L147
.L157:
	b .L147
.L261:
	mov r4, r2
	b .L146

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L158:
	b .L162
.L162:
	ldr r0, =1
	mov r4, r0
	ldr r0, =0
	ldr r0, =1
	cmp r0, #5
	movle r0, #1
	movgt r0, #0
	ble .L163
	b .L167
.L163:
	bl getint
	mov r1, r0
	b .L168
.L164:
	mov r0, #5
	bl topo
	mov r0, #0
	pop {r3, r4, fp, lr}
	bx lr
.L167:
	ldr r0, =1
	ldr r0, =0
	b .L164
.L168:
	mov r0, r1
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	bne .L169
	b .L173
.L169:
	ldr r2, addr_map0
	mov r1, #40
	mla r2, r4, r1, r2
	mov r1, #4
	mla r2, r0, r1, r2
	ldr r1, =1
	str r1, [r2]
	ldr r2, addr_indegree0
	mov r1, #4
	mla r1, r0, r1, r2
	ldr r1, [r1]
	add r3, r1, #1
	ldr r2, addr_indegree0
	mov r1, #4
	mla r0, r0, r1, r2
	str r3, [r0]
	bl getint
	mov r1, r0
	cmp r1, #0
	movne r0, #1
	moveq r0, #0
	bne .L268
	b .L180
.L170:
	add r0, r4, #1
	mov r4, r0
	cmp r0, #5
	movle r0, #1
	movgt r0, #0
	ble .L163
	b .L186
.L173:
	b .L170
.L180:
	b .L170
.L186:
	b .L164
.L268:
	mov r0, r1
	b .L169

addr_map0:
	.word map
addr_indegree0:
	.word indegree
addr_queue0:
	.word queue
	.ident "ZWJM"
