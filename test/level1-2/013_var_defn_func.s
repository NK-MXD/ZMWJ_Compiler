	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global defn
	.type defn , %function
defn:
	push {r3, r4, fp, lr}
	mov fp, sp
.L3:
	mov r0, #4
	pop {r3, r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r3, r4, fp, lr}
	mov fp, sp
.L4:
	bl defn
	pop {r3, r4, fp, lr}
	bx lr

	.ident "ZWJM"
