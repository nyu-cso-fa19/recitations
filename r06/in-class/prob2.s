	.file	"prob2.c"
	.text
	.globl	mystrlen
	.type	mystrlen, @function
mystrlen:
.LFB23:
	.cfi_startproc
//YOUR CODE GOES HERE
//get argument from %rdi


//store the result in %eax somehow
	ret
	.cfi_endproc
.LFE23:
	.size	mystrlen, .-mystrlen
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"this is a test"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	.LC0(%rip), %rdi
	call	mystrlen
	movl	%eax, %edx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
