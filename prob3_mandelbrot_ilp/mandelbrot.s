	.file	"mandelbrot.cpp"
	.text
	.p2align 4,,15
	.globl	_Z11mandel_par1PfS_iPi
	.type	_Z11mandel_par1PfS_iPi, @function
_Z11mandel_par1PfS_iPi:
.LFB600:
	.cfi_startproc
	testl	%edx, %edx
	vmovss	(%rdi), %xmm5
	vmovss	(%rsi), %xmm4
	jle	.L7
	vmovaps	%xmm5, %xmm0
	xorl	%eax, %eax
	vmovaps	%xmm4, %xmm1
	.p2align 4,,10
	.p2align 3
.L3:
	vmulss	%xmm0, %xmm0, %xmm3
	vmulss	%xmm1, %xmm1, %xmm2
	vaddss	%xmm2, %xmm3, %xmm6
	vucomiss	.LC0(%rip), %xmm6
	ja	.L6
	vaddss	%xmm0, %xmm0, %xmm0
	addl	$1, %eax
	cmpl	%edx, %eax
	vmulss	%xmm0, %xmm1, %xmm1
	vsubss	%xmm2, %xmm3, %xmm0
	vaddss	%xmm4, %xmm1, %xmm1
	vaddss	%xmm5, %xmm0, %xmm0
	jne	.L3
.L6:
	movl	%eax, (%rcx)
	ret
.L7:
	xorl	%eax, %eax
	jmp	.L6
	.cfi_endproc
.LFE600:
	.size	_Z11mandel_par1PfS_iPi, .-_Z11mandel_par1PfS_iPi
	.p2align 4,,15
	.globl	_Z11mandel_par2PfS_iPi
	.type	_Z11mandel_par2PfS_iPi, @function
_Z11mandel_par2PfS_iPi:
.LFB601:
	.cfi_startproc
	testl	%edx, %edx
	vmovss	(%rdi), %xmm12
	vmovss	(%rsi), %xmm10
	vmovss	4(%rdi), %xmm11
	vmovss	4(%rsi), %xmm9
	jle	.L12
	vmovaps	%xmm12, %xmm1
	vmovaps	%xmm11, %xmm0
	vmovaps	%xmm10, %xmm3
	xorl	%edi, %edi
	vmovaps	%xmm9, %xmm2
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L20:
	vaddss	%xmm1, %xmm1, %xmm1
	addl	$1, %eax
	testb	%r8b, %r8b
	vaddss	%xmm0, %xmm0, %xmm0
	cmove	%eax, %r10d
	cmpl	%edx, %eax
	vmulss	%xmm3, %xmm1, %xmm3
	vsubss	%xmm5, %xmm4, %xmm1
	vmulss	%xmm2, %xmm0, %xmm2
	vsubss	%xmm7, %xmm6, %xmm0
	vaddss	%xmm12, %xmm1, %xmm1
	vaddss	%xmm10, %xmm3, %xmm3
	vaddss	%xmm11, %xmm0, %xmm0
	vaddss	%xmm9, %xmm2, %xmm2
	je	.L21
.L13:
	vmulss	%xmm1, %xmm1, %xmm4
	vmulss	%xmm3, %xmm3, %xmm5
	vmulss	%xmm2, %xmm2, %xmm7
	vaddss	%xmm5, %xmm4, %xmm6
	vucomiss	.LC0(%rip), %xmm6
	vmulss	%xmm0, %xmm0, %xmm6
	vaddss	%xmm7, %xmm6, %xmm8
	seta	%sil
	orl	%esi, %r8d
	testb	%dil, %dil
	cmove	%eax, %r9d
	vucomiss	.LC0(%rip), %xmm8
	seta	%sil
	orl	%edi, %esi
	testb	%sil, %sil
	movl	%esi, %edi
	je	.L20
	testb	%r8b, %r8b
	je	.L20
	.p2align 4,,10
	.p2align 3
.L21:
	testb	%sil, %sil
	movl	%r10d, (%rcx)
	je	.L23
	movl	%r9d, 4(%rcx)
	ret
.L12:
	movl	$0, (%rcx)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L23:
	movl	%eax, %r9d
	movl	%r9d, 4(%rcx)
	ret
	.cfi_endproc
.LFE601:
	.size	_Z11mandel_par2PfS_iPi, .-_Z11mandel_par2PfS_iPi
	.p2align 4,,15
	.globl	_Z11mandel_par3PfS_iPi
	.type	_Z11mandel_par3PfS_iPi, @function
_Z11mandel_par3PfS_iPi:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$8, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	(%rdi), %rax
	movb	$0, -118(%rsp)
	movq	$0, -24(%rsp)
	movl	$0, -16(%rsp)
	movq	%rax, -88(%rsp)
	movl	8(%rdi), %eax
	movl	%eax, -80(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -56(%rsp)
	movl	8(%rsi), %eax
	movl	%eax, -48(%rsp)
	xorl	%eax, %eax
	testl	%edx, %edx
	movw	%ax, -120(%rsp)
	jle	.L41
	movzbl	-120(%rsp), %r9d
	vmovss	-88(%rsp), %xmm2
	vmovss	-56(%rsp), %xmm5
	movzbl	-119(%rsp), %r8d
	vmovss	-84(%rsp), %xmm1
	xorl	%r10d, %r10d
	vmovss	-52(%rsp), %xmm4
	movl	-24(%rsp), %r12d
	vmovss	-80(%rsp), %xmm0
	movl	-20(%rsp), %ebx
	vmovss	-48(%rsp), %xmm3
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L37:
	vaddss	%xmm2, %xmm2, %xmm2
	addl	$1, %eax
	vaddss	%xmm1, %xmm1, %xmm1
	cmpl	%edx, %eax
	vaddss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm5, %xmm2, %xmm5
	vsubss	%xmm7, %xmm6, %xmm2
	vmulss	%xmm1, %xmm4, %xmm4
	vsubss	%xmm9, %xmm8, %xmm1
	vmulss	%xmm3, %xmm0, %xmm3
	vsubss	%xmm11, %xmm10, %xmm0
	vaddss	(%rdi), %xmm2, %xmm2
	vaddss	(%rsi), %xmm5, %xmm5
	vaddss	4(%rdi), %xmm1, %xmm1
	vaddss	4(%rsi), %xmm4, %xmm4
	vaddss	8(%rdi), %xmm0, %xmm0
	vaddss	8(%rsi), %xmm3, %xmm3
	je	.L55
.L32:
	vmulss	%xmm2, %xmm2, %xmm6
	testb	%r9b, %r9b
	vmulss	%xmm5, %xmm5, %xmm7
	cmove	%eax, %r12d
	vmulss	%xmm4, %xmm4, %xmm9
	vmulss	%xmm3, %xmm3, %xmm11
	vaddss	%xmm7, %xmm6, %xmm8
	vucomiss	.LC0(%rip), %xmm8
	vmulss	%xmm1, %xmm1, %xmm8
	vaddss	%xmm9, %xmm8, %xmm10
	seta	%r13b
	orl	%r13d, %r9d
	testb	%r8b, %r8b
	cmove	%eax, %ebx
	vucomiss	.LC0(%rip), %xmm10
	vmulss	%xmm0, %xmm0, %xmm10
	vaddss	%xmm11, %xmm10, %xmm12
	seta	%r13b
	orl	%r13d, %r8d
	testb	%r10b, %r10b
	cmove	%eax, %r11d
	vucomiss	.LC0(%rip), %xmm12
	seta	%r13b
	orl	%r13d, %r10d
	testb	%r9b, %r8b
	je	.L37
	testb	%r10b, %r10b
	je	.L37
	movl	%r12d, -24(%rsp)
	movb	%r9b, -120(%rsp)
	movl	%ebx, -20(%rsp)
	movb	%r8b, -119(%rsp)
	movl	%r11d, -16(%rsp)
	movb	$1, -118(%rsp)
.L31:
	cmpb	$0, -120(%rsp)
	movl	%eax, %edx
	cmovne	-24(%rsp), %edx
	cmpb	$0, -119(%rsp)
	movl	%edx, (%rcx)
	movl	%eax, %edx
	cmovne	-20(%rsp), %edx
	cmpb	$0, -118(%rsp)
	cmovne	-16(%rsp), %eax
	movl	%edx, 4(%rcx)
	movl	%eax, 8(%rcx)
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	.cfi_restore_state
	movl	%r12d, -24(%rsp)
	movb	%r9b, -120(%rsp)
	movl	%ebx, -20(%rsp)
	movb	%r8b, -119(%rsp)
	movl	%r11d, -16(%rsp)
	movb	%r10b, -118(%rsp)
	jmp	.L31
.L41:
	xorl	%eax, %eax
	jmp	.L31
	.cfi_endproc
.LFE602:
	.size	_Z11mandel_par3PfS_iPi, .-_Z11mandel_par3PfS_iPi
	.p2align 4,,15
	.globl	_Z11mandel_par4PfS_iPi
	.type	_Z11mandel_par4PfS_iPi, @function
_Z11mandel_par4PfS_iPi:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	movl	%edx, %r14d
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$24, %rsp
	testl	%edx, %edx
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	(%rdi), %rax
	movq	%rcx, -120(%rsp)
	movl	$0, -104(%rsp)
	movq	$0, -8(%rsp)
	movq	$0, (%rsp)
	movq	%rax, -72(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, -64(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, -32(%rsp)
	jle	.L69
	movzbl	-104(%rsp), %r8d
	vmovss	-72(%rsp), %xmm3
	vmovss	-40(%rsp), %xmm6
	movzbl	-103(%rsp), %ecx
	vmovss	-68(%rsp), %xmm2
	movzbl	-102(%rsp), %edx
	vmovss	-36(%rsp), %xmm5
	movzbl	-101(%rsp), %r9d
	vmovss	-64(%rsp), %xmm1
	movl	-8(%rsp), %ebx
	vmovss	-32(%rsp), %xmm4
	movl	-4(%rsp), %r11d
	vmovss	-60(%rsp), %xmm0
	movl	(%rsp), %r13d
	vmovss	-28(%rsp), %xmm15
	movl	4(%rsp), %r12d
	xorl	%eax, %eax
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L64:
	vaddss	%xmm3, %xmm3, %xmm3
	addl	$1, %eax
	vaddss	%xmm2, %xmm2, %xmm2
	cmpl	%r14d, %eax
	vaddss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm6, %xmm3, %xmm6
	vmovss	-108(%rsp), %xmm3
	vmulss	%xmm2, %xmm5, %xmm5
	vsubss	%xmm14, %xmm3, %xmm3
	vmulss	%xmm4, %xmm1, %xmm4
	vsubss	%xmm9, %xmm8, %xmm2
	vmulss	%xmm0, %xmm15, %xmm15
	vsubss	%xmm11, %xmm10, %xmm1
	vsubss	%xmm13, %xmm12, %xmm0
	vaddss	(%rdi), %xmm3, %xmm3
	vaddss	(%rsi), %xmm6, %xmm6
	vaddss	4(%rdi), %xmm2, %xmm2
	vaddss	4(%rsi), %xmm5, %xmm5
	vaddss	8(%rdi), %xmm1, %xmm1
	vaddss	8(%rsi), %xmm4, %xmm4
	vaddss	12(%rdi), %xmm0, %xmm0
	vaddss	12(%rsi), %xmm15, %xmm15
	je	.L85
.L58:
	vmulss	%xmm3, %xmm3, %xmm7
	testb	%r8b, %r8b
	vmulss	%xmm6, %xmm6, %xmm14
	cmove	%eax, %ebx
	vmulss	%xmm5, %xmm5, %xmm9
	vmulss	%xmm4, %xmm4, %xmm11
	vmulss	%xmm15, %xmm15, %xmm13
	vmovss	%xmm7, -108(%rsp)
	vaddss	%xmm7, %xmm14, %xmm8
	vucomiss	.LC0(%rip), %xmm8
	vmulss	%xmm2, %xmm2, %xmm8
	vaddss	%xmm9, %xmm8, %xmm10
	seta	%r10b
	orl	%r10d, %r8d
	testb	%cl, %cl
	cmove	%eax, %r11d
	vucomiss	.LC0(%rip), %xmm10
	vmulss	%xmm1, %xmm1, %xmm10
	vaddss	%xmm11, %xmm10, %xmm12
	seta	%r10b
	orl	%r10d, %ecx
	movl	%ecx, %r10d
	andl	%r8d, %r10d
	testb	%dl, %dl
	cmove	%eax, %r13d
	vucomiss	.LC0(%rip), %xmm12
	vmulss	%xmm0, %xmm0, %xmm12
	vaddss	%xmm13, %xmm12, %xmm7
	seta	%r15b
	orl	%r15d, %edx
	testb	%r9b, %r9b
	cmove	%eax, %r12d
	vucomiss	.LC0(%rip), %xmm7
	seta	%r15b
	orl	%r15d, %r9d
	testb	%dl, %r10b
	je	.L64
	testb	%r9b, %r9b
	je	.L64
	movl	%r13d, -108(%rsp)
	movb	%r8b, -104(%rsp)
	vmovd	-108(%rsp), %xmm4
	movl	%ebx, -108(%rsp)
	vmovd	-108(%rsp), %xmm5
	movb	%cl, -103(%rsp)
	vpinsrd	$1, %r12d, %xmm4, %xmm0
	movb	%dl, -102(%rsp)
	movb	$1, -101(%rsp)
	vpinsrd	$1, %r11d, %xmm5, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, -8(%rsp)
.L57:
	cmpb	$0, -104(%rsp)
	movl	%eax, %edx
	movq	-120(%rsp), %rcx
	cmovne	-8(%rsp), %edx
	cmpb	$0, -103(%rsp)
	movl	%edx, (%rcx)
	movl	%eax, %edx
	cmovne	-4(%rsp), %edx
	cmpb	$0, -102(%rsp)
	movl	%edx, 4(%rcx)
	movl	%eax, %edx
	cmovne	(%rsp), %edx
	cmpb	$0, -101(%rsp)
	cmovne	4(%rsp), %eax
	movl	%edx, 8(%rcx)
	movl	%eax, 12(%rcx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	.cfi_restore_state
	movl	%r13d, -108(%rsp)
	movb	%r8b, -104(%rsp)
	vmovd	-108(%rsp), %xmm6
	movl	%ebx, -108(%rsp)
	movb	%cl, -103(%rsp)
	movb	%dl, -102(%rsp)
	vpinsrd	$1, %r12d, %xmm6, %xmm0
	vmovd	-108(%rsp), %xmm6
	movb	%r9b, -101(%rsp)
	vpinsrd	$1, %r11d, %xmm6, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, -8(%rsp)
	jmp	.L57
.L69:
	xorl	%eax, %eax
	jmp	.L57
	.cfi_endproc
.LFE603:
	.size	_Z11mandel_par4PfS_iPi, .-_Z11mandel_par4PfS_iPi
	.p2align 4,,15
	.globl	_Z11mandel_par5PfS_iPi
	.type	_Z11mandel_par5PfS_iPi, @function
_Z11mandel_par5PfS_iPi:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$48, %rsp
	testl	%edx, %edx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	(%rdi), %rax
	movl	%edx, -108(%rsp)
	movq	%rcx, -120(%rsp)
	movl	$0, -80(%rsp)
	movb	$0, -76(%rsp)
	movq	$0, 16(%rsp)
	movq	%rax, -48(%rsp)
	movq	8(%rdi), %rax
	movq	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rax, -40(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, -8(%rsp)
	movl	16(%rsi), %eax
	movl	%eax, (%rsp)
	jle	.L101
	movzbl	-80(%rsp), %r9d
	vmovss	-48(%rsp), %xmm4
	vmovss	-16(%rsp), %xmm15
	movzbl	-79(%rsp), %r8d
	vmovss	-44(%rsp), %xmm3
	movzbl	-78(%rsp), %ecx
	vmovss	-12(%rsp), %xmm12
	movzbl	-77(%rsp), %edx
	vmovss	-40(%rsp), %xmm2
	xorl	%r10d, %r10d
	vmovss	-8(%rsp), %xmm10
	movl	16(%rsp), %r14d
	vmovss	-36(%rsp), %xmm1
	movl	20(%rsp), %r13d
	vmovss	-4(%rsp), %xmm8
	movl	24(%rsp), %r12d
	vmovss	-32(%rsp), %xmm0
	movl	28(%rsp), %ebx
	vmovss	(%rsp), %xmm6
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L95:
	vaddss	%xmm4, %xmm4, %xmm4
	addl	$1, %eax
	cmpl	-108(%rsp), %eax
	vaddss	%xmm3, %xmm3, %xmm3
	vaddss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm15, %xmm4, %xmm15
	vmovss	-88(%rsp), %xmm4
	vmulss	%xmm3, %xmm12, %xmm12
	vsubss	-96(%rsp), %xmm14, %xmm3
	vmulss	%xmm10, %xmm2, %xmm10
	vsubss	-92(%rsp), %xmm4, %xmm4
	vmulss	%xmm1, %xmm8, %xmm8
	vsubss	-100(%rsp), %xmm7, %xmm2
	vsubss	-104(%rsp), %xmm9, %xmm1
	vmulss	%xmm6, %xmm0, %xmm6
	vsubss	%xmm13, %xmm11, %xmm0
	vaddss	(%rsi), %xmm15, %xmm15
	vaddss	4(%rdi), %xmm3, %xmm3
	vaddss	(%rdi), %xmm4, %xmm4
	vaddss	4(%rsi), %xmm12, %xmm12
	vaddss	8(%rdi), %xmm2, %xmm2
	vaddss	8(%rsi), %xmm10, %xmm10
	vaddss	12(%rdi), %xmm1, %xmm1
	vaddss	12(%rsi), %xmm8, %xmm8
	vaddss	16(%rdi), %xmm0, %xmm0
	vaddss	16(%rsi), %xmm6, %xmm6
	je	.L119
	movl	-84(%rsp), %r13d
.L88:
	vmulss	%xmm4, %xmm4, %xmm5
	testb	%r9b, %r9b
	vmulss	%xmm15, %xmm15, %xmm7
	cmove	%eax, %r14d
	vmulss	%xmm3, %xmm3, %xmm14
	vmulss	%xmm10, %xmm10, %xmm13
	vmulss	%xmm8, %xmm8, %xmm11
	vmovss	%xmm5, -88(%rsp)
	vaddss	%xmm5, %xmm7, %xmm9
	vmovss	%xmm7, -92(%rsp)
	vmulss	%xmm12, %xmm12, %xmm7
	vmovss	%xmm13, -100(%rsp)
	vmovss	%xmm11, -104(%rsp)
	vucomiss	.LC0(%rip), %xmm9
	vaddss	%xmm7, %xmm14, %xmm9
	vmovss	%xmm7, -96(%rsp)
	vmulss	%xmm2, %xmm2, %xmm7
	seta	%r15b
	orl	%r15d, %r9d
	testb	%r8b, %r8b
	cmove	%eax, %r13d
	vucomiss	.LC0(%rip), %xmm9
	movl	%r13d, -84(%rsp)
	vaddss	%xmm13, %xmm7, %xmm9
	vmulss	%xmm6, %xmm6, %xmm13
	seta	%r13b
	orl	%r13d, %r8d
	movl	%r8d, %r13d
	andl	%r9d, %r13d
	testb	%cl, %cl
	cmove	%eax, %r12d
	vucomiss	.LC0(%rip), %xmm9
	vmulss	%xmm1, %xmm1, %xmm9
	vaddss	%xmm11, %xmm9, %xmm11
	seta	%r15b
	orl	%r15d, %ecx
	andl	%ecx, %r13d
	testb	%dl, %dl
	cmove	%eax, %ebx
	vucomiss	.LC0(%rip), %xmm11
	vmulss	%xmm0, %xmm0, %xmm11
	vaddss	%xmm13, %xmm11, %xmm5
	seta	%r15b
	orl	%r15d, %edx
	testb	%r10b, %r10b
	cmove	%eax, %r11d
	vucomiss	.LC0(%rip), %xmm5
	seta	%r15b
	orl	%r15d, %r10d
	testb	%dl, %r13b
	je	.L95
	testb	%r10b, %r10b
	je	.L95
	movl	-84(%rsp), %edi
	movl	%r14d, 16(%rsp)
	movb	%r9b, -80(%rsp)
	movb	%r8b, -79(%rsp)
	movl	%r12d, 24(%rsp)
	movb	%cl, -78(%rsp)
	movl	%edi, 20(%rsp)
	movl	%ebx, 28(%rsp)
	movb	%dl, -77(%rsp)
	movl	%r11d, 32(%rsp)
	movb	$1, -76(%rsp)
.L87:
	cmpb	$0, -80(%rsp)
	movl	%eax, %edx
	movq	-120(%rsp), %rcx
	cmovne	16(%rsp), %edx
	cmpb	$0, -79(%rsp)
	movl	%edx, (%rcx)
	movl	%eax, %edx
	cmovne	20(%rsp), %edx
	cmpb	$0, -78(%rsp)
	movl	%edx, 4(%rcx)
	movl	%eax, %edx
	cmovne	24(%rsp), %edx
	cmpb	$0, -77(%rsp)
	movl	%edx, 8(%rcx)
	movl	%eax, %edx
	cmovne	28(%rsp), %edx
	cmpb	$0, -76(%rsp)
	cmovne	32(%rsp), %eax
	movl	%edx, 12(%rcx)
	movl	%eax, 16(%rcx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L119:
	.cfi_restore_state
	movl	-84(%rsp), %esi
	movl	%r14d, 16(%rsp)
	movb	%r9b, -80(%rsp)
	movb	%r8b, -79(%rsp)
	movl	%r12d, 24(%rsp)
	movb	%cl, -78(%rsp)
	movl	%esi, 20(%rsp)
	movl	%ebx, 28(%rsp)
	movb	%dl, -77(%rsp)
	movl	%r11d, 32(%rsp)
	movb	%r10b, -76(%rsp)
	jmp	.L87
.L101:
	xorl	%eax, %eax
	jmp	.L87
	.cfi_endproc
.LFE604:
	.size	_Z11mandel_par5PfS_iPi, .-_Z11mandel_par5PfS_iPi
	.p2align 4,,15
	.globl	_Z11mandel_par6PfS_iPi
	.type	_Z11mandel_par6PfS_iPi, @function
_Z11mandel_par6PfS_iPi:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	(%rdi), %rax
	movl	%edx, -108(%rsp)
	movq	%rcx, -120(%rsp)
	movl	$0, -56(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, -24(%rsp)
	movq	8(%rdi), %rax
	movq	$0, 56(%rsp)
	movq	%rax, -16(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testl	%edx, %edx
	movw	%ax, -52(%rsp)
	jle	.L137
	movzbl	-56(%rsp), %r8d
	movzbl	-55(%rsp), %r14d
	movzbl	-51(%rsp), %eax
	movl	44(%rsp), %r12d
	vmovss	12(%rsp), %xmm7
	movzbl	-54(%rsp), %r15d
	vmovaps	%xmm7, %xmm13
	vmovss	-24(%rsp), %xmm2
	movl	%r12d, -64(%rsp)
	vmovss	8(%rsp), %xmm15
	movb	%al, -57(%rsp)
	movl	%r14d, %r12d
	movzbl	-53(%rsp), %ecx
	movl	%r8d, %r14d
	vmovss	-20(%rsp), %xmm1
	vmovss	-16(%rsp), %xmm0
	movzbl	-52(%rsp), %edx
	vmovss	16(%rsp), %xmm7
	movl	40(%rsp), %r13d
	vmovss	-12(%rsp), %xmm14
	movl	48(%rsp), %ebx
	vmovss	20(%rsp), %xmm12
	movl	52(%rsp), %r11d
	vmovss	-8(%rsp), %xmm10
	movl	56(%rsp), %r10d
	vmovss	24(%rsp), %xmm8
	movl	60(%rsp), %r9d
	vmovss	-4(%rsp), %xmm6
	xorl	%eax, %eax
	vmovss	28(%rsp), %xmm4
	movl	-64(%rsp), %r8d
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L130:
	vaddss	%xmm1, %xmm1, %xmm1
	addl	$1, %eax
	cmpl	-108(%rsp), %eax
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm14, %xmm14, %xmm14
	vmulss	%xmm13, %xmm1, %xmm3
	vaddss	%xmm10, %xmm10, %xmm10
	vaddss	%xmm6, %xmm6, %xmm6
	vmulss	%xmm15, %xmm2, %xmm15
	vmovss	-72(%rsp), %xmm2
	vmulss	%xmm14, %xmm12, %xmm12
	vsubss	-76(%rsp), %xmm2, %xmm2
	vaddss	4(%rsi), %xmm3, %xmm13
	vmulss	%xmm7, %xmm0, %xmm3
	vmovss	-84(%rsp), %xmm0
	vmulss	%xmm8, %xmm10, %xmm8
	vsubss	-80(%rsp), %xmm11, %xmm1
	vmulss	%xmm4, %xmm6, %xmm4
	vsubss	-88(%rsp), %xmm0, %xmm0
	vsubss	-100(%rsp), %xmm5, %xmm10
	vaddss	8(%rsi), %xmm3, %xmm7
	vmovss	-92(%rsp), %xmm3
	vsubss	-96(%rsp), %xmm3, %xmm14
	vsubss	-104(%rsp), %xmm9, %xmm6
	vaddss	(%rdi), %xmm2, %xmm2
	vaddss	(%rsi), %xmm15, %xmm15
	vaddss	4(%rdi), %xmm1, %xmm1
	vaddss	8(%rdi), %xmm0, %xmm0
	vaddss	12(%rdi), %xmm14, %xmm14
	vaddss	12(%rsi), %xmm12, %xmm12
	vaddss	16(%rdi), %xmm10, %xmm10
	vaddss	16(%rsi), %xmm8, %xmm8
	vaddss	20(%rdi), %xmm6, %xmm6
	vaddss	20(%rsi), %xmm4, %xmm4
	je	.L157
	movl	-64(%rsp), %r8d
	movl	-68(%rsp), %ebx
.L122:
	vmulss	%xmm2, %xmm2, %xmm3
	testb	%r14b, %r14b
	vmulss	%xmm15, %xmm15, %xmm5
	cmove	%eax, %r13d
	vmulss	%xmm1, %xmm1, %xmm11
	vmulss	%xmm7, %xmm7, %xmm9
	vmovss	%xmm3, -72(%rsp)
	vmovss	%xmm5, -76(%rsp)
	vaddss	%xmm3, %xmm5, %xmm5
	vmulss	%xmm4, %xmm4, %xmm3
	vmovss	%xmm9, -88(%rsp)
	vucomiss	.LC0(%rip), %xmm5
	vmulss	%xmm13, %xmm13, %xmm5
	vmovss	%xmm3, -104(%rsp)
	vmovss	%xmm5, -80(%rsp)
	vaddss	%xmm5, %xmm11, %xmm5
	seta	-64(%rsp)
	orb	-64(%rsp), %r14b
	testb	%r12b, %r12b
	cmove	%eax, %r8d
	movl	%r8d, -64(%rsp)
	vucomiss	.LC0(%rip), %xmm5
	vmulss	%xmm0, %xmm0, %xmm5
	vmovss	%xmm5, -84(%rsp)
	vaddss	%xmm5, %xmm9, %xmm5
	vmulss	%xmm12, %xmm12, %xmm9
	seta	%r8b
	orl	%r8d, %r12d
	movl	%r12d, %r8d
	andl	%r14d, %r8d
	testb	%r15b, %r15b
	vmovss	%xmm9, -96(%rsp)
	cmove	%eax, %ebx
	vucomiss	.LC0(%rip), %xmm5
	vmulss	%xmm14, %xmm14, %xmm5
	movl	%ebx, -68(%rsp)
	vmovss	%xmm5, -92(%rsp)
	vaddss	%xmm5, %xmm9, %xmm5
	vmulss	%xmm8, %xmm8, %xmm9
	seta	%bl
	orl	%ebx, %r15d
	andl	%r15d, %r8d
	testb	%cl, %cl
	cmove	%eax, %r11d
	vmovss	%xmm9, -100(%rsp)
	vucomiss	.LC0(%rip), %xmm5
	vmulss	%xmm10, %xmm10, %xmm5
	vaddss	%xmm9, %xmm5, %xmm9
	seta	%bl
	orl	%ebx, %ecx
	andl	%ecx, %r8d
	testb	%dl, %dl
	cmove	%eax, %r10d
	vucomiss	.LC0(%rip), %xmm9
	vmulss	%xmm6, %xmm6, %xmm9
	vaddss	%xmm3, %xmm9, %xmm3
	seta	%bl
	orl	%ebx, %edx
	cmpb	$0, -57(%rsp)
	cmove	%eax, %r9d
	vucomiss	.LC0(%rip), %xmm3
	seta	%bl
	orb	%bl, -57(%rsp)
	testb	%dl, %r8b
	je	.L130
	cmpb	$0, -57(%rsp)
	je	.L130
	movl	-64(%rsp), %esi
	movl	-68(%rsp), %edi
	movl	%r14d, %r8d
	movl	%r13d, 40(%rsp)
	movb	%r8b, -56(%rsp)
	movb	%r12b, -55(%rsp)
	movb	%r15b, -54(%rsp)
	movl	%esi, 44(%rsp)
	movl	%edi, 48(%rsp)
	movl	%r11d, 52(%rsp)
	movb	%cl, -53(%rsp)
	movl	%r10d, 56(%rsp)
	movb	%dl, -52(%rsp)
	movl	%r9d, 60(%rsp)
	movb	$1, -51(%rsp)
.L121:
	cmpb	$0, -56(%rsp)
	movl	%eax, %edx
	movq	-120(%rsp), %rcx
	cmovne	40(%rsp), %edx
	cmpb	$0, -55(%rsp)
	movl	%edx, (%rcx)
	movl	%eax, %edx
	cmovne	44(%rsp), %edx
	cmpb	$0, -54(%rsp)
	movl	%edx, 4(%rcx)
	movl	%eax, %edx
	cmovne	48(%rsp), %edx
	cmpb	$0, -53(%rsp)
	movl	%edx, 8(%rcx)
	movl	%eax, %edx
	cmovne	52(%rsp), %edx
	cmpb	$0, -52(%rsp)
	movl	%edx, 12(%rcx)
	movl	%eax, %edx
	cmovne	56(%rsp), %edx
	cmpb	$0, -51(%rsp)
	cmovne	60(%rsp), %eax
	movl	%edx, 16(%rcx)
	movl	%eax, 20(%rcx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	.cfi_restore_state
	movb	%cl, -53(%rsp)
	movzbl	-57(%rsp), %ecx
	movl	%r14d, %r8d
	movl	-64(%rsp), %esi
	movl	-68(%rsp), %edi
	movl	%r13d, 40(%rsp)
	movb	%r8b, -56(%rsp)
	movb	%r12b, -55(%rsp)
	movb	%r15b, -54(%rsp)
	movl	%esi, 44(%rsp)
	movl	%edi, 48(%rsp)
	movl	%r11d, 52(%rsp)
	movl	%r10d, 56(%rsp)
	movb	%dl, -52(%rsp)
	movl	%r9d, 60(%rsp)
	movb	%cl, -51(%rsp)
	jmp	.L121
.L137:
	xorl	%eax, %eax
	jmp	.L121
	.cfi_endproc
.LFE605:
	.size	_Z11mandel_par6PfS_iPi, .-_Z11mandel_par6PfS_iPi
	.p2align 4,,15
	.globl	_Z11mandel_par7PfS_iPi
	.type	_Z11mandel_par7PfS_iPi, @function
_Z11mandel_par7PfS_iPi:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$80, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	(%rdi), %rax
	movl	%edx, -112(%rsp)
	movq	%rcx, -120(%rsp)
	movl	$0, -48(%rsp)
	movb	$0, -42(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, -16(%rsp)
	movq	8(%rdi), %rax
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	%rax, -8(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, (%rsp)
	movl	24(%rdi), %eax
	movl	%eax, 8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 32(%rsp)
	movl	24(%rsi), %eax
	movl	%eax, 40(%rsp)
	xorl	%eax, %eax
	testl	%edx, %edx
	movw	%ax, -44(%rsp)
	movl	$0, 72(%rsp)
	jle	.L177
	movzbl	-44(%rsp), %eax
	vmovss	20(%rsp), %xmm3
	movzbl	-47(%rsp), %edx
	vmovaps	%xmm3, %xmm11
	vmovss	24(%rsp), %xmm3
	movzbl	-48(%rsp), %ecx
	vmovaps	%xmm3, %xmm5
	movzbl	-46(%rsp), %r14d
	movb	%al, -49(%rsp)
	movzbl	-43(%rsp), %eax
	xorl	%r12d, %r12d
	vmovss	32(%rsp), %xmm3
	movzbl	-45(%rsp), %r15d
	vmovss	%xmm3, -56(%rsp)
	movb	$0, -52(%rsp)
	movl	48(%rsp), %ebx
	vmovss	36(%rsp), %xmm3
	movl	52(%rsp), %r11d
	vmovss	28(%rsp), %xmm14
	vmovss	16(%rsp), %xmm15
	movb	%al, -50(%rsp)
	xorl	%eax, %eax
	vmovss	%xmm3, -60(%rsp)
	movl	56(%rsp), %r10d
	movl	60(%rsp), %r9d
	vmovss	40(%rsp), %xmm3
	movl	64(%rsp), %r8d
	vmovss	%xmm3, -64(%rsp)
	movl	68(%rsp), %r13d
	vmovaps	%xmm14, %xmm3
	vmovss	-16(%rsp), %xmm0
	vmovss	-12(%rsp), %xmm10
	vmovss	-8(%rsp), %xmm6
	movb	%dl, -51(%rsp)
	vmovss	-4(%rsp), %xmm2
	vmovaps	%xmm15, %xmm7
	vmovss	(%rsp), %xmm12
	vmovss	4(%rsp), %xmm8
	vmovaps	%xmm5, %xmm14
	vmovss	8(%rsp), %xmm4
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L169:
	vaddss	%xmm0, %xmm0, %xmm0
	addl	$1, %eax
	cmpl	-112(%rsp), %eax
	vaddss	%xmm10, %xmm10, %xmm10
	vaddss	%xmm6, %xmm6, %xmm6
	vaddss	%xmm2, %xmm2, %xmm2
	vmulss	%xmm0, %xmm7, %xmm15
	vmovss	-72(%rsp), %xmm7
	vsubss	-76(%rsp), %xmm7, %xmm0
	vaddss	%xmm12, %xmm12, %xmm12
	vaddss	%xmm8, %xmm8, %xmm8
	vaddss	(%rsi), %xmm15, %xmm7
	vmulss	%xmm11, %xmm10, %xmm15
	vmovss	-80(%rsp), %xmm11
	vaddss	%xmm4, %xmm4, %xmm4
	vsubss	-84(%rsp), %xmm11, %xmm10
	vaddss	(%rdi), %xmm0, %xmm0
	vaddss	4(%rsi), %xmm15, %xmm11
	vmulss	%xmm14, %xmm6, %xmm15
	vmovss	-88(%rsp), %xmm6
	vsubss	-92(%rsp), %xmm6, %xmm6
	vaddss	8(%rsi), %xmm15, %xmm14
	vmulss	%xmm2, %xmm3, %xmm15
	vsubss	-96(%rsp), %xmm1, %xmm2
	vmulss	-56(%rsp), %xmm12, %xmm1
	vsubss	-100(%rsp), %xmm5, %xmm12
	vaddss	4(%rdi), %xmm10, %xmm10
	vaddss	8(%rdi), %xmm6, %xmm6
	vaddss	12(%rsi), %xmm15, %xmm3
	vaddss	16(%rsi), %xmm1, %xmm5
	vmulss	-60(%rsp), %xmm8, %xmm1
	vsubss	-104(%rsp), %xmm9, %xmm8
	vaddss	12(%rdi), %xmm2, %xmm2
	vaddss	16(%rdi), %xmm12, %xmm12
	vmovss	%xmm5, -56(%rsp)
	vaddss	20(%rsi), %xmm1, %xmm5
	vmulss	-64(%rsp), %xmm4, %xmm1
	vsubss	-108(%rsp), %xmm13, %xmm4
	vaddss	20(%rdi), %xmm8, %xmm8
	vmovss	%xmm5, -60(%rsp)
	vaddss	24(%rsi), %xmm1, %xmm5
	vaddss	24(%rdi), %xmm4, %xmm4
	vmovss	%xmm5, -64(%rsp)
	je	.L199
	movl	-68(%rsp), %r11d
.L160:
	vmulss	%xmm0, %xmm0, %xmm5
	testb	%cl, %cl
	vmulss	%xmm7, %xmm7, %xmm1
	cmove	%eax, %ebx
	vmovss	-56(%rsp), %xmm13
	vmulss	%xmm13, %xmm13, %xmm9
	vmovss	-60(%rsp), %xmm13
	vmovss	%xmm5, -72(%rsp)
	vmulss	%xmm13, %xmm13, %xmm15
	vmovss	%xmm1, -76(%rsp)
	vaddss	%xmm5, %xmm1, %xmm1
	vmulss	%xmm10, %xmm10, %xmm5
	vmovss	%xmm9, -100(%rsp)
	vmovss	%xmm15, -104(%rsp)
	vucomiss	.LC0(%rip), %xmm1
	vmulss	%xmm11, %xmm11, %xmm1
	vmovss	%xmm5, -80(%rsp)
	vmovss	%xmm1, -84(%rsp)
	vaddss	%xmm5, %xmm1, %xmm1
	vmulss	%xmm6, %xmm6, %xmm5
	seta	%dl
	orl	%edx, %ecx
	cmpb	$0, -51(%rsp)
	vmovss	%xmm5, -88(%rsp)
	cmove	%eax, %r11d
	vucomiss	.LC0(%rip), %xmm1
	vmulss	%xmm14, %xmm14, %xmm1
	movl	%r11d, -68(%rsp)
	vmovss	%xmm1, -92(%rsp)
	vaddss	%xmm5, %xmm1, %xmm1
	vmulss	%xmm3, %xmm3, %xmm5
	seta	%dl
	orb	%dl, -51(%rsp)
	movzbl	-51(%rsp), %edx
	vmovss	%xmm5, -96(%rsp)
	andl	%ecx, %edx
	testb	%r14b, %r14b
	cmove	%eax, %r10d
	vucomiss	.LC0(%rip), %xmm1
	vmulss	%xmm2, %xmm2, %xmm1
	vaddss	%xmm5, %xmm1, %xmm5
	seta	%r11b
	orl	%r11d, %r14d
	andl	%r14d, %edx
	testb	%r15b, %r15b
	cmove	%eax, %r9d
	vucomiss	.LC0(%rip), %xmm5
	vmulss	%xmm12, %xmm12, %xmm5
	vaddss	%xmm9, %xmm5, %xmm9
	seta	%r11b
	orl	%r11d, %r15d
	andl	%r15d, %edx
	cmpb	$0, -49(%rsp)
	cmove	%eax, %r8d
	vucomiss	.LC0(%rip), %xmm9
	vmulss	%xmm8, %xmm8, %xmm9
	vaddss	%xmm15, %xmm9, %xmm13
	vmovss	-64(%rsp), %xmm15
	seta	%r11b
	orb	%r11b, -49(%rsp)
	vmulss	%xmm15, %xmm15, %xmm15
	andb	-49(%rsp), %dl
	cmpb	$0, -50(%rsp)
	vmovss	%xmm15, -108(%rsp)
	cmove	%eax, %r13d
	vucomiss	.LC0(%rip), %xmm13
	vmulss	%xmm4, %xmm4, %xmm13
	vaddss	%xmm15, %xmm13, %xmm15
	seta	%r11b
	orb	%r11b, -50(%rsp)
	cmpb	$0, -52(%rsp)
	cmove	%eax, %r12d
	vucomiss	.LC0(%rip), %xmm15
	seta	%r11b
	orb	%r11b, -52(%rsp)
	testb	%dl, -50(%rsp)
	je	.L169
	cmpb	$0, -52(%rsp)
	je	.L169
	movl	%ebx, 48(%rsp)
	movl	-68(%rsp), %ebx
	movzbl	-51(%rsp), %edx
	movb	%cl, -48(%rsp)
	movl	%r10d, 56(%rsp)
	movb	%r14b, -46(%rsp)
	movl	%ebx, 52(%rsp)
	movzbl	-49(%rsp), %ebx
	movl	%r9d, 60(%rsp)
	movb	%r15b, -45(%rsp)
	movb	%dl, -47(%rsp)
	movl	%r8d, 64(%rsp)
	movl	%r13d, 68(%rsp)
	movl	%r12d, 72(%rsp)
	movb	%bl, -44(%rsp)
	movzbl	-50(%rsp), %ebx
	movb	$1, -42(%rsp)
	movb	%bl, -43(%rsp)
.L159:
	cmpb	$0, -48(%rsp)
	movl	%eax, %edx
	movq	-120(%rsp), %rcx
	cmovne	48(%rsp), %edx
	cmpb	$0, -47(%rsp)
	movl	%edx, (%rcx)
	movl	%eax, %edx
	cmovne	52(%rsp), %edx
	cmpb	$0, -46(%rsp)
	movl	%edx, 4(%rcx)
	movl	%eax, %edx
	cmovne	56(%rsp), %edx
	cmpb	$0, -45(%rsp)
	movl	%edx, 8(%rcx)
	movl	%eax, %edx
	cmovne	60(%rsp), %edx
	cmpb	$0, -44(%rsp)
	movl	%edx, 12(%rcx)
	movl	%eax, %edx
	cmovne	64(%rsp), %edx
	cmpb	$0, -43(%rsp)
	movl	%edx, 16(%rcx)
	movl	%eax, %edx
	cmovne	68(%rsp), %edx
	cmpb	$0, -42(%rsp)
	cmovne	72(%rsp), %eax
	movl	%edx, 20(%rcx)
	movl	%eax, 24(%rcx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L199:
	.cfi_restore_state
	movl	%ebx, 48(%rsp)
	movl	-68(%rsp), %ebx
	movzbl	-51(%rsp), %edx
	movb	%cl, -48(%rsp)
	movl	%r10d, 56(%rsp)
	movb	%r14b, -46(%rsp)
	movl	%ebx, 52(%rsp)
	movzbl	-49(%rsp), %ebx
	movl	%r9d, 60(%rsp)
	movb	%r15b, -45(%rsp)
	movb	%dl, -47(%rsp)
	movl	%r8d, 64(%rsp)
	movl	%r13d, 68(%rsp)
	movl	%r12d, 72(%rsp)
	movb	%bl, -44(%rsp)
	movzbl	-50(%rsp), %ebx
	movb	%bl, -43(%rsp)
	movzbl	-52(%rsp), %ebx
	movb	%bl, -42(%rsp)
	jmp	.L159
.L177:
	xorl	%eax, %eax
	jmp	.L159
	.cfi_endproc
.LFE606:
	.size	_Z11mandel_par7PfS_iPi, .-_Z11mandel_par7PfS_iPi
	.p2align 4,,15
	.globl	_Z11mandel_par8PfS_iPi
	.type	_Z11mandel_par8PfS_iPi, @function
_Z11mandel_par8PfS_iPi:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$120, %rsp
	testl	%edx, %edx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	(%rdi), %rax
	movl	%edx, -108(%rsp)
	movq	%rcx, -120(%rsp)
	movq	$0, -8(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	%rax, 24(%rsp)
	movq	8(%rdi), %rax
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	%rax, 32(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, 40(%rsp)
	movq	24(%rdi), %rax
	movq	%rax, 48(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 56(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 64(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 72(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 80(%rsp)
	jle	.L221
	movzbl	-1(%rsp), %eax
	vmovss	56(%rsp), %xmm5
	vmovss	60(%rsp), %xmm7
	movzbl	-6(%rsp), %ecx
	vmovss	%xmm5, -20(%rsp)
	vmovaps	%xmm7, %xmm13
	vmovss	64(%rsp), %xmm5
	movzbl	-5(%rsp), %edx
	vmovss	68(%rsp), %xmm7
	movb	%al, -14(%rsp)
	movl	96(%rsp), %eax
	vmovss	%xmm5, -28(%rsp)
	vmovss	%xmm7, -24(%rsp)
	movl	92(%rsp), %r14d
	movzbl	-7(%rsp), %r8d
	vmovss	72(%rsp), %xmm5
	vmovss	76(%rsp), %xmm7
	vmovss	%xmm5, -32(%rsp)
	movzbl	-8(%rsp), %r15d
	movzbl	-4(%rsp), %r13d
	vmovss	80(%rsp), %xmm5
	movzbl	-3(%rsp), %ebx
	vmovss	%xmm7, -36(%rsp)
	movzbl	-2(%rsp), %r11d
	vmovss	84(%rsp), %xmm7
	movl	88(%rsp), %r10d
	vmovss	32(%rsp), %xmm10
	vmovss	24(%rsp), %xmm15
	vmovaps	%xmm10, %xmm1
	vmovss	28(%rsp), %xmm14
	vmovss	36(%rsp), %xmm6
	vmovaps	%xmm14, %xmm10
	vmovss	%xmm5, -40(%rsp)
	vmovaps	%xmm6, %xmm5
	vmovss	%xmm7, -44(%rsp)
	vmovaps	%xmm15, %xmm7
	vmovss	40(%rsp), %xmm2
	vmovss	44(%rsp), %xmm12
	vmovss	48(%rsp), %xmm8
	vmovss	52(%rsp), %xmm4
	movl	%eax, -56(%rsp)
	movl	112(%rsp), %eax
	movl	104(%rsp), %r9d
	movl	%r14d, -60(%rsp)
	movb	%cl, -13(%rsp)
	movl	%edx, %r14d
	movl	100(%rsp), %r12d
	movl	-56(%rsp), %ecx
	movl	%eax, -52(%rsp)
	movl	116(%rsp), %eax
	movl	%r9d, -12(%rsp)
	movl	108(%rsp), %r9d
	movl	-12(%rsp), %edx
	movb	%r8b, -12(%rsp)
	movl	%eax, -48(%rsp)
	xorl	%eax, %eax
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L212:
	vaddss	%xmm7, %xmm7, %xmm14
	addl	$1, %eax
	vsubss	-72(%rsp), %xmm15, %xmm15
	vsubss	-92(%rsp), %xmm0, %xmm0
	vaddss	%xmm2, %xmm2, %xmm2
	vmulss	-20(%rsp), %xmm14, %xmm14
	vaddss	%xmm12, %xmm12, %xmm12
	vaddss	%xmm8, %xmm8, %xmm8
	vaddss	%xmm4, %xmm4, %xmm4
	vaddss	(%rdi), %xmm15, %xmm7
	vaddss	(%rsi), %xmm14, %xmm15
	vaddss	%xmm10, %xmm10, %xmm14
	vmulss	%xmm13, %xmm14, %xmm14
	vmovss	-76(%rsp), %xmm13
	vmovss	%xmm15, -20(%rsp)
	vsubss	-80(%rsp), %xmm13, %xmm15
	vaddss	4(%rsi), %xmm14, %xmm13
	vaddss	%xmm1, %xmm1, %xmm14
	vmovss	-84(%rsp), %xmm1
	vaddss	4(%rdi), %xmm15, %xmm10
	vsubss	-88(%rsp), %xmm1, %xmm15
	vmulss	-28(%rsp), %xmm14, %xmm14
	vaddss	8(%rdi), %xmm15, %xmm1
	vaddss	8(%rsi), %xmm14, %xmm15
	vaddss	%xmm5, %xmm5, %xmm14
	vaddss	12(%rdi), %xmm0, %xmm5
	vmulss	-24(%rsp), %xmm14, %xmm14
	vmovss	%xmm15, -28(%rsp)
	vaddss	12(%rsi), %xmm14, %xmm0
	vmovss	%xmm0, -24(%rsp)
	vmulss	-32(%rsp), %xmm2, %xmm0
	vsubss	-96(%rsp), %xmm3, %xmm2
	vaddss	16(%rsi), %xmm0, %xmm3
	vmulss	-36(%rsp), %xmm12, %xmm0
	vsubss	-100(%rsp), %xmm6, %xmm12
	vaddss	16(%rdi), %xmm2, %xmm2
	vaddss	20(%rsi), %xmm0, %xmm0
	vmovss	%xmm3, -32(%rsp)
	vaddss	20(%rdi), %xmm12, %xmm12
	vmovss	%xmm0, -36(%rsp)
	vmulss	-40(%rsp), %xmm8, %xmm0
	vsubss	-52(%rsp), %xmm9, %xmm8
	vaddss	24(%rsi), %xmm0, %xmm3
	vaddss	24(%rdi), %xmm8, %xmm8
	vmovss	%xmm3, -40(%rsp)
	vmulss	-44(%rsp), %xmm4, %xmm0
	vsubss	-104(%rsp), %xmm11, %xmm4
	cmpl	-108(%rsp), %eax
	vaddss	28(%rsi), %xmm0, %xmm0
	vaddss	28(%rdi), %xmm4, %xmm4
	vmovss	%xmm0, -44(%rsp)
	je	.L245
	movl	-56(%rsp), %r10d
	movl	-64(%rsp), %ecx
	movl	-68(%rsp), %edx
	movl	%r8d, -52(%rsp)
.L202:
	vmovss	-20(%rsp), %xmm6
	vmulss	%xmm7, %xmm7, %xmm15
	testb	%r15b, %r15b
	vmulss	%xmm6, %xmm6, %xmm3
	cmove	%eax, %r10d
	vmulss	%xmm13, %xmm13, %xmm6
	movl	%r10d, -56(%rsp)
	vmovss	-36(%rsp), %xmm11
	vmulss	%xmm11, %xmm11, %xmm9
	vmovss	-40(%rsp), %xmm11
	vaddss	%xmm3, %xmm15, %xmm0
	vmovss	%xmm3, -72(%rsp)
	vmulss	%xmm10, %xmm10, %xmm3
	vmovss	%xmm6, -80(%rsp)
	vmulss	%xmm11, %xmm11, %xmm11
	vmovss	%xmm9, -100(%rsp)
	vucomiss	.LC0(%rip), %xmm0
	vaddss	%xmm3, %xmm6, %xmm0
	vmovss	%xmm3, -76(%rsp)
	vmulss	%xmm1, %xmm1, %xmm3
	vmovss	%xmm3, -84(%rsp)
	seta	%r8b
	orl	%r8d, %r15d
	cmpb	$0, -12(%rsp)
	movl	-60(%rsp), %r8d
	cmove	%eax, %r8d
	vucomiss	.LC0(%rip), %xmm0
	movl	%r8d, -60(%rsp)
	vmovss	-28(%rsp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm6
	seta	%r8b
	orb	%r8b, -12(%rsp)
	vaddss	%xmm3, %xmm6, %xmm0
	movzbl	-12(%rsp), %r10d
	vmovss	%xmm6, -88(%rsp)
	movl	-52(%rsp), %r8d
	vmovss	-24(%rsp), %xmm6
	vmulss	%xmm6, %xmm6, %xmm3
	vmovss	-32(%rsp), %xmm6
	andl	%r15d, %r10d
	cmpb	$0, -13(%rsp)
	vmulss	%xmm6, %xmm6, %xmm6
	vmovss	%xmm3, -92(%rsp)
	cmove	%eax, %ecx
	vmovss	%xmm6, -96(%rsp)
	vucomiss	.LC0(%rip), %xmm0
	vmulss	%xmm5, %xmm5, %xmm0
	movl	%ecx, -64(%rsp)
	vaddss	%xmm3, %xmm0, %xmm3
	seta	%cl
	orb	%cl, -13(%rsp)
	andb	-13(%rsp), %r10b
	testb	%r14b, %r14b
	cmove	%eax, %r12d
	vucomiss	.LC0(%rip), %xmm3
	vmulss	%xmm2, %xmm2, %xmm3
	vaddss	%xmm6, %xmm3, %xmm6
	seta	%cl
	orl	%ecx, %r14d
	andl	%r14d, %r10d
	testb	%r13b, %r13b
	cmove	%eax, %edx
	vucomiss	.LC0(%rip), %xmm6
	vmulss	%xmm12, %xmm12, %xmm6
	movl	%edx, -68(%rsp)
	vaddss	%xmm9, %xmm6, %xmm9
	seta	%dl
	orl	%edx, %r13d
	andl	%r13d, %r10d
	testb	%bl, %bl
	cmove	%eax, %r9d
	vucomiss	.LC0(%rip), %xmm9
	vmulss	%xmm8, %xmm8, %xmm9
	vmovss	%xmm11, -52(%rsp)
	movl	-48(%rsp), %ecx
	vmovss	-44(%rsp), %xmm14
	vmulss	%xmm14, %xmm14, %xmm14
	vaddss	%xmm11, %xmm9, %xmm11
	seta	%dl
	orl	%edx, %ebx
	vmovss	%xmm14, -104(%rsp)
	andl	%ebx, %r10d
	testb	%r11b, %r11b
	cmove	%eax, %r8d
	vucomiss	.LC0(%rip), %xmm11
	vmulss	%xmm4, %xmm4, %xmm11
	vaddss	%xmm14, %xmm11, %xmm14
	seta	%dl
	orl	%edx, %r11d
	cmpb	$0, -14(%rsp)
	cmove	%eax, %ecx
	vucomiss	.LC0(%rip), %xmm14
	movl	%ecx, -48(%rsp)
	seta	%dl
	orb	%dl, -14(%rsp)
	testb	%r11b, %r10b
	je	.L212
	cmpb	$0, -14(%rsp)
	je	.L212
	movl	%r8d, %esi
	vmovd	-68(%rsp), %xmm7
	movzbl	-12(%rsp), %r8d
	movl	%esi, -12(%rsp)
	movzbl	-13(%rsp), %ecx
	vmovd	-12(%rsp), %xmm5
	vpinsrd	$1, %r9d, %xmm7, %xmm2
	vmovd	-56(%rsp), %xmm7
	movb	%r15b, -8(%rsp)
	vpinsrd	$1, -48(%rsp), %xmm5, %xmm0
	vmovd	-64(%rsp), %xmm5
	movb	%r8b, -7(%rsp)
	vpinsrd	$1, -60(%rsp), %xmm7, %xmm3
	movb	%cl, -6(%rsp)
	movb	%r14b, -5(%rsp)
	vpinsrd	$1, %r12d, %xmm5, %xmm1
	movb	%r13b, -4(%rsp)
	movb	%bl, -3(%rsp)
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	movb	%r11b, -2(%rsp)
	movb	$1, -1(%rsp)
	vpunpcklqdq	%xmm1, %xmm3, %xmm1
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 88(%rsp)
	vzeroupper
.L201:
	cmpb	$0, -8(%rsp)
	movl	%eax, %edx
	movq	-120(%rsp), %rbx
	cmovne	88(%rsp), %edx
	cmpb	$0, -7(%rsp)
	movl	%edx, (%rbx)
	movl	%eax, %edx
	cmovne	92(%rsp), %edx
	cmpb	$0, -6(%rsp)
	movl	%edx, 4(%rbx)
	movl	%eax, %edx
	cmovne	96(%rsp), %edx
	cmpb	$0, -5(%rsp)
	movl	%edx, 8(%rbx)
	movl	%eax, %edx
	cmovne	100(%rsp), %edx
	cmpb	$0, -4(%rsp)
	movl	%edx, 12(%rbx)
	movl	%eax, %edx
	cmovne	104(%rsp), %edx
	cmpb	$0, -3(%rsp)
	movl	%edx, 16(%rbx)
	movl	%eax, %edx
	cmovne	108(%rsp), %edx
	cmpb	$0, -2(%rsp)
	movl	%edx, 20(%rbx)
	movl	%eax, %edx
	cmovne	112(%rsp), %edx
	cmpb	$0, -1(%rsp)
	cmovne	116(%rsp), %eax
	movl	%edx, 24(%rbx)
	movl	%eax, 28(%rbx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	.cfi_restore_state
	movl	%r8d, %esi
	vmovd	-68(%rsp), %xmm7
	movzbl	-12(%rsp), %r8d
	movl	%esi, -12(%rsp)
	movzbl	-13(%rsp), %ecx
	vmovd	-12(%rsp), %xmm5
	vpinsrd	$1, %r9d, %xmm7, %xmm2
	vmovd	-56(%rsp), %xmm7
	movb	%bl, -3(%rsp)
	vpinsrd	$1, -48(%rsp), %xmm5, %xmm0
	vmovd	-64(%rsp), %xmm5
	movzbl	-14(%rsp), %ebx
	vpinsrd	$1, -60(%rsp), %xmm7, %xmm3
	movb	%r15b, -8(%rsp)
	movb	%r8b, -7(%rsp)
	vpinsrd	$1, %r12d, %xmm5, %xmm1
	movb	%cl, -6(%rsp)
	movb	%r14b, -5(%rsp)
	vpunpcklqdq	%xmm0, %xmm2, %xmm0
	movb	%r13b, -4(%rsp)
	movb	%r11b, -2(%rsp)
	movb	%bl, -1(%rsp)
	vpunpcklqdq	%xmm1, %xmm3, %xmm1
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 88(%rsp)
	vzeroupper
	jmp	.L201
.L221:
	xorl	%eax, %eax
	jmp	.L201
	.cfi_endproc
.LFE607:
	.size	_Z11mandel_par8PfS_iPi, .-_Z11mandel_par8PfS_iPi
	.p2align 4,,15
	.globl	_Z10mandel_refffi
	.type	_Z10mandel_refffi, @function
_Z10mandel_refffi:
.LFB599:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L251
	vmulss	%xmm0, %xmm0, %xmm4
	vmulss	%xmm1, %xmm1, %xmm5
	vaddss	%xmm5, %xmm4, %xmm2
	vucomiss	.LC0(%rip), %xmm2
	ja	.L251
	vmovaps	%xmm1, %xmm3
	vmovaps	%xmm0, %xmm2
	xorl	%eax, %eax
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L249:
	vmulss	%xmm2, %xmm2, %xmm4
	vmulss	%xmm3, %xmm3, %xmm5
	vaddss	%xmm5, %xmm4, %xmm6
	vucomiss	.LC0(%rip), %xmm6
	ja	.L252
.L248:
	vaddss	%xmm2, %xmm2, %xmm2
	addl	$1, %eax
	cmpl	%edi, %eax
	vmulss	%xmm3, %xmm2, %xmm3
	vsubss	%xmm5, %xmm4, %xmm2
	vaddss	%xmm3, %xmm1, %xmm3
	vaddss	%xmm2, %xmm0, %xmm2
	jne	.L249
	rep ret
.L251:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L252:
	rep ret
	.cfi_endproc
.LFE599:
	.size	_Z10mandel_refffi, .-_Z10mandel_refffi
	.p2align 4,,15
	.globl	_Z16mandelbrotSerialPFiffiEffffiiiiiPi
	.type	_Z16mandelbrotSerialPFiffiEffffiiiiiPi, @function
_Z16mandelbrotSerialPFiffiEffffiiiiiPi:
.LFB608:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vsubss	%xmm0, %xmm2, %xmm2
	addl	%ecx, %r8d
	vsubss	%xmm1, %xmm3, %xmm3
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	cmpl	%r8d, %ecx
	vmovss	%xmm0, 12(%rsp)
	movl	%ecx, 24(%rsp)
	movl	%r8d, 28(%rsp)
	vcvtsi2ss	%esi, %xmm0, %xmm0
	vmovss	%xmm1, 44(%rsp)
	vdivss	%xmm0, %xmm2, %xmm5
	vcvtsi2ss	%edx, %xmm0, %xmm0
	movl	%ecx, %edx
	vdivss	%xmm0, %xmm3, %xmm6
	vmovss	%xmm5, 8(%rsp)
	vmovss	%xmm6, 40(%rsp)
	jge	.L259
	movslq	%esi, %rax
	movq	%rdi, %r12
	movl	%r9d, %r13d
	salq	$2, %rax
	xorl	%ebx, %ebx
	imull	%esi, %edx
	movq	%rax, 32(%rsp)
	movq	112(%rsp), %rax
	movslq	%edx, %rdx
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L255:
	testl	%ebp, %ebp
	jle	.L257
	vcvtsi2ss	24(%rsp), %xmm0, %xmm0
	vmulss	40(%rsp), %xmm0, %xmm0
	movq	16(%rsp), %r14
	xorl	%r15d, %r15d
	vaddss	44(%rsp), %xmm0, %xmm4
	vmovss	%xmm4, 4(%rsp)
	.p2align 4,,10
	.p2align 3
.L258:
	vcvtsi2ss	%r15d, %xmm0, %xmm0
	movl	%r13d, %edi
	addl	$1, %r15d
	vmovss	4(%rsp), %xmm1
	addq	$4, %r14
	vmulss	8(%rsp), %xmm0, %xmm0
	vaddss	12(%rsp), %xmm0, %xmm0
	call	*%r12
	movslq	%eax, %rsi
	movl	%eax, -4(%r14)
	addq	%rsi, %rbx
	cmpl	%ebp, %r15d
	jne	.L258
.L257:
	addl	$1, 24(%rsp)
	movq	32(%rsp), %rax
	addq	%rax, 16(%rsp)
	movl	28(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	jne	.L255
.L260:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L259:
	.cfi_restore_state
	xorl	%ebx, %ebx
	jmp	.L260
	.cfi_endproc
.LFE608:
	.size	_Z16mandelbrotSerialPFiffiEffffiiiiiPi, .-_Z16mandelbrotSerialPFiffiEffffiiiiiPi
	.p2align 4,,15
	.globl	_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_
	.type	_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_, @function
_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_:
.LFB609:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vsubss	%xmm0, %xmm2, %xmm2
	vsubss	%xmm1, %xmm3, %xmm3
	movl	%esi, %r11d
	movl	%edx, %esi
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	%r8d, %r15d
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$256, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	vmovss	%xmm0, -72(%rbp)
	movq	8(%r10), %rax
	vcvtsi2ss	%edx, %xmm0, %xmm0
	movq	%rdi, -120(%rbp)
	movl	%edx, -104(%rbp)
	movq	%rax, %rdi
	movq	%rax, -304(%rbp)
	leal	(%r8,%r9), %eax
	movl	(%r10), %r13d
	movl	%eax, -292(%rbp)
	subl	%r11d, %eax
	cmpl	%eax, %r8d
	movl	%eax, -144(%rbp)
	vdivss	%xmm0, %xmm2, %xmm7
	vcvtsi2ss	%ecx, %xmm0, %xmm0
	vdivss	%xmm0, %xmm3, %xmm8
	vmovss	%xmm7, -68(%rbp)
	jg	.L290
	imull	%r11d, %edx
	movslq	%r11d, %rax
	vbroadcastss	%xmm8, %ymm7
	leaq	18(,%rax,4), %rax
	xorl	%r14d, %r14d
	movl	%r13d, -108(%rbp)
	vmovaps	%ymm7, -208(%rbp)
	vbroadcastss	%xmm1, %ymm7
	movslq	%edx, %rdx
	movq	%rax, -272(%rbp)
	andq	$-16, -272(%rbp)
	leaq	0(,%rdx,4), %rbx
	movl	%esi, %edx
	vmovaps	%ymm7, -240(%rbp)
	imull	%r8d, %edx
	movq	%rbx, -280(%rbp)
	movslq	%edx, %rdx
	leaq	(%rdi,%rdx,4), %rdi
	movl	%r11d, %edx
	movq	%rdi, -264(%rbp)
	leaq	0(,%rdx,4), %rdi
	movslq	%esi, %rdx
	leaq	0(,%rdx,4), %r10
	leal	-1(%r11), %edx
	movq	%rdi, -128(%rbp)
	leaq	0(,%rdx,4), %rsi
	movq	%r10, %r15
	movq	%rsi, -288(%rbp)
.L278:
	movq	-272(%rbp), %rax
	movl	-104(%rbp), %ecx
	movq	%rsp, -256(%rbp)
	subq	%rax, %rsp
	movq	%rsp, %rbx
	subq	%rax, %rsp
	movq	%rsp, %r12
	subq	%rax, %rsp
	testl	%ecx, %ecx
	movq	%rsp, -56(%rbp)
	jle	.L264
	movq	%rbx, %rax
	movq	-288(%rbp), %rdi
	movl	%r8d, -76(%rbp)
	andl	$31, %eax
	vbroadcastss	-76(%rbp), %ymm7
	shrq	$2, %rax
	negq	%rax
	leaq	4(%rsp,%rdi), %r13
	vmovdqa	%ymm7, -176(%rbp)
	andl	$7, %eax
	cmpl	%r11d, %eax
	cmova	%r11d, %eax
	cmpl	$9, %r11d
	cmovbe	%r11d, %eax
	xorl	%r10d, %r10d
	movl	%eax, %r9d
	movl	%r11d, %eax
	subl	%r9d, %eax
	movl	%eax, -140(%rbp)
	shrl	$3, %eax
	movl	%eax, -112(%rbp)
	sall	$3, %eax
	movl	%eax, -100(%rbp)
	movl	%r9d, %eax
	salq	$2, %rax
	leaq	(%rbx,%rax), %rsi
	addq	%r12, %rax
	movq	%rax, -248(%rbp)
	movq	-264(%rbp), %rax
	movq	%rsi, -136(%rbp)
	movq	%rax, -64(%rbp)
	.p2align 4,,10
	.p2align 3
.L265:
	testl	%r11d, %r11d
	jle	.L267
	vcvtsi2ss	%r10d, %xmm0, %xmm0
	testl	%r9d, %r9d
	vmulss	-68(%rbp), %xmm0, %xmm0
	vaddss	-72(%rbp), %xmm0, %xmm0
	je	.L291
	vcvtsi2ss	%r8d, %xmm2, %xmm2
	cmpl	$1, %r9d
	vmovss	%xmm0, (%rbx)
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r12)
	je	.L292
	leal	1(%r8), %eax
	cmpl	$2, %r9d
	vmovss	%xmm0, 4(%rbx)
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 4(%r12)
	je	.L293
	leal	2(%r8), %eax
	cmpl	$3, %r9d
	vmovss	%xmm0, 8(%rbx)
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 8(%r12)
	je	.L294
	leal	3(%r8), %eax
	cmpl	$4, %r9d
	vmovss	%xmm0, 12(%rbx)
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 12(%r12)
	je	.L295
	leal	4(%r8), %eax
	cmpl	$5, %r9d
	vmovss	%xmm0, 16(%rbx)
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 16(%r12)
	je	.L296
	leal	5(%r8), %eax
	cmpl	$6, %r9d
	vmovss	%xmm0, 20(%rbx)
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 20(%r12)
	je	.L297
	leal	6(%r8), %eax
	cmpl	$7, %r9d
	vmovss	%xmm0, 24(%rbx)
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 24(%r12)
	je	.L298
	leal	7(%r8), %eax
	cmpl	$8, %r9d
	vmovss	%xmm0, 28(%rbx)
	vcvtsi2ss	%eax, %xmm2, %xmm2
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 28(%r12)
	je	.L299
	leal	8(%r8), %eax
	vmovss	%xmm0, 32(%rbx)
	vcvtsi2ss	%eax, %xmm2, %xmm2
	movl	$9, %eax
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, 32(%r12)
.L269:
	cmpl	%r11d, %r9d
	je	.L270
.L268:
	movl	-100(%rbp), %edx
	testl	%edx, %edx
	je	.L271
	leal	2(%rax), %edi
	leal	4(%rax), %esi
	leal	3(%rax), %ecx
	leal	1(%rax), %edx
	movl	%edi, -76(%rbp)
	leal	6(%rax), %edi
	movl	%esi, -80(%rbp)
	leal	5(%rax), %esi
	movl	%edi, -84(%rbp)
	leal	7(%rax), %edi
	vmovd	-84(%rbp), %xmm7
	vpinsrd	$1, %edi, %xmm7, %xmm4
	vmovd	-80(%rbp), %xmm7
	movq	-136(%rbp), %rdi
	vpinsrd	$1, %esi, %xmm7, %xmm2
	vmovd	-76(%rbp), %xmm7
	movl	%eax, -76(%rbp)
	movq	-248(%rbp), %rsi
	vpinsrd	$1, %ecx, %xmm7, %xmm3
	vmovd	-76(%rbp), %xmm7
	xorl	%ecx, %ecx
	vpunpcklqdq	%xmm4, %xmm2, %xmm2
	vbroadcastss	%xmm0, %ymm4
	vpinsrd	$1, %edx, %xmm7, %xmm5
	xorl	%edx, %edx
	vpunpcklqdq	%xmm3, %xmm5, %xmm3
	vinserti128	$0x1, %xmm2, %ymm3, %ymm2
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L272:
	vmovdqa	%ymm3, %ymm2
.L276:
	vpaddd	.LC1(%rip), %ymm2, %ymm3
	vpaddd	-176(%rbp), %ymm2, %ymm2
	vcvtdq2ps	%ymm2, %ymm2
	vmulps	-208(%rbp), %ymm2, %ymm2
	vmovaps	%ymm4, (%rdi,%rdx)
	addl	$1, %ecx
	vaddps	-240(%rbp), %ymm2, %ymm2
	vmovups	%xmm2, (%rsi,%rdx)
	vextractf128	$0x1, %ymm2, 16(%rsi,%rdx)
	addq	$32, %rdx
	cmpl	-112(%rbp), %ecx
	jb	.L272
	movl	-100(%rbp), %edi
	movl	-140(%rbp), %esi
	addl	%edi, %eax
	cmpl	%esi, %edi
	je	.L270
	.p2align 4,,10
	.p2align 3
.L271:
	leal	(%rax,%r8), %ecx
	movslq	%eax, %rdx
	vmovss	%xmm0, (%rbx,%rdx,4)
	vcvtsi2ss	%ecx, %xmm2, %xmm2
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r12,%rdx,4)
	leal	1(%rax), %edx
	cmpl	%edx, %r11d
	jle	.L270
	movslq	%edx, %rcx
	addl	%r8d, %edx
	vcvtsi2ss	%edx, %xmm2, %xmm2
	leal	2(%rax), %edx
	vmovss	%xmm0, (%rbx,%rcx,4)
	cmpl	%edx, %r11d
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r12,%rcx,4)
	jle	.L270
	movslq	%edx, %rcx
	addl	%r8d, %edx
	vcvtsi2ss	%edx, %xmm2, %xmm2
	leal	3(%rax), %edx
	vmovss	%xmm0, (%rbx,%rcx,4)
	cmpl	%edx, %r11d
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r12,%rcx,4)
	jle	.L270
	movslq	%edx, %rcx
	addl	%r8d, %edx
	vcvtsi2ss	%edx, %xmm2, %xmm2
	leal	4(%rax), %edx
	vmovss	%xmm0, (%rbx,%rcx,4)
	cmpl	%edx, %r11d
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r12,%rcx,4)
	jle	.L270
	movslq	%edx, %rcx
	addl	%r8d, %edx
	vcvtsi2ss	%edx, %xmm2, %xmm2
	leal	5(%rax), %edx
	vmovss	%xmm0, (%rbx,%rcx,4)
	cmpl	%edx, %r11d
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r12,%rcx,4)
	jle	.L270
	movslq	%edx, %rcx
	addl	%r8d, %edx
	addl	$6, %eax
	vcvtsi2ss	%edx, %xmm2, %xmm2
	cmpl	%eax, %r11d
	vmovss	%xmm0, (%rbx,%rcx,4)
	vmulss	%xmm8, %xmm2, %xmm2
	vaddss	%xmm1, %xmm2, %xmm2
	vmovss	%xmm2, (%r12,%rcx,4)
	jle	.L270
	movslq	%eax, %rdx
	addl	%r8d, %eax
	vmovss	%xmm0, (%rbx,%rdx,4)
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmulss	%xmm8, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r12,%rdx,4)
.L270:
	movq	-128(%rbp), %rdx
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	movl	%r8d, -96(%rbp)
	vmovss	%xmm1, -80(%rbp)
	movl	%r11d, -92(%rbp)
	movl	%r9d, -88(%rbp)
	vmovss	%xmm8, -76(%rbp)
	movl	%r10d, -84(%rbp)
	vzeroupper
	call	memset
	movl	-108(%rbp), %edx
	movq	-120(%rbp), %r10
	movq	%r12, %rsi
	movq	-56(%rbp), %rcx
	movq	%rbx, %rdi
	call	*%r10
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	-84(%rbp), %r10d
	movl	-88(%rbp), %r9d
	movl	-92(%rbp), %r11d
	movl	-96(%rbp), %r8d
	vmovss	-76(%rbp), %xmm8
	vmovss	-80(%rbp), %xmm1
	.p2align 4,,10
	.p2align 3
.L277:
	movl	(%rax), %ecx
	addq	$4, %rax
	movl	%ecx, (%rdx)
	movslq	-4(%rax), %rcx
	addq	%r15, %rdx
	addq	%rcx, %r14
	cmpq	%r13, %rax
	jne	.L277
	addl	$1, %r10d
	addq	$4, -64(%rbp)
	cmpl	-104(%rbp), %r10d
	jne	.L265
.L264:
	addl	%r11d, %r8d
	movq	-280(%rbp), %rax
	addq	%rax, -264(%rbp)
	cmpl	-144(%rbp), %r8d
	movq	-256(%rbp), %rsp
	jle	.L278
	movl	-108(%rbp), %r13d
	movl	%r8d, %r15d
	vzeroupper
.L263:
	movl	-292(%rbp), %r9d
	cmpl	%r15d, %r9d
	jle	.L311
	movl	-104(%rbp), %r8d
	movq	-304(%rbp), %rsi
	movl	%r8d, %eax
	movslq	%r8d, %rdi
	imull	%r15d, %eax
	salq	$2, %rdi
	cltq
	leaq	(%rsi,%rax,4), %rsi
.L280:
	testl	%r8d, %r8d
	jle	.L287
	vcvtsi2ss	%r15d, %xmm7, %xmm7
	xorl	%edx, %edx
	vmulss	%xmm7, %xmm8, %xmm7
	vaddss	%xmm7, %xmm1, %xmm7
	.p2align 4,,10
	.p2align 3
.L288:
	vcvtsi2ss	%edx, %xmm6, %xmm6
	testl	%r13d, %r13d
	vmulss	-68(%rbp), %xmm6, %xmm6
	vaddss	-72(%rbp), %xmm6, %xmm6
	jle	.L301
	vmulss	%xmm6, %xmm6, %xmm3
	vmulss	%xmm7, %xmm7, %xmm4
	vaddss	%xmm4, %xmm3, %xmm0
	vucomiss	.LC0(%rip), %xmm0
	ja	.L301
	vmovaps	%xmm7, %xmm2
	vmovaps	%xmm6, %xmm0
	xorl	%eax, %eax
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L285:
	vmulss	%xmm0, %xmm0, %xmm3
	vmulss	%xmm2, %xmm2, %xmm4
	vaddss	%xmm4, %xmm3, %xmm5
	vucomiss	.LC0(%rip), %xmm5
	ja	.L313
.L282:
	vaddss	%xmm0, %xmm0, %xmm0
	addl	$1, %eax
	cmpl	%r13d, %eax
	vmulss	%xmm0, %xmm2, %xmm2
	vsubss	%xmm4, %xmm3, %xmm0
	vaddss	%xmm7, %xmm2, %xmm2
	vaddss	%xmm0, %xmm6, %xmm0
	jne	.L285
.L313:
	movslq	%eax, %rcx
.L281:
	movl	%eax, (%rsi,%rdx,4)
	addq	$1, %rdx
	addq	%rcx, %r14
	cmpl	%edx, %r8d
	jg	.L288
.L287:
	addl	$1, %r15d
	addq	%rdi, %rsi
	cmpl	%r9d, %r15d
	jne	.L280
.L311:
	leaq	-48(%rbp), %rsp
	movq	%r14, %rax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L291:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L268
.L267:
	movq	-56(%rbp), %rcx
	movl	-108(%rbp), %edx
	movq	%r12, %rsi
	movq	-120(%rbp), %rax
	movq	%rbx, %rdi
	movl	%r8d, -96(%rbp)
	movl	%r11d, -92(%rbp)
	movl	%r9d, -88(%rbp)
	vmovss	%xmm1, -80(%rbp)
	movl	%r10d, -84(%rbp)
	vmovss	%xmm8, -76(%rbp)
	vzeroupper
	call	*%rax
	movl	-84(%rbp), %r10d
	addq	$4, -64(%rbp)
	vmovss	-76(%rbp), %xmm8
	vmovss	-80(%rbp), %xmm1
	movl	-88(%rbp), %r9d
	addl	$1, %r10d
	cmpl	-104(%rbp), %r10d
	movl	-92(%rbp), %r11d
	movl	-96(%rbp), %r8d
	jne	.L265
	jmp	.L264
.L301:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.L281
.L299:
	movl	$8, %eax
	.p2align 4,,2
	jmp	.L269
.L292:
	movl	$1, %eax
	jmp	.L269
.L298:
	movl	$7, %eax
	jmp	.L269
.L297:
	movl	$6, %eax
	jmp	.L269
.L296:
	movl	$5, %eax
	jmp	.L269
.L295:
	movl	$4, %eax
	jmp	.L269
.L294:
	movl	$3, %eax
	jmp	.L269
.L293:
	movl	$2, %eax
	jmp	.L269
.L290:
	xorl	%r14d, %r14d
	jmp	.L263
	.cfi_endproc
.LFE609:
	.size	_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_, .-_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_
	.globl	par_funs
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"ILP parallelism x1"
.LC3:
	.string	"ILP parallelism x2"
.LC4:
	.string	"ILP parallelism x3"
.LC5:
	.string	"ILP parallelism x4"
.LC6:
	.string	"ILP parallelism x5"
.LC7:
	.string	"ILP parallelism x6"
.LC8:
	.string	"ILP parallelism x7"
.LC9:
	.string	"ILP parallelism x8"
.LC10:
	.string	""
	.data
	.align 32
	.type	par_funs, @object
	.size	par_funs, 216
par_funs:
	.long	1
	.zero	4
	.quad	_Z11mandel_par1PfS_iPi
	.quad	.LC2
	.long	2
	.zero	4
	.quad	_Z11mandel_par2PfS_iPi
	.quad	.LC3
	.long	3
	.zero	4
	.quad	_Z11mandel_par3PfS_iPi
	.quad	.LC4
	.long	4
	.zero	4
	.quad	_Z11mandel_par4PfS_iPi
	.quad	.LC5
	.long	5
	.zero	4
	.quad	_Z11mandel_par5PfS_iPi
	.quad	.LC6
	.long	6
	.zero	4
	.quad	_Z11mandel_par6PfS_iPi
	.quad	.LC7
	.long	7
	.zero	4
	.quad	_Z11mandel_par7PfS_iPi
	.quad	.LC8
	.long	8
	.zero	4
	.quad	_Z11mandel_par8PfS_iPi
	.quad	.LC9
	.long	0
	.zero	4
	.quad	0
	.quad	.LC10
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1082130432
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
