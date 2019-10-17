	.file	"prob1.c"
	.text
	.globl	mystery
	.type	mystery, @function
mystery:
.LFB23:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L2
.L3:
	movq	%rsi, %rdx
	addl	-4(%rdi,%rdx,4), %eax
	subl	$1, %esi
.L2:
	testl	%esi, %esi
	jg	.L3
	ret
	.cfi_endproc
.LFE23:
	.size	mystery, .-mystery
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movl	$1, (%rsp)
	movl	$2, 4(%rsp)
	movl	$3, 8(%rsp)
	movl	$4, 12(%rsp)
	movl	$5, 16(%rsp)
	movl	$6, 20(%rsp)
	movl	$7, 24(%rsp)
	movl	$8, 28(%rsp)
	movl	$9, 32(%rsp)
	movl	$10, 36(%rsp)
	movl	$11, 40(%rsp)
	movq	%rsp, %rdi
	movl	$11, %esi
	call	mystery
	movl	%eax, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	56(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L7
	movl	$0, %eax
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
