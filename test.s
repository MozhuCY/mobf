	.file	"test.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Hello world!"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	rdi, .LC0[rip]
	call	puts@PLT
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	func1
	.type	func1, @function
func1:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
#APP
# 12 "test.c" 1
	movsx QWORD PTR -16[rbp],rax;
# 0 "" 2
#NO_APP
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	puts@PLT
	nop
	mov	rax, QWORD PTR -8[rbp]
	xor	rax, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	func1, .-func1
	.globl	func4
	.type	func4, @function
func4:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
#APP
# 17 "test.c" 1
	movsx DWORD PTR -16[rbp],rax;movsx DWORD PTR -12[rbp],rbx;
# 0 "" 2
#NO_APP
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	mov	rcx, QWORD PTR -8[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	func4, .-func4
	.globl	buffer
	.data
	.align 8
	.type	buffer, @object
	.size	buffer, 10
buffer:
	.string	"123456789"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
#APP
# 25 "test.c" 1
	call func0;
# 0 "" 2
#NO_APP
	lea	rax, buffer[rip]
	mov	QWORD PTR -16[rbp], rax
#APP
# 27 "test.c" 1
	movsx rax,QWORD PTR -16[rbp];call func1;
# 0 "" 2
#NO_APP
	mov	DWORD PTR -32[rbp], 1
	mov	DWORD PTR -28[rbp], 2
	mov	DWORD PTR -24[rbp], 3
	mov	DWORD PTR -20[rbp], 4
#APP
# 29 "test.c" 1
	movsx rax,DWORD PTR -32[rbp]
movsx rbx,DWORD PTR -28[rbp]
call func2;
# 0 "" 2
#NO_APP
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
