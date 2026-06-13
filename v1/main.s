	.file	"main.cpp"
 # GNU C++20 (Rev2, Built by MSYS2 project) version 13.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.0-p12, MPC version 1.3.1, isl version isl-0.26-GMP

 # warning: MPFR header version 4.2.0-p12 differs from library version 4.2.1.
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=nocona -std=c++20
	.text
	.section	.text$_ZSt23__is_constant_evaluatedv,"x"
	.linkonce discard
	.globl	_ZSt23__is_constant_evaluatedv
	.def	_ZSt23__is_constant_evaluatedv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt23__is_constant_evaluatedv
_ZSt23__is_constant_evaluatedv:
.LFB1:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
 # C:/msys64/ucrt64/include/c++/13.2.0/x86_64-w64-mingw32/bits/c++config.h:547:     return __builtin_is_constant_evaluated();
	movl	$0, %eax	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/x86_64-w64-mingw32/bits/c++config.h:551:   }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt21is_constant_evaluatedv,"x"
	.linkonce discard
	.globl	_ZSt21is_constant_evaluatedv
	.def	_ZSt21is_constant_evaluatedv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt21is_constant_evaluatedv
_ZSt21is_constant_evaluatedv:
.LFB20:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
 # C:/msys64/ucrt64/include/c++/13.2.0/type_traits:3649:     return __builtin_is_constant_evaluated();
	movl	$0, %eax	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/type_traits:3651:   }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB204:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # D.12740, D.12740
	movq	%rdx, 24(%rbp)	 # __p, __p
 # C:/msys64/ucrt64/include/c++/13.2.0/new:175: { return __p; }
	movq	24(%rbp), %rax	 # __p, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/new:175: { return __p; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE6assignERcRKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6assignERcRKc
	.def	_ZNSt11char_traitsIcE6assignERcRKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6assignERcRKc
_ZNSt11char_traitsIcE6assignERcRKc:
.LFB1773:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __c1, __c1
	movq	%rdx, 24(%rbp)	 # __c2, __c2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:364: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:364: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.30_5
	je	.L8	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:365: 	  std::construct_at(__builtin_addressof(__c1), __c2);
	movq	24(%rbp), %rdx	 # __c2, tmp84
	movq	16(%rbp), %rax	 # __c1, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:369:       }
	jmp	.L10	 #
.L8:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:368: 	__c1 = __c2;
	movq	24(%rbp), %rax	 # __c2, tmp86
	movzbl	(%rax), %edx	 # *__c2_6(D), _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:368: 	__c1 = __c2;
	movq	16(%rbp), %rax	 # __c1, tmp87
	movb	%dl, (%rax)	 # _1, *__c1_7(D)
.L10:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:369:       }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6lengthEPKc
	.def	_ZNSt11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6lengthEPKc
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB1777:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __s, __s
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:406: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:406: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.0_5
	je	.L12	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:407: 	  return __gnu_cxx::char_traits<char_type>::length(__s);
	movq	16(%rbp), %rax	 # __s, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:407: 	  return __gnu_cxx::char_traits<char_type>::length(__s);
	jmp	.L13	 #
.L12:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:409: 	return __builtin_strlen(__s);
	movq	16(%rbp), %rax	 # __s, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	strlen	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:409: 	return __builtin_strlen(__s);
	nop	
.L13:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:410:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE4moveEPcPKcy,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE4moveEPcPKcy
	.def	_ZNSt11char_traitsIcE4moveEPcPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE4moveEPcPKcy
_ZNSt11char_traitsIcE4moveEPcPKcy:
.LFB1779:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __s1, __s1
	movq	%rdx, 24(%rbp)	 # __s2, __s2
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:427: 	if (__n == 0)
	cmpq	$0, 32(%rbp)	 #, __n
	jne	.L15	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:428: 	  return __s1;
	movq	16(%rbp), %rax	 # __s1, _1
	jmp	.L16	 #
.L15:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:430: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:430: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.47_6
	je	.L17	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:431: 	  return __gnu_cxx::char_traits<char_type>::move(__s1, __s2, __n);
	movq	32(%rbp), %rcx	 # __n, tmp85
	movq	24(%rbp), %rdx	 # __s2, tmp86
	movq	16(%rbp), %rax	 # __s1, tmp87
	movq	%rcx, %r8	 # tmp85,
	movq	%rax, %rcx	 # tmp87,
	call	_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:431: 	  return __gnu_cxx::char_traits<char_type>::move(__s1, __s2, __n);
	jmp	.L16	 #
.L17:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:433: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	movq	32(%rbp), %rcx	 # __n, tmp90
	movq	24(%rbp), %rdx	 # __s2, tmp91
	movq	16(%rbp), %rax	 # __s1, tmp92
	movq	%rcx, %r8	 # tmp90,
	movq	%rax, %rcx	 # tmp92,
	call	memmove	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:433: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	nop	
.L16:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:434:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE4copyEPcPKcy,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE4copyEPcPKcy
	.def	_ZNSt11char_traitsIcE4copyEPcPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE4copyEPcPKcy
_ZNSt11char_traitsIcE4copyEPcPKcy:
.LFB1780:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __s1, __s1
	movq	%rdx, 24(%rbp)	 # __s2, __s2
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:439: 	if (__n == 0)
	cmpq	$0, 32(%rbp)	 #, __n
	jne	.L19	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:440: 	  return __s1;
	movq	16(%rbp), %rax	 # __s1, _1
	jmp	.L20	 #
.L19:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:442: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:442: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.31_6
	je	.L21	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:443: 	  return __gnu_cxx::char_traits<char_type>::copy(__s1, __s2, __n);
	movq	32(%rbp), %rcx	 # __n, tmp85
	movq	24(%rbp), %rdx	 # __s2, tmp86
	movq	16(%rbp), %rax	 # __s1, tmp87
	movq	%rcx, %r8	 # tmp85,
	movq	%rax, %rcx	 # tmp87,
	call	_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:443: 	  return __gnu_cxx::char_traits<char_type>::copy(__s1, __s2, __n);
	jmp	.L20	 #
.L21:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:445: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	16(%rbp), %rdx	 # __s1, tmp88
	movq	24(%rbp), %rax	 # __s2, tmp89
	movq	%rdx, %rcx	 # tmp88, tmp91
	movq	%rax, %rdx	 # tmp89, tmp92
	movq	32(%rbp), %rax	 # __n, tmp93
	movq	%rax, %r8	 # tmp93,
	call	memcpy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:445: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	nop	
.L20:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:446:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE6assignEPcyc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6assignEPcyc
	.def	_ZNSt11char_traitsIcE6assignEPcyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6assignEPcyc
_ZNSt11char_traitsIcE6assignEPcyc:
.LFB1781:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __s, __s
	movq	%rdx, 24(%rbp)	 # __n, __n
	movl	%r8d, %eax	 # __a, tmp87
	movb	%al, 32(%rbp)	 # tmp88, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:451: 	if (__n == 0)
	cmpq	$0, 24(%rbp)	 #, __n
	jne	.L23	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:452: 	  return __s;
	movq	16(%rbp), %rax	 # __s, _3
	jmp	.L24	 #
.L23:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:454: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:454: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.74_8
	je	.L25	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:455: 	  return __gnu_cxx::char_traits<char_type>::assign(__s, __n, __a);
	movsbl	32(%rbp), %ecx	 # __a, _1
	movq	24(%rbp), %rdx	 # __n, tmp89
	movq	16(%rbp), %rax	 # __s, tmp90
	movl	%ecx, %r8d	 # _1,
	movq	%rax, %rcx	 # tmp90,
	call	_ZN9__gnu_cxx11char_traitsIcE6assignEPcyc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:455: 	  return __gnu_cxx::char_traits<char_type>::assign(__s, __n, __a);
	jmp	.L24	 #
.L25:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:457: 	return static_cast<char_type*>(__builtin_memset(__s, __a, __n));
	movsbl	32(%rbp), %edx	 # __a, _2
	movq	24(%rbp), %rcx	 # __n, tmp93
	movq	16(%rbp), %rax	 # __s, tmp94
	movq	%rcx, %r8	 # tmp93,
	movq	%rax, %rcx	 # tmp94,
	call	memset	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:457: 	return static_cast<char_type*>(__builtin_memset(__s, __a, __n));
	nop	
.L24:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:458:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt3minIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIyERKT_S2_S2_
	.def	_ZSt3minIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIyERKT_S2_S2_
_ZSt3minIyERKT_S2_S2_:
.LFB2176:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __a, __a
	movq	%rdx, 24(%rbp)	 # __b, __b
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	movq	24(%rbp), %rax	 # __b, tmp86
	movq	(%rax), %rdx	 # *__b_5(D), _1
	movq	16(%rbp), %rax	 # __a, tmp87
	movq	(%rax), %rax	 # *__a_6(D), _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmpq	%rax, %rdx	 # _2, _1
	jnb	.L27	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:239: 	return __b;
	movq	24(%rbp), %rax	 # __b, _3
	jmp	.L28	 #
.L27:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:240:       return __a;
	movq	16(%rbp), %rax	 # __a, _3
.L28:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:241:     }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv:
.LFB3063:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1060:       { return _M_string_length; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	8(%rax), %rax	 # this_2(D)->_M_string_length, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1060:       { return _M_string_length; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE
	.def	_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE
_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE:
.LFB3177:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movl	%edx, 24(%rbp)	 # __v, __v
	movq	%r8, 32(%rbp)	 # __cat, __cat
 # C:/msys64/ucrt64/include/c++/13.2.0/system_error:234:     : _M_value(__v), _M_cat(&__cat) { }
	movq	16(%rbp), %rax	 # this, tmp82
	movl	24(%rbp), %edx	 # __v, tmp83
	movl	%edx, (%rax)	 # tmp83, this_2(D)->_M_value
 # C:/msys64/ucrt64/include/c++/13.2.0/system_error:234:     : _M_value(__v), _M_cat(&__cat) { }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	32(%rbp), %rdx	 # __cat, tmp85
	movq	%rdx, 8(%rax)	 # tmp85, this_2(D)->_M_cat
 # C:/msys64/ucrt64/include/c++/13.2.0/system_error:234:     : _M_value(__v), _M_cat(&__cat) { }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt15make_error_codeSt4errc,"x"
	.linkonce discard
	.globl	_ZSt15make_error_codeSt4errc
	.def	_ZSt15make_error_codeSt4errc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15make_error_codeSt4errc
_ZSt15make_error_codeSt4errc:
.LFB3185:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # .result_ptr, .result_ptr
	movl	%edx, 24(%rbp)	 # __e, __e
 # C:/msys64/ucrt64/include/c++/13.2.0/system_error:303:   { return error_code(static_cast<int>(__e), generic_category()); }
	call	_ZNSt3_V216generic_categoryEv	 #
	movq	%rax, %rcx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/system_error:303:   { return error_code(static_cast<int>(__e), generic_category()); }
	movl	24(%rbp), %edx	 # __e, tmp83
	movq	16(%rbp), %rax	 # .result_ptr, tmp84
	movq	%rcx, %r8	 # _1,
	movq	%rax, %rcx	 # tmp84,
	call	_ZNSt10error_codeC1EiRKNSt3_V214error_categoryE	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/system_error:303:   { return error_code(static_cast<int>(__e), generic_category()); }
	movq	16(%rbp), %rax	 # .result_ptr,
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt25__codecvt_utf8_utf16_baseIwEC2EmSt12codecvt_modey,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt25__codecvt_utf8_utf16_baseIwEC2EmSt12codecvt_modey
	.def	_ZNSt25__codecvt_utf8_utf16_baseIwEC2EmSt12codecvt_modey;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt25__codecvt_utf8_utf16_baseIwEC2EmSt12codecvt_modey
_ZNSt25__codecvt_utf8_utf16_baseIwEC2EmSt12codecvt_modey:
.LFB4461:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movl	%edx, 24(%rbp)	 # __maxcode, __maxcode
	movl	%r8d, 32(%rbp)	 # __mode, __mode
	movq	%r9, 40(%rbp)	 # __refs, __refs
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	movq	16(%rbp), %rax	 # this, _1
	movq	40(%rbp), %rdx	 # __refs, tmp85
	movq	%rax, %rcx	 # _1,
	call	_ZNSt7codecvtIwc9_MbstatetEC2Ey	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	movq	.refptr._ZTVSt25__codecvt_utf8_utf16_baseIwE(%rip), %rax	 #, tmp86
	leaq	16(%rax), %rdx	 #, _2
	movq	16(%rbp), %rax	 # this, tmp87
	movq	%rdx, (%rax)	 # _2, this_5(D)->D.115579.D.93690.D.93591._vptr.facet
	movq	16(%rbp), %rax	 # this, tmp88
	movl	24(%rbp), %edx	 # __maxcode, tmp89
	movl	%edx, 24(%rax)	 # tmp89, this_5(D)->_M_maxcode
	movq	16(%rbp), %rax	 # this, tmp90
	movl	32(%rbp), %edx	 # __mode, tmp91
	movl	%edx, 28(%rax)	 # tmp91, this_5(D)->_M_mode
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt10filesystem7__cxx114path5_ListD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10filesystem7__cxx114path5_ListD1Ev
	.def	_ZNSt10filesystem7__cxx114path5_ListD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10filesystem7__cxx114path5_ListD1Ev
_ZNSt10filesystem7__cxx114path5_ListD1Ev:
.LFB4905:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:689:       ~_List() = default;
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev	 #
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt10filesystem7__cxx114pathD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10filesystem7__cxx114pathD1Ev
	.def	_ZNSt10filesystem7__cxx114pathD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10filesystem7__cxx114pathD1Ev
_ZNSt10filesystem7__cxx114pathD1Ev:
.LFB4907:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:355:     ~path() = default;
	movq	16(%rbp), %rax	 # this, tmp84
	addq	$32, %rax	 #, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt10filesystem7__cxx114path5_ListD1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:355:     ~path() = default;
	movq	16(%rbp), %rax	 # this, _2
	movq	%rax, %rcx	 # _2,
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:355:     ~path() = default;
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Cannot convert character sequence\0"
	.section	.text$_ZNSt10filesystem7__cxx118__detail24__throw_conversion_errorEv,"x"
	.linkonce discard
	.globl	_ZNSt10filesystem7__cxx118__detail24__throw_conversion_errorEv
	.def	_ZNSt10filesystem7__cxx118__detail24__throw_conversion_errorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10filesystem7__cxx118__detail24__throw_conversion_errorEv
_ZNSt10filesystem7__cxx118__detail24__throw_conversion_errorEv:
.LFB4961:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
	leaq	112(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 112
	.seh_endprologue
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:781:     _GLIBCXX_THROW_OR_ABORT(filesystem_error(
	movl	$48, %ecx	 #,
	call	__cxa_allocate_exception	 #
	movq	%rax, %rbx	 # tmp84, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:781:     _GLIBCXX_THROW_OR_ABORT(filesystem_error(
	leaq	-64(%rbp), %rax	 #, tmp85
	movl	$42, %edx	 #,
	movq	%rax, %rcx	 # tmp85,
	call	_ZSt15make_error_codeSt4errc	 #
	leaq	-9(%rbp), %rax	 #, tmp86
	movq	%rax, -8(%rbp)	 # tmp86, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:163:       allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:781:     _GLIBCXX_THROW_OR_ABORT(filesystem_error(
	leaq	-9(%rbp), %rdx	 #, tmp87
	leaq	-48(%rbp), %rax	 #, tmp88
	movq	%rdx, %r8	 # tmp87,
	leaq	.LC0(%rip), %rdx	 #, tmp89
	movq	%rax, %rcx	 # tmp88,
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_	 #
.LEHE0:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:781:     _GLIBCXX_THROW_OR_ABORT(filesystem_error(
	movq	-64(%rbp), %rax	 # D.147391, tmp90
	movq	-56(%rbp), %rdx	 # D.147391,
	movq	%rax, -80(%rbp)	 # tmp90,
	movq	%rdx, -72(%rbp)	 #,
	leaq	-80(%rbp), %rdx	 #, tmp91
	leaq	-48(%rbp), %rax	 #, tmp92
	movq	%rdx, %r8	 # tmp91,
	movq	%rax, %rdx	 # tmp92,
	movq	%rbx, %rcx	 # _1,
.LEHB1:
	call	_ZNSt10filesystem7__cxx1116filesystem_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code	 #
.LEHE1:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:781:     _GLIBCXX_THROW_OR_ABORT(filesystem_error(
	leaq	-48(%rbp), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:781:     _GLIBCXX_THROW_OR_ABORT(filesystem_error(
	movq	.refptr._ZNSt10filesystem7__cxx1116filesystem_errorD1Ev(%rip), %r8	 #,
	leaq	_ZTINSt10filesystem7__cxx1116filesystem_errorE(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	movq	%rbx, %rcx	 # _1,
.LEHB2:
	call	__cxa_throw	 #
.L41:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:781:     _GLIBCXX_THROW_OR_ABORT(filesystem_error(
	movq	%rax, %rsi	 #, tmp97
	leaq	-48(%rbp), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
	movq	%rsi, %rax	 # tmp97, tmp96
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	jmp	.L43	 #
.L40:
.L43:
	nop	
	movq	%rax, %rsi	 # tmp96, tmp100
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:781:     _GLIBCXX_THROW_OR_ABORT(filesystem_error(
	movq	%rbx, %rcx	 # _1,
	call	__cxa_free_exception	 #
	movq	%rsi, %rax	 # tmp100, D.147964
	movq	%rax, %rcx	 # D.147964,
	call	_Unwind_Resume	 #
	nop	
.LEHE2:
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4961:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4961-.LLSDACSB4961
.LLSDACSB4961:
	.uleb128 .LEHB0-.LFB4961
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L40-.LFB4961
	.uleb128 0
	.uleb128 .LEHB1-.LFB4961
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L41-.LFB4961
	.uleb128 0
	.uleb128 .LEHB2-.LFB4961
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE4961:
	.section	.text$_ZNSt10filesystem7__cxx118__detail24__throw_conversion_errorEv,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN6configC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6configC1Ev
	.def	_ZN6configC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6configC1Ev
_ZN6configC1Ev:
.LFB5212:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # src/main.cpp:24: struct config{
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev	 #
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	current_config
	.bss
	.align 32
current_config:
	.space 488
	.section	.text$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD1Ev:
.LFB5219:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	16(%rbp), %rax	 # this, tmp82
	movq	%rax, -8(%rbp)	 # tmp82, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:133:       struct _Vector_impl
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.text
	.globl	_Z11format_argsiPPc
	.def	_Z11format_argsiPPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11format_argsiPPc
_Z11format_argsiPPc:
.LFB5213:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$72, %rsp	 #,
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # .result_ptr, .result_ptr
	movl	%edx, 40(%rbp)	 # argc, argc
	movq	%r8, 48(%rbp)	 # argv, argv
 # src/main.cpp:33:     cmd_args a;
	movq	32(%rbp), %rax	 # <retval>, tmp87
	pxor	%xmm0, %xmm0	 # tmp88
	movups	%xmm0, (%rax)	 # tmp88, *a_8(D)
	movq	%xmm0, 16(%rax)	 # tmp88, *a_8(D)
 # src/main.cpp:34:     for(int i=1;argc>i;i++){
	movl	$1, -4(%rbp)	 #, i
 # src/main.cpp:34:     for(int i=1;argc>i;i++){
	jmp	.L47	 #
.L48:
 # src/main.cpp:35:         a.push_back(argv[i]);
	movl	-4(%rbp), %eax	 # i, tmp89
	cltq
 # src/main.cpp:35:         a.push_back(argv[i]);
	leaq	0(,%rax,8), %rdx	 #, _2
	movq	48(%rbp), %rax	 # argv, tmp90
	addq	%rdx, %rax	 # _2, _3
 # src/main.cpp:35:         a.push_back(argv[i]);
	movq	(%rax), %rdx	 # *_3, _4
	leaq	-32(%rbp), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc	 #
 # src/main.cpp:35:         a.push_back(argv[i]);
	leaq	-32(%rbp), %rdx	 #, tmp92
	movq	32(%rbp), %rax	 # <retval>, tmp93
	movq	%rax, %rcx	 # tmp93,
.LEHB3:
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_	 #
.LEHE3:
 # src/main.cpp:34:     for(int i=1;argc>i;i++){
	addl	$1, -4(%rbp)	 #, i
.L47:
 # src/main.cpp:34:     for(int i=1;argc>i;i++){
	movl	40(%rbp), %eax	 # argc, tmp94
	cmpl	-4(%rbp), %eax	 # i, tmp94
	jg	.L48	 #,
 # src/main.cpp:37:     return a;
	jmp	.L52	 #
.L51:
 # src/main.cpp:38: }
	movq	%rax, %rbx	 #, tmp96
	movq	32(%rbp), %rax	 # <retval>, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev	 #
	movq	%rbx, %rax	 # tmp96, D.147969
	movq	%rax, %rcx	 # D.147969,
.LEHB4:
	call	_Unwind_Resume	 #
.LEHE4:
.L52:
	movq	32(%rbp), %rax	 # <retval>,
	addq	$72, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5213:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5213-.LLSDACSB5213
.LLSDACSB5213:
	.uleb128 .LEHB3-.LFB5213
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L51-.LFB5213
	.uleb128 0
	.uleb128 .LEHB4-.LFB5213
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE5213:
	.text
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
.LFB5252:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	16(%rbp), %rax	 # this, tmp82
	movq	%rax, -8(%rbp)	 # tmp82, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:181:       struct _Alloc_hider : allocator_type // TODO check __is_final
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "basic_string: construction from null is not valid\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_:
.LFB5254:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __s, __s
	movq	%r8, 48(%rbp)	 # __a, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:632:       : _M_dataplus(_M_local_data(), __a)
	movq	32(%rbp), %rbx	 # this, _1
	movq	32(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:632:       : _M_dataplus(_M_local_data(), __a)
	movq	48(%rbp), %rdx	 # __a, tmp89
	movq	%rdx, %r8	 # tmp89,
	movq	%rax, %rdx	 # _2,
	movq	%rbx, %rcx	 # _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:635: 	if (__s == 0)
	cmpq	$0, 40(%rbp)	 #, __s
	jne	.L55	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:636: 	  std::__throw_logic_error(__N("basic_string: "
	leaq	.LC1(%rip), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
.LEHB5:
	call	_ZSt19__throw_logic_errorPKc	 #
.L55:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:638: 	const _CharT* __end = __s + traits_type::length(__s);
	movq	40(%rbp), %rax	 # __s, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	_ZNSt11char_traitsIcE6lengthEPKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:638: 	const _CharT* __end = __s + traits_type::length(__s);
	movq	40(%rbp), %rdx	 # __s, tmp95
	addq	%rdx, %rax	 # tmp95, tmp94
	movq	%rax, -8(%rbp)	 # tmp94, __end
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:639: 	_M_construct(__s, __end, forward_iterator_tag());
	movq	-8(%rbp), %rcx	 # __end, tmp96
	movq	40(%rbp), %rdx	 # __s, tmp97
	movq	32(%rbp), %rax	 # this, tmp98
	movl	%esi, %r9d	 # D.146945,
	movq	%rcx, %r8	 # tmp96,
	movq	%rax, %rcx	 # tmp98,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag	 #
.LEHE5:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:640:       }
	jmp	.L58	 #
.L57:
	movq	%rax, %rbx	 #, tmp99
	movq	32(%rbp), %rax	 # this, _4
	movq	%rax, %rcx	 # _4,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	 #
	movq	%rbx, %rax	 # tmp99, D.147971
	movq	%rax, %rcx	 # D.147971,
.LEHB6:
	call	_Unwind_Resume	 #
	nop	
.LEHE6:
.L58:
	addq	$48, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5254:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5254-.LLSDACSB5254
.LLSDACSB5254:
	.uleb128 .LEHB5-.LFB5254
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L57-.LFB5254
	.uleb128 0
	.uleb128 .LEHB6-.LFB5254
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE5254:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB5255:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	movq	16(%rbp), %rax	 # this, tmp85
	addq	$16, %rax	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:230: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	movq	%rax, %rcx	 # _1,
	call	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:234:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc,"x"
	.linkonce discard
	.globl	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	.def	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc:
.LFB5256:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/ptr_traits.h:142:       { return std::addressof(__r); }
	movq	16(%rbp), %rax	 # __r, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZSt9addressofIcEPT_RS0_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/ptr_traits.h:142:       { return std::addressof(__r); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt9addressofIcEPT_RS0_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIcEPT_RS0_
	.def	_ZSt9addressofIcEPT_RS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIcEPT_RS0_
_ZSt9addressofIcEPT_RS0_:
.LFB5257:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:139:     { return std::__addressof(__r); }
	movq	16(%rbp), %rax	 # __r, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZSt11__addressofIcEPT_RS0_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:139:     { return std::__addressof(__r); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt11__addressofIcEPT_RS0_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIcEPT_RS0_
	.def	_ZSt11__addressofIcEPT_RS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIcEPT_RS0_
_ZSt11__addressofIcEPT_RS0_:
.LFB5258:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	movq	16(%rbp), %rax	 # __r, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_:
.LFB5261:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __dat, __dat
	movq	%r8, 32(%rbp)	 # __a, __a
	movq	16(%rbp), %rax	 # this, tmp82
	movq	%rax, -8(%rbp)	 # tmp82, this
	movq	32(%rbp), %rax	 # __a, tmp83
	movq	%rax, -16(%rbp)	 # tmp83, __a
	movq	-8(%rbp), %rax	 # this, tmp84
	movq	%rax, -24(%rbp)	 # tmp84, this
	movq	-16(%rbp), %rax	 # __a, tmp85
	movq	%rax, -32(%rbp)	 # tmp85, D.147753
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:168:       : __allocator_base<_Tp>(__a) { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	movq	16(%rbp), %rax	 # this, tmp86
	movq	24(%rbp), %rdx	 # __dat, tmp87
	movq	%rdx, (%rax)	 # tmp87, this_2(D)->_M_p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:189: 	: allocator_type(__a), _M_p(__dat) { }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_:
.LFB5271:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __s, __s
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:235: 	  explicit _Guard(basic_string* __s) : _M_guarded(__s) { }
	movq	16(%rbp), %rax	 # this, tmp82
	movq	24(%rbp), %rdx	 # __s, tmp83
	movq	%rdx, (%rax)	 # tmp83, this_2(D)->_M_guarded
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:235: 	  explicit _Guard(basic_string* __s) : _M_guarded(__s) { }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.def	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev:
.LFB5274:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	(%rax), %rax	 # this_5(D)->_M_guarded, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	testq	%rax, %rax	 # _1
	je	.L71	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	16(%rbp), %rax	 # this, tmp85
	movq	(%rax), %rax	 # this_5(D)->_M_guarded, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	%rax, %rcx	 # _2,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
.L71:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:238: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5274:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5274-.LLSDACSB5274
.LLSDACSB5274:
.LLSDACSE5274:
	.section	.text$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB5268:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$120, %rsp	 #,
	.seh_stackalloc	120
	leaq	112(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 112
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __beg, __beg
	movq	%r8, 48(%rbp)	 # __end, __end
	movq	40(%rbp), %rax	 # __beg, tmp96
	movq	%rax, -64(%rbp)	 # tmp96, __first
	movq	48(%rbp), %rax	 # __end, tmp97
	movq	%rax, -8(%rbp)	 # tmp97, __last
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator_base_funcs.h:151:       return std::__distance(__first, __last,
	movq	-64(%rbp), %rax	 # __first, __first.20_32
	movq	%rax, -16(%rbp)	 # __first.20_32, __first
	movq	-8(%rbp), %rax	 # __last, tmp98
	movq	%rax, -24(%rbp)	 # tmp98, __last
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator_base_funcs.h:106:       return __last - __first;
	movq	-24(%rbp), %rax	 # __last, tmp99
	subq	-16(%rbp), %rax	 # __first, D.147878
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator_base_funcs.h:152: 			     std::__iterator_category(__first));
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:221: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	movq	%rax, -48(%rbp)	 # _2, __dnew
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:223: 	if (__dnew > size_type(_S_local_capacity))
	movq	-48(%rbp), %rax	 # __dnew, __dnew.17_3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:223: 	if (__dnew > size_type(_S_local_capacity))
	cmpq	$15, %rax	 #, __dnew.17_3
	jbe	.L76	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:225: 	    _M_data(_M_create(__dnew, size_type(0)));
	leaq	-48(%rbp), %rdx	 #, tmp100
	movq	32(%rbp), %rax	 # this, tmp101
	movl	$0, %r8d	 #,
	movq	%rax, %rcx	 # tmp101,
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy	 #
.LEHE7:
	movq	%rax, %rdx	 #, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:225: 	    _M_data(_M_create(__dnew, size_type(0)));
	movq	32(%rbp), %rax	 # this, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:226: 	    _M_capacity(__dnew);
	movq	-48(%rbp), %rdx	 # __dnew, __dnew.18_5
	movq	32(%rbp), %rax	 # this, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy	 #
	jmp	.L77	 #
.L76:
	movq	32(%rbp), %rax	 # this, tmp104
	movq	%rax, -32(%rbp)	 # tmp104, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:351: 	if (std::is_constant_evaluated())
	call	_ZSt21is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:351: 	if (std::is_constant_evaluated())
	testb	%al, %al	 # retval.29_39
	je	.L78	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:352: 	  for (size_type __i = 0; __i <= _S_local_capacity; ++__i)
	movq	$0, -40(%rbp)	 #, __i
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:352: 	  for (size_type __i = 0; __i <= _S_local_capacity; ++__i)
	jmp	.L79	 #
.L80:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:353: 	    _M_local_buf[__i] = _CharT();
	movq	-32(%rbp), %rdx	 # this, tmp105
	movq	-40(%rbp), %rax	 # __i, tmp107
	addq	%rdx, %rax	 # tmp105, tmp106
	addq	$16, %rax	 #, tmp108
	movb	$0, (%rax)	 #, this_38->D.72316._M_local_buf[__i_41]
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:352: 	  for (size_type __i = 0; __i <= _S_local_capacity; ++__i)
	addq	$1, -40(%rbp)	 #, __i
.L79:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:352: 	  for (size_type __i = 0; __i <= _S_local_capacity; ++__i)
	cmpq	$15, -40(%rbp)	 #, __i
	jbe	.L80	 #,
.L78:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:355: 	return _M_local_data();
	movq	-32(%rbp), %rax	 # this, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:355: 	return _M_local_data();
	nop	
.L77:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:241: 	} __guard(this);
	movq	32(%rbp), %rdx	 # this, tmp110
	leaq	-56(%rbp), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:243: 	this->_S_copy_chars(_M_data(), __beg, __end);
	movq	32(%rbp), %rax	 # this, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rcx	 #, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:243: 	this->_S_copy_chars(_M_data(), __beg, __end);
	movq	48(%rbp), %rdx	 # __end, tmp113
	movq	40(%rbp), %rax	 # __beg, tmp114
	movq	%rdx, %r8	 # tmp113,
	movq	%rax, %rdx	 # tmp114,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:245: 	__guard._M_guarded = 0;
	movq	$0, -56(%rbp)	 #, __guard._M_guarded
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:247: 	_M_set_length(__dnew);
	movq	-48(%rbp), %rdx	 # __dnew, __dnew.19_7
	movq	32(%rbp), %rax	 # this, tmp115
	movq	%rax, %rcx	 # tmp115,
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy	 #
.LEHE8:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:248:       }
	leaq	-56(%rbp), %rax	 #, tmp116
	movq	%rax, %rcx	 # tmp116,
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev	 #
	jmp	.L84	 #
.L83:
	movq	%rax, %rbx	 #, tmp118
	leaq	-56(%rbp), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev	 #
	movq	%rbx, %rax	 # tmp118, D.147973
	movq	%rax, %rcx	 # D.147973,
.LEHB9:
	call	_Unwind_Resume	 #
	nop	
.LEHE9:
.L84:
	addq	$120, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5268:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5268-.LLSDACSB5268
.LLSDACSB5268:
	.uleb128 .LEHB7-.LFB5268
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB5268
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L83-.LFB5268
	.uleb128 0
	.uleb128 .LEHB9-.LFB5268
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE5268:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv:
.LFB5279:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	(%rax), %rax	 # this_2(D)->_M_dataplus._M_p, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_,"x"
	.linkonce discard
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_:
.LFB5280:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __p, __p
	movq	%rdx, 24(%rbp)	 # __k1, __k1
	movq	%r8, 32(%rbp)	 # __k2, __k2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:474:       { _S_copy(__p, __k1, __k2 - __k1); }
	movq	32(%rbp), %rax	 # __k2, tmp84
	subq	24(%rbp), %rax	 # __k1, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:474:       { _S_copy(__p, __k1, __k2 - __k1); }
	movq	%rax, %rcx	 # _1, _2
	movq	24(%rbp), %rdx	 # __k1, tmp85
	movq	16(%rbp), %rax	 # __p, tmp86
	movq	%rcx, %r8	 # _2,
	movq	%rax, %rcx	 # tmp86,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:474:       { _S_copy(__p, __k1, __k2 - __k1); }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5280:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5280-.LLSDACSB5280
.LLSDACSB5280:
.LLSDACSE5280:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy,"x"
	.linkonce discard
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy:
.LFB5281:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __d, __d
	movq	%rdx, 24(%rbp)	 # __s, __s
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:417: 	if (__n == 1)
	cmpq	$1, 32(%rbp)	 #, __n
	jne	.L89	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:418: 	  traits_type::assign(*__d, *__s);
	movq	24(%rbp), %rdx	 # __s, tmp82
	movq	16(%rbp), %rax	 # __d, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZNSt11char_traitsIcE6assignERcRKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:421:       }
	jmp	.L91	 #
.L89:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:420: 	  traits_type::copy(__d, __s, __n);
	movq	32(%rbp), %rcx	 # __n, tmp84
	movq	24(%rbp), %rdx	 # __s, tmp85
	movq	16(%rbp), %rax	 # __d, tmp86
	movq	%rcx, %r8	 # tmp84,
	movq	%rax, %rcx	 # tmp86,
	call	_ZNSt11char_traitsIcE4copyEPcPKcy	 #
.L91:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:421:       }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.def	_ZN9__gnu_cxxeqIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
_ZN9__gnu_cxxeqIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_:
.LFB5282:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __lhs, __lhs
	movq	%rdx, 40(%rbp)	 # __rhs, __rhs
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	movq	32(%rbp), %rax	 # __lhs, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	movq	(%rax), %rbx	 # *_1, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	movq	40(%rbp), %rax	 # __rhs, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	movq	(%rax), %rax	 # *_3, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	cmpq	%rax, %rbx	 # _4, _2
	sete	%al	 #, _10
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv:
.LFB5283:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1163:       { return _M_current; }
	movq	16(%rbp), %rax	 # this, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1163:       { return _M_current; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv:
.LFB5284:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1100:       { return *_M_current; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	(%rax), %rax	 # this_2(D)->_M_current, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1100:       { return *_M_current; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "../main.qrtx\0"
	.text
	.globl	_Z12process_argsRSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE
	.def	_Z12process_argsRSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12process_argsRSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE
_Z12process_argsRSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE:
.LFB5242:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$632, %rsp	 #,
	.seh_stackalloc	632
	leaq	128(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 528(%rbp)	 # args, args
 # src/main.cpp:40:     bool input_file_found = false;
	movb	$0, 495(%rbp)	 #, input_file_found
	leaq	-33(%rbp), %rax	 #, tmp88
	movq	%rax, 464(%rbp)	 # tmp88, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:163:       allocator() _GLIBCXX_NOTHROW { }
	nop	
 # src/main.cpp:41:     std::string input_file_name="../main.qrtx";
	leaq	-33(%rbp), %rdx	 #, tmp89
	leaq	-80(%rbp), %rax	 #, tmp90
	movq	%rdx, %r8	 # tmp89,
	leaq	.LC2(%rip), %rdx	 #, tmp91
	movq	%rax, %rcx	 # tmp90,
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_	 #
.LEHE10:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	nop	
 # src/main.cpp:43:     for(const auto&i:args){
	movq	528(%rbp), %rax	 # args, tmp92
	movq	%rax, 480(%rbp)	 # tmp92, __for_range
	movq	480(%rbp), %rax	 # __for_range, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv	 #
	movq	%rax, -88(%rbp)	 # tmp95, __for_begin
 # src/main.cpp:43:     for(const auto&i:args){
	movq	480(%rbp), %rax	 # __for_range, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv	 #
	movq	%rax, -96(%rbp)	 # tmp98, __for_end
 # src/main.cpp:43:     for(const auto&i:args){
	jmp	.L99	 #
.L101:
 # src/main.cpp:43:     for(const auto&i:args){
	leaq	-88(%rbp), %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv	 #
	movq	%rax, 472(%rbp)	 # tmp100, i
 # src/main.cpp:44:         if(i[0]!='-'){
	movq	472(%rbp), %rax	 # i, tmp101
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp101,
	call	_ZNKSt17basic_string_viewIcSt11char_traitsIcEEixEy	 #
 # src/main.cpp:44:         if(i[0]!='-'){
	movzbl	(%rax), %eax	 # *_1, _2
	cmpb	$45, %al	 #, _2
	setne	%al	 #, retval.15_32
 # src/main.cpp:44:         if(i[0]!='-'){
	testb	%al, %al	 # retval.15_32
	je	.L100	 #,
 # src/main.cpp:45:             input_file_name=i;
	movq	472(%rbp), %rdx	 # i, tmp102
	leaq	-80(%rbp), %rax	 #, tmp103
	movq	%rax, %rcx	 # tmp103,
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_	 #
.L100:
 # src/main.cpp:43:     for(const auto&i:args){
	leaq	-88(%rbp), %rax	 #, tmp104
	movq	%rax, %rcx	 # tmp104,
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEppEv	 #
.L99:
 # src/main.cpp:43:     for(const auto&i:args){
	leaq	-96(%rbp), %rdx	 #, tmp105
	leaq	-88(%rbp), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	_ZN9__gnu_cxxeqIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_	 #
	xorl	$1, %eax	 #, retval.16_18
	testb	%al, %al	 # retval.16_18
	jne	.L101	 #,
 # src/main.cpp:48:     current_config.input_file=std::ifstream(input_file_name);
	leaq	-80(%rbp), %rdx	 #, tmp107
	leaq	-32(%rbp), %rax	 #, tmp108
	movl	$8, %r8d	 #,
	movq	%rax, %rcx	 # tmp108,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode	 #
.LEHE11:
 # src/main.cpp:48:     current_config.input_file=std::ifstream(input_file_name);
	leaq	-32(%rbp), %rax	 #, tmp109
	movq	%rax, %rdx	 # tmp109,
	leaq	current_config(%rip), %rax	 #, tmp110
	movq	%rax, %rcx	 # tmp110,
.LEHB12:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEaSEOS2_	 #
.LEHE12:
 # src/main.cpp:48:     current_config.input_file=std::ifstream(input_file_name);
	leaq	-32(%rbp), %rax	 #, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev	 #
 # src/main.cpp:50: }
	leaq	-80(%rbp), %rax	 #, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
	jmp	.L106	 #
.L105:
 # src/main.cpp:48:     current_config.input_file=std::ifstream(input_file_name);
	movq	%rax, %rbx	 #, tmp115
	leaq	-32(%rbp), %rax	 #, tmp113
	movq	%rax, %rcx	 # tmp113,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev	 #
	jmp	.L103	 #
.L104:
 # src/main.cpp:50: }
	movq	%rax, %rbx	 #, tmp114
.L103:
	leaq	-80(%rbp), %rax	 #, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
	movq	%rbx, %rax	 # tmp114, D.147975
	movq	%rax, %rcx	 # D.147975,
.LEHB13:
	call	_Unwind_Resume	 #
	nop	
.LEHE13:
.L106:
	addq	$632, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5242:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5242-.LLSDACSB5242
.LLSDACSB5242:
	.uleb128 .LEHB10-.LFB5242
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB5242
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L104-.LFB5242
	.uleb128 0
	.uleb128 .LEHB12-.LFB5242
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L105-.LFB5242
	.uleb128 0
	.uleb128 .LEHB13-.LFB5242
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE5242:
	.text
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC3:
	.ascii "\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB5285:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$584, %rsp	 #,
	.seh_stackalloc	584
	leaq	128(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	%ecx, 480(%rbp)	 # argc, argc
	movq	%rdx, 488(%rbp)	 # argv, argv
 # src/main.cpp:52: int main(int argc,char**argv){
	call	__main	 #
 # src/main.cpp:53:     cmd_args args = format_args(argc,argv);
	leaq	368(%rbp), %rax	 #, tmp87
	movq	488(%rbp), %rcx	 # argv, tmp88
	movl	480(%rbp), %edx	 # argc, tmp89
	movq	%rcx, %r8	 # tmp88,
	movq	%rax, %rcx	 # tmp87,
.LEHB14:
	call	_Z11format_argsiPPc	 #
.LEHE14:
 # src/main.cpp:54:     process_args(args);
	leaq	368(%rbp), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
.LEHB15:
	call	_Z12process_argsRSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE	 #
 # src/main.cpp:57:     std::cout <<fs::current_path()<<"\n";
	leaq	400(%rbp), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	_ZNSt10filesystem12current_pathB5cxx11Ev	 #
.LEHE15:
 # src/main.cpp:57:     std::cout <<fs::current_path()<<"\n";
	leaq	400(%rbp), %rax	 #, tmp92
	movq	%rax, %rdx	 # tmp92,
	movq	.refptr._ZSt4cout(%rip), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
.LEHB16:
	call	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE	 #
	movq	%rax, %rcx	 #, _1
 # src/main.cpp:57:     std::cout <<fs::current_path()<<"\n";
	leaq	.LC3(%rip), %rax	 #, tmp94
	movq	%rax, %rdx	 # tmp94,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
.LEHE16:
 # src/main.cpp:57:     std::cout <<fs::current_path()<<"\n";
	leaq	400(%rbp), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	_ZNSt10filesystem7__cxx114pathD1Ev	 #
 # src/main.cpp:59:     std::stringstream filebuffer;
	leaq	-32(%rbp), %rax	 #, tmp96
	movq	%rax, %rcx	 # tmp96,
.LEHB17:
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev	 #
.LEHE17:
 # src/main.cpp:60:     filebuffer << current_config.input_file.rdbuf();
	leaq	current_config(%rip), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	_ZNKSt14basic_ifstreamIcSt11char_traitsIcEE5rdbufEv	 #
	movq	%rax, %rdx	 #, _2
 # src/main.cpp:60:     filebuffer << current_config.input_file.rdbuf();
	leaq	-32(%rbp), %rax	 #, tmp98
	addq	$16, %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
.LEHB18:
	call	_ZNSolsEPSt15basic_streambufIcSt11char_traitsIcEE	 #
 # src/main.cpp:61:     std::string_view file = filebuffer.view();
	leaq	-48(%rbp), %rax	 #, tmp100
	leaq	-32(%rbp), %rdx	 #, tmp101
	movq	%rax, %rcx	 # tmp100,
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE4viewEv	 #
 # src/main.cpp:62:     std::vector<lexer::token> tok_arr = lexer::Interpret(file);
	leaq	-80(%rbp), %rcx	 #, tmp102
	movq	-48(%rbp), %rax	 # file, tmp103
	movq	-40(%rbp), %rdx	 # file,
	movq	%rax, -96(%rbp)	 # tmp103,
	movq	%rdx, -88(%rbp)	 #,
	leaq	-96(%rbp), %rax	 #, tmp104
	movq	%rax, %rdx	 # tmp104,
	call	_ZN5lexer9InterpretESt17basic_string_viewIcSt11char_traitsIcEE	 #
.LEHE18:
 # src/main.cpp:63:     parser::Parse(tok_arr);
	leaq	-80(%rbp), %rax	 #, tmp105
	movq	%rax, %rcx	 # tmp105,
.LEHB19:
	call	_ZN6parser5ParseERSt6vectorIN5lexer5tokenESaIS2_EE	 #
.LEHE19:
 # src/main.cpp:65:     return 0;
	movl	$0, %ebx	 #, _25
 # src/main.cpp:66: }
	leaq	-80(%rbp), %rax	 #, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	_ZNSt6vectorIN5lexer5tokenESaIS1_EED1Ev	 #
 # src/main.cpp:66: }
	leaq	-32(%rbp), %rax	 #, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev	 #
 # src/main.cpp:66: }
	leaq	368(%rbp), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev	 #
 # src/main.cpp:66: }
	movl	%ebx, %eax	 # _25, <retval>
	jmp	.L117	 #
.L114:
 # src/main.cpp:57:     std::cout <<fs::current_path()<<"\n";
	movq	%rax, %rbx	 #, tmp112
	leaq	400(%rbp), %rax	 #, tmp110
	movq	%rax, %rcx	 # tmp110,
	call	_ZNSt10filesystem7__cxx114pathD1Ev	 #
	jmp	.L110	 #
.L116:
 # src/main.cpp:66: }
	movq	%rax, %rbx	 #, tmp117
	leaq	-80(%rbp), %rax	 #, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	_ZNSt6vectorIN5lexer5tokenESaIS1_EED1Ev	 #
	jmp	.L112	 #
.L115:
	movq	%rax, %rbx	 #, tmp116
.L112:
	leaq	-32(%rbp), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev	 #
	jmp	.L110	 #
.L113:
	movq	%rax, %rbx	 #, tmp111
.L110:
	leaq	368(%rbp), %rax	 #, tmp121
	movq	%rax, %rcx	 # tmp121,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev	 #
	movq	%rbx, %rax	 # tmp111, D.147977
	movq	%rax, %rcx	 # D.147977,
.LEHB20:
	call	_Unwind_Resume	 #
.LEHE20:
.L117:
	addq	$584, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5285:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5285-.LLSDACSB5285
.LLSDACSB5285:
	.uleb128 .LEHB14-.LFB5285
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB5285
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L113-.LFB5285
	.uleb128 0
	.uleb128 .LEHB16-.LFB5285
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L114-.LFB5285
	.uleb128 0
	.uleb128 .LEHB17-.LFB5285
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L113-.LFB5285
	.uleb128 0
	.uleb128 .LEHB18-.LFB5285
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L115-.LFB5285
	.uleb128 0
	.uleb128 .LEHB19-.LFB5285
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L116-.LFB5285
	.uleb128 0
	.uleb128 .LEHB20-.LFB5285
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE5285:
	.text
	.seh_endproc
	.section	.text$_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_,"x"
	.linkonce discard
	.globl	_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
	.def	_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_
_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_:
.LFB5294:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __location, __location
	movq	%rdx, 40(%rbp)	 # __args#0, __args#0
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	32(%rbp), %rax	 # __location, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	%rax, %rdx	 # _4,
	movl	$1, %ecx	 #,
	call	_ZnwyPv	 #
	movq	%rax, %rbx	 #, _7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	40(%rbp), %rax	 # __args#0, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movzbl	(%rax), %eax	 # *_1, _2
	movb	%al, (%rbx)	 # _2, MEM[(char *)_7]
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	%rbx, %rax	 # _7, <retval>
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.def	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB5295:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __p, __p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:202:       std::size_t __i = 0;
	movq	$0, -8(%rbp)	 #, __i
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:203:       while (!eq(__p[__i], char_type()))
	jmp	.L121	 #
.L122:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:204:         ++__i;
	addq	$1, -8(%rbp)	 #, __i
.L121:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:203:       while (!eq(__p[__i], char_type()))
	movb	$0, -9(%rbp)	 #, D.134330
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:203:       while (!eq(__p[__i], char_type()))
	movq	16(%rbp), %rdx	 # __p, tmp87
	movq	-8(%rbp), %rax	 # __i, tmp88
	leaq	(%rdx,%rax), %rcx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:203:       while (!eq(__p[__i], char_type()))
	leaq	-9(%rbp), %rax	 #, tmp89
	movq	%rax, %rdx	 # tmp89,
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:203:       while (!eq(__p[__i], char_type()))
	xorl	$1, %eax	 #, retval.1_10
	testb	%al, %al	 # retval.1_10
	jne	.L122	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:205:       return __i;
	movq	-8(%rbp), %rax	 # __i, _12
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:206:     }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcy
	.def	_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcy
_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcy:
.LFB5297:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __s1, __s1
	movq	%rdx, 24(%rbp)	 # __s2, __s2
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:225:       if (__n == 0)
	cmpq	$0, 32(%rbp)	 #, __n
	jne	.L125	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:226: 	return __s1;
	movq	16(%rbp), %rax	 # __s1, _9
	jmp	.L126	 #
.L125:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:228:       if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:228:       if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.48_16
	je	.L127	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:230: 	  if (__s1 == __s2) // unlikely, but saves a lot of work
	movq	16(%rbp), %rax	 # __s1, tmp90
	cmpq	24(%rbp), %rax	 # __s2, tmp90
	jne	.L128	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:231: 	    return __s1;
	movq	16(%rbp), %rax	 # __s1, _9
	jmp	.L126	 #
.L128:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:232: 	  const auto __end = __s2 + __n - 1;
	movq	32(%rbp), %rax	 # __n, tmp91
	leaq	-1(%rax), %rdx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:232: 	  const auto __end = __s2 + __n - 1;
	movq	24(%rbp), %rax	 # __s2, tmp95
	addq	%rdx, %rax	 # _1, tmp94
	movq	%rax, -24(%rbp)	 # tmp94, __end
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:233: 	  bool __overlap = false;
	movb	$0, -1(%rbp)	 #, __overlap
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:234: 	  for (std::size_t __i = 0; __i < __n - 1; ++__i)
	movq	$0, -16(%rbp)	 #, __i
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:234: 	  for (std::size_t __i = 0; __i < __n - 1; ++__i)
	jmp	.L129	 #
.L132:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:236: 	      if (__s1 + __i == __end)
	movq	16(%rbp), %rdx	 # __s1, tmp96
	movq	-16(%rbp), %rax	 # __i, tmp97
	addq	%rdx, %rax	 # tmp96, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:236: 	      if (__s1 + __i == __end)
	cmpq	%rax, -24(%rbp)	 # _2, __end
	jne	.L130	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:238: 		  __overlap = true;
	movb	$1, -1(%rbp)	 #, __overlap
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:239: 		  break;
	jmp	.L131	 #
.L130:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:234: 	  for (std::size_t __i = 0; __i < __n - 1; ++__i)
	addq	$1, -16(%rbp)	 #, __i
.L129:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:234: 	  for (std::size_t __i = 0; __i < __n - 1; ++__i)
	movq	32(%rbp), %rax	 # __n, tmp98
	subq	$1, %rax	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:234: 	  for (std::size_t __i = 0; __i < __n - 1; ++__i)
	cmpq	%rax, -16(%rbp)	 # _3, __i
	jb	.L132	 #,
.L131:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:242: 	  if (__overlap)
	cmpb	$0, -1(%rbp)	 #, __overlap
	je	.L133	 #,
.L134:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:246: 		  --__n;
	subq	$1, 32(%rbp)	 #, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:247: 		  assign(__s1[__n], __s2[__n]);
	movq	24(%rbp), %rdx	 # __s2, tmp99
	movq	32(%rbp), %rax	 # __n, tmp100
	addq	%rax, %rdx	 # tmp100, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:247: 		  assign(__s1[__n], __s2[__n]);
	movq	16(%rbp), %rcx	 # __s1, tmp101
	movq	32(%rbp), %rax	 # __n, tmp102
	addq	%rcx, %rax	 # tmp101, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:247: 		  assign(__s1[__n], __s2[__n]);
	movq	%rax, %rcx	 # _5,
	call	_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:249: 	      while (__n > 0);
	cmpq	$0, 32(%rbp)	 #, __n
	jne	.L134	 #,
	jmp	.L135	 #
.L133:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:252: 	    copy(__s1, __s2, __n);
	movq	32(%rbp), %rcx	 # __n, tmp103
	movq	24(%rbp), %rdx	 # __s2, tmp104
	movq	16(%rbp), %rax	 # __s1, tmp105
	movq	%rcx, %r8	 # tmp103,
	movq	%rax, %rcx	 # tmp105,
	call	_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcy	 #
.L135:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:253: 	  return __s1;
	movq	16(%rbp), %rax	 # __s1, _9
	jmp	.L126	 #
.L127:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:256:       __builtin_memmove(__s1, __s2, __n * sizeof(char_type));
	movq	32(%rbp), %rcx	 # __n, tmp108
	movq	24(%rbp), %rdx	 # __s2, tmp109
	movq	16(%rbp), %rax	 # __s1, tmp110
	movq	%rcx, %r8	 # tmp108,
	movq	%rax, %rcx	 # tmp110,
	call	memmove	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:257:       return __s1;
	movq	16(%rbp), %rax	 # __s1, _9
.L126:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:258:     }
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcy
	.def	_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcy
_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcy:
.LFB5298:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __s1, __s1
	movq	%rdx, 24(%rbp)	 # __s2, __s2
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:266:       if (__n == 0)
	cmpq	$0, 32(%rbp)	 #, __n
	jne	.L137	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:267: 	return __s1;
	movq	16(%rbp), %rax	 # __s1, _4
	jmp	.L138	 #
.L137:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:269:       if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:269:       if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.32_10
	je	.L139	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:271: 	  for (std::size_t __i = 0; __i < __n; ++__i)
	movq	$0, -8(%rbp)	 #, __i
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:271: 	  for (std::size_t __i = 0; __i < __n; ++__i)
	jmp	.L140	 #
.L141:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:272: 	    std::construct_at(__s1 + __i, __s2[__i]);
	movq	24(%rbp), %rdx	 # __s2, tmp87
	movq	-8(%rbp), %rax	 # __i, tmp88
	addq	%rax, %rdx	 # tmp88, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:272: 	    std::construct_at(__s1 + __i, __s2[__i]);
	movq	16(%rbp), %rcx	 # __s1, tmp89
	movq	-8(%rbp), %rax	 # __i, tmp90
	addq	%rcx, %rax	 # tmp89, _2
	movq	%rax, %rcx	 # _2,
	call	_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:271: 	  for (std::size_t __i = 0; __i < __n; ++__i)
	addq	$1, -8(%rbp)	 #, __i
.L140:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:271: 	  for (std::size_t __i = 0; __i < __n; ++__i)
	movq	-8(%rbp), %rax	 # __i, tmp91
	cmpq	32(%rbp), %rax	 # __n, tmp91
	jb	.L141	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:273: 	  return __s1;
	movq	16(%rbp), %rax	 # __s1, _4
	jmp	.L138	 #
.L139:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:276:       __builtin_memcpy(__s1, __s2, __n * sizeof(char_type));
	movq	16(%rbp), %rdx	 # __s1, tmp92
	movq	24(%rbp), %rax	 # __s2, tmp93
	movq	%rdx, %rcx	 # tmp92, tmp95
	movq	%rax, %rdx	 # tmp93, tmp96
	movq	32(%rbp), %rax	 # __n, tmp97
	movq	%rax, %r8	 # tmp97,
	call	memcpy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:277:       return __s1;
	movq	16(%rbp), %rax	 # __s1, _4
.L138:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:278:     }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE6assignEPcyc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE6assignEPcyc
	.def	_ZN9__gnu_cxx11char_traitsIcE6assignEPcyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE6assignEPcyc
_ZN9__gnu_cxx11char_traitsIcE6assignEPcyc:
.LFB5299:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __s, __s
	movq	%rdx, 24(%rbp)	 # __n, __n
	movl	%r8d, %eax	 # __a, tmp89
	movb	%al, 32(%rbp)	 # tmp90, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:287:       if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:287:       if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.75_11
	je	.L143	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:289: 	  for (std::size_t __i = 0; __i < __n; ++__i)
	movq	$0, -8(%rbp)	 #, __i
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:289: 	  for (std::size_t __i = 0; __i < __n; ++__i)
	jmp	.L144	 #
.L145:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:290: 	    std::construct_at(__s + __i, __a);
	movq	16(%rbp), %rdx	 # __s, tmp91
	movq	-8(%rbp), %rax	 # __i, tmp92
	leaq	(%rdx,%rax), %rcx	 #, _1
	leaq	32(%rbp), %rax	 #, tmp93
	movq	%rax, %rdx	 # tmp93,
	call	_ZSt12construct_atIcJRcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS2_DpOS3_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:289: 	  for (std::size_t __i = 0; __i < __n; ++__i)
	addq	$1, -8(%rbp)	 #, __i
.L144:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:289: 	  for (std::size_t __i = 0; __i < __n; ++__i)
	movq	-8(%rbp), %rax	 # __i, tmp94
	cmpq	24(%rbp), %rax	 # __n, tmp94
	jb	.L145	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:291: 	  return __s;
	movq	16(%rbp), %rax	 # __s, _5
	jmp	.L146	 #
.L143:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:297: 	  if (__n)
	cmpq	$0, 24(%rbp)	 #, __n
	je	.L147	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:300: 	      __builtin_memcpy(&__c, __builtin_addressof(__a), 1);
	movzbl	32(%rbp), %eax	 # MEM[(char * {ref-all})&__a], _13
	movb	%al, -9(%rbp)	 # _13, MEM[(char * {ref-all})&__c]
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:301: 	      __builtin_memset(__s, __c, __n);
	movzbl	-9(%rbp), %eax	 # __c, __c.76_2
	movzbl	%al, %edx	 # __c.76_2, _3
	movq	24(%rbp), %rcx	 # __n, tmp97
	movq	16(%rbp), %rax	 # __s, tmp98
	movq	%rcx, %r8	 # tmp97,
	movq	%rax, %rcx	 # tmp98,
	call	memset	 #
.L147:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:309:       return __s;
	movq	16(%rbp), %rax	 # __s, _5
.L146:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:310:     }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	.def	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv:
.LFB5320:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:292:       { return this->_M_str; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	8(%rax), %rax	 # this_2(D)->_M_str, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:292:       { return this->_M_str; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4dataEv
	.def	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4dataEv
_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4dataEv:
.LFB5322:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:292:       { return this->_M_str; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	8(%rax), %rax	 # this_2(D)->_M_str, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:292:       { return this->_M_str; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt17basic_string_viewIwSt11char_traitsIwEEC1EPKwy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt17basic_string_viewIwSt11char_traitsIwEEC1EPKwy
	.def	_ZNSt17basic_string_viewIwSt11char_traitsIwEEC1EPKwy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt17basic_string_viewIwSt11char_traitsIwEEC1EPKwy
_ZNSt17basic_string_viewIwSt11char_traitsIwEEC1EPKwy:
.LFB5335:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __str, __str
	movq	%r8, 32(%rbp)	 # __len, __len
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:147:       : _M_len{__len}, _M_str{__str}
	movq	16(%rbp), %rax	 # this, tmp82
	movq	32(%rbp), %rdx	 # __len, tmp83
	movq	%rdx, (%rax)	 # tmp83, this_2(D)->_M_len
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:147:       : _M_len{__len}, _M_str{__str}
	movq	16(%rbp), %rax	 # this, tmp84
	movq	24(%rbp), %rdx	 # __str, tmp85
	movq	%rdx, 8(%rax)	 # tmp85, this_2(D)->_M_str
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:148:       { }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB5345:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __a, __a
	movq	%rdx, 24(%rbp)	 # __b, __b
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	movq	16(%rbp), %rax	 # __a, tmp86
	movq	(%rax), %rdx	 # *__a_5(D), _1
	movq	24(%rbp), %rax	 # __b, tmp87
	movq	(%rax), %rax	 # *__b_6(D), _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:262:       if (__a < __b)
	cmpq	%rax, %rdx	 # _2, _1
	jnb	.L154	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:263: 	return __b;
	movq	24(%rbp), %rax	 # __b, _3
	jmp	.L155	 #
.L154:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:264:       return __a;
	movq	16(%rbp), %rax	 # __a, _3
.L155:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:265:     }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev:
.LFB5434:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:792:       { _M_dispose(); }
	movq	16(%rbp), %rax	 # this, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:792:       { _M_dispose(); }
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:792:       { _M_dispose(); }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5434:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5434-.LLSDACSB5434
.LLSDACSB5434:
.LLSDACSE5434:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy:
.LFB5435:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __pos, __pos
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1246: 	__glibcxx_assert(__pos <= size());
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1246: 	__glibcxx_assert(__pos <= size());
	testb	%al, %al	 # _1
	je	.L158	 #,
	movq	16(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
	cmpq	24(%rbp), %rax	 # __pos, _2
	jnb	.L158	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1246: 	__glibcxx_assert(__pos <= size());
	movl	$1, %eax	 #, iftmp.69_4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1246: 	__glibcxx_assert(__pos <= size());
	jmp	.L159	 #
.L158:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1246: 	__glibcxx_assert(__pos <= size());
	movl	$0, %eax	 #, iftmp.69_4
.L159:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1246: 	__glibcxx_assert(__pos <= size());
	testb	%al, %al	 # iftmp.69_4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1249: 	return _M_data()[__pos];
	movq	16(%rbp), %rax	 # this, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1249: 	return _M_data()[__pos];
	movq	24(%rbp), %rdx	 # __pos, tmp90
	addq	%rdx, %rax	 # tmp90, _16
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1250:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_:
.LFB5439:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __str, __str
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:668:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	32(%rbp), %rbx	 # this, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:668:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	40(%rbp), %rax	 # __str, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:668:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	%rax, %rcx	 # _2,
	call	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_	 #
	movq	%rax, %rsi	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:668:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	32(%rbp), %rax	 # this, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:668:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	%rsi, %r8	 # _3,
	movq	%rax, %rdx	 # _4,
	movq	%rbx, %rcx	 # _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:670: 	if (__str._M_is_local())
	movq	40(%rbp), %rax	 # __str, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:670: 	if (__str._M_is_local())
	testb	%al, %al	 # _24
	je	.L163	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:673: 			      __str.length() + 1);
	movq	40(%rbp), %rax	 # __str, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:672: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	leaq	1(%rax), %rcx	 #, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:672: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	40(%rbp), %rax	 # __str, tmp100
	leaq	16(%rax), %rdx	 #, _7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:672: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	32(%rbp), %rax	 # this, tmp101
	addq	$16, %rax	 #, _8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:672: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	%rcx, %r8	 # _6,
	movq	%rax, %rcx	 # _8,
	call	_ZNSt11char_traitsIcE4copyEPcPKcy	 #
	jmp	.L164	 #
.L163:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:677: 	    _M_data(__str._M_data());
	movq	40(%rbp), %rax	 # __str, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rdx	 #, _9
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:677: 	    _M_data(__str._M_data());
	movq	32(%rbp), %rax	 # this, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:678: 	    _M_capacity(__str._M_allocated_capacity);
	movq	40(%rbp), %rax	 # __str, tmp104
	movq	16(%rax), %rdx	 # __str_18(D)->D.72316._M_allocated_capacity, _10
	movq	32(%rbp), %rax	 # this, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy	 #
.L164:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:684: 	_M_length(__str.length());
	movq	40(%rbp), %rax	 # __str, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	 #
	movq	%rax, %rdx	 #, _11
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:684: 	_M_length(__str.length());
	movq	32(%rbp), %rax	 # this, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:685: 	__str._M_data(__str._M_local_data());
	movq	40(%rbp), %rax	 # __str, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	 #
	movq	%rax, %rdx	 #, _12
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:685: 	__str._M_data(__str._M_local_data());
	movq	40(%rbp), %rax	 # __str, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:686: 	__str._M_set_length(0);
	movq	40(%rbp), %rax	 # __str, tmp110
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp110,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:687:       }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5439:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5439-.LLSDACSB5439
.LLSDACSB5439:
.LLSDACSE5439:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderD1Ev:
.LFB5522:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	16(%rbp), %rax	 # this, tmp82
	movq	%rax, -8(%rbp)	 # tmp82, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:181:       struct _Alloc_hider : allocator_type // TODO check __is_final
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED1Ev
	.def	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED1Ev
_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED1Ev:
.LFB5524:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:792:       { _M_dispose(); }
	movq	16(%rbp), %rax	 # this, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_disposeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:792:       { _M_dispose(); }
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderD1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:792:       { _M_dispose(); }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5524:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5524-.LLSDACSB5524
.LLSDACSB5524:
.LLSDACSE5524:
	.section	.text$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev
	.def	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev:
.LFB5651:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:402: 	auto& __ptr = _M_t._M_ptr();
	movq	32(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv	 #
	movq	%rax, -8(%rbp)	 # tmp87, __ptr
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:403: 	if (__ptr != nullptr)
	movq	-8(%rbp), %rax	 # __ptr, tmp88
	movq	(%rax), %rax	 # *__ptr_10, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:403: 	if (__ptr != nullptr)
	testq	%rax, %rax	 # _2
	je	.L168	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:404: 	  get_deleter()(std::move(__ptr));
	movq	32(%rbp), %rax	 # this, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv	 #
	movq	%rax, %rbx	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:404: 	  get_deleter()(std::move(__ptr));
	movq	-8(%rbp), %rax	 # __ptr, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:404: 	  get_deleter()(std::move(__ptr));
	movq	(%rax), %rax	 # *_4, _5
	movq	%rax, %rdx	 # _5,
	movq	%rbx, %rcx	 # _3,
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE	 #
.L168:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:405: 	__ptr = pointer();
	movq	-8(%rbp), %rax	 # __ptr, tmp91
	movq	$0, (%rax)	 #, *__ptr_10
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:406:       }
	nop	
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE16_M_get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE16_M_get_allocatorEv
	.def	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE16_M_get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE16_M_get_allocatorEv
_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE16_M_get_allocatorEv:
.LFB5680:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:337:       { return _M_dataplus; }
	movq	16(%rbp), %rax	 # this, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:337:       { return _M_dataplus; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEcvSt17basic_string_viewIwS2_EEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEcvSt17basic_string_viewIwS2_EEv
	.def	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEcvSt17basic_string_viewIwS2_EEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEcvSt17basic_string_viewIwS2_EEv
_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEcvSt17basic_string_viewIwS2_EEv:
.LFB5682:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # .result_ptr, .result_ptr
	movq	%rdx, 40(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:933:       { return __sv_type(data(), size()); }
	movq	40(%rbp), %rax	 # this, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4sizeEv	 #
	movq	%rax, %rbx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:933:       { return __sv_type(data(), size()); }
	movq	40(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4dataEv	 #
	movq	%rax, %rdx	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:933:       { return __sv_type(data(), size()); }
	movq	32(%rbp), %rax	 # .result_ptr, tmp86
	movq	%rbx, %r8	 # _1,
	movq	%rax, %rcx	 # tmp86,
	call	_ZNSt17basic_string_viewIwSt11char_traitsIwEEC1EPKwy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:933:       { return __sv_type(data(), size()); }
	movq	32(%rbp), %rax	 # .result_ptr,
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4sizeEv
	.def	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4sizeEv
_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4sizeEv:
.LFB5687:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1060:       { return _M_string_length; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	8(%rax), %rax	 # this_2(D)->_M_string_length, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1060:       { return _M_string_length; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	.def	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_:
.LFB5691:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # .result_ptr, .result_ptr
	movq	%rdx, 24(%rbp)	 # this, this
	movq	%r8, 32(%rbp)	 # __a, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1166: 	return _S_str_convert<_CharT, _Traits>(_M_pathname, __a);
	movq	24(%rbp), %rdx	 # this, _1
	leaq	-16(%rbp), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEcvSt17basic_string_viewIwS2_EEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1166: 	return _S_str_convert<_CharT, _Traits>(_M_pathname, __a);
	movq	16(%rbp), %rcx	 # <retval>, tmp84
	movq	-16(%rbp), %rax	 # D.147234, tmp85
	movq	-8(%rbp), %rdx	 # D.147234,
	movq	%rax, -32(%rbp)	 # tmp85,
	movq	%rdx, -24(%rbp)	 #,
	movq	32(%rbp), %rdx	 # __a, tmp86
	leaq	-32(%rbp), %rax	 #, tmp87
	movq	%rdx, %r8	 # tmp86,
	movq	%rax, %rdx	 # tmp87,
	call	_ZNSt10filesystem7__cxx114path14_S_str_convertIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EESt17basic_string_viewIwS3_IwEERKSA_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1167:     }
	movq	16(%rbp), %rax	 # <retval>,
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev
	.def	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev
_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev:
.LFB5734:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	16(%rbp), %rax	 # this, tmp89
	movq	16(%rax), %rdx	 # this_9(D)->_M_impl.D.131647._M_end_of_storage, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	16(%rbp), %rax	 # this, tmp90
	movq	(%rax), %rax	 # this_9(D)->_M_impl.D.131647._M_start, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rax, %rdx	 # _2, _3
	movq	%rdx, %rax	 # _3, _3
	sarq	$4, %rax	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:366: 	_M_deallocate(_M_impl._M_start,
	movq	%rax, %rcx	 # _4, _5
	movq	16(%rbp), %rax	 # this, tmp92
	movq	(%rax), %rdx	 # this_9(D)->_M_impl.D.131647._M_start, _6
	movq	16(%rbp), %rax	 # this, tmp93
	movq	%rcx, %r8	 # _5,
	movq	%rax, %rcx	 # tmp93,
	call	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_y	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:368:       }
	movq	16(%rbp), %rax	 # this, _7
	movq	%rax, %rcx	 # _7,
	call	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD1Ev	 #
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5734:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5734-.LLSDACSB5734
.LLSDACSB5734:
.LLSDACSE5734:
	.section	.text$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev:
.LFB5738:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:733: 		      _M_get_Tp_allocator());
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:732: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	16(%rbp), %rdx	 # this, tmp87
	movq	8(%rdx), %rdx	 # this_6(D)->D.132308._M_impl.D.131647._M_finish, _3
	movq	16(%rbp), %rcx	 # this, tmp88
	movq	(%rcx), %rcx	 # this_6(D)->D.132308._M_impl.D.131647._M_start, _4
	movq	%rcx, -8(%rbp)	 # _4, __first
	movq	%rdx, -16(%rbp)	 # _3, __last
	movq	%rax, -24(%rbp)	 # _2, D.147849
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:947:       std::_Destroy(__first, __last);
	movq	-16(%rbp), %rdx	 # __last, tmp89
	movq	-8(%rbp), %rax	 # __first, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:948:     }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:735:       }
	movq	16(%rbp), %rax	 # this, _5
	movq	%rax, %rcx	 # _5,
	call	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev	 #
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5738:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5738-.LLSDACSB5738
.LLSDACSB5738:
.LLSDACSE5738:
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	.def	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc:
.LFB5741:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __str, __str
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:141:       : _M_len{traits_type::length(__str)},
	movq	24(%rbp), %rax	 # __str, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZNSt11char_traitsIcE6lengthEPKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:141:       : _M_len{traits_type::length(__str)},
	movq	16(%rbp), %rdx	 # this, tmp84
	movq	%rax, (%rdx)	 # _1, this_3(D)->_M_len
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:142: 	_M_str{__str}
	movq	16(%rbp), %rax	 # this, tmp85
	movq	24(%rbp), %rdx	 # __str, tmp86
	movq	%rdx, 8(%rax)	 # tmp86, this_3(D)->_M_str
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:143:       { }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5741:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5741-.LLSDACSB5741
.LLSDACSB5741:
.LLSDACSE5741:
	.section	.text$_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_:
.LFB5742:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __x, __x
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1296:       { emplace_back(std::move(__x)); }
	movq	24(%rbp), %rax	 # __x, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZSt4moveIRSt17basic_string_viewIcSt11char_traitsIcEEEONSt16remove_referenceIT_E4typeEOS6_	 #
	movq	%rax, %rdx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1296:       { emplace_back(std::move(__x)); }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1296:       { emplace_back(std::move(__x)); }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "basic_string::_M_create\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy:
.LFB5746:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __capacity, __capacity
	movq	%r8, 48(%rbp)	 # __old_capacity, __old_capacity
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:139:       if (__capacity > max_size())
	movq	40(%rbp), %rax	 # __capacity, tmp98
	movq	(%rax), %rbx	 # *__capacity_15(D), _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:139:       if (__capacity > max_size())
	movq	32(%rbp), %rax	 # this, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:139:       if (__capacity > max_size())
	cmpq	%rbx, %rax	 # _1, _2
	setb	%al	 #, retval.21_18
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:139:       if (__capacity > max_size())
	testb	%al, %al	 # retval.21_18
	je	.L182	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:140: 	std::__throw_length_error(__N("basic_string::_M_create"));
	leaq	.LC4(%rip), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	_ZSt20__throw_length_errorPKc	 #
.L182:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:145:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	40(%rbp), %rax	 # __capacity, tmp101
	movq	(%rax), %rax	 # *__capacity_15(D), _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:145:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, 48(%rbp)	 # _3, __old_capacity
	jnb	.L183	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:145:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	40(%rbp), %rax	 # __capacity, tmp102
	movq	(%rax), %rdx	 # *__capacity_15(D), _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:145:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	48(%rbp), %rax	 # __old_capacity, tmp103
	addq	%rax, %rax	 # _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:145:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, %rdx	 # _5, _4
	jnb	.L183	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:147: 	  __capacity = 2 * __old_capacity;
	movq	48(%rbp), %rax	 # __old_capacity, tmp104
	leaq	(%rax,%rax), %rdx	 #, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:147: 	  __capacity = 2 * __old_capacity;
	movq	40(%rbp), %rax	 # __capacity, tmp105
	movq	%rdx, (%rax)	 # _6, *__capacity_15(D)
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:149: 	  if (__capacity > max_size())
	movq	40(%rbp), %rax	 # __capacity, tmp106
	movq	(%rax), %rbx	 # *__capacity_15(D), _7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:149: 	  if (__capacity > max_size())
	movq	32(%rbp), %rax	 # this, tmp107
	movq	%rax, %rcx	 # tmp107,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:149: 	  if (__capacity > max_size())
	cmpq	%rbx, %rax	 # _7, _8
	setb	%al	 #, retval.22_22
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:149: 	  if (__capacity > max_size())
	testb	%al, %al	 # retval.22_22
	je	.L183	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:150: 	    __capacity = max_size();
	movq	32(%rbp), %rax	 # this, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:150: 	    __capacity = max_size();
	movq	40(%rbp), %rdx	 # __capacity, tmp109
	movq	%rax, (%rdx)	 # _9, *__capacity_15(D)
.L183:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:155:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	40(%rbp), %rax	 # __capacity, tmp110
	movq	(%rax), %rax	 # *__capacity_15(D), _10
	leaq	1(%rax), %rbx	 #, _11
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:155:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	32(%rbp), %rax	 # this, tmp111
	movq	%rax, %rcx	 # tmp111,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:155:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	%rbx, %rdx	 # _11,
	movq	%rax, %rcx	 # _12,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:156:     }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc:
.LFB5747:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __p, __p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	movq	16(%rbp), %rax	 # this, tmp82
	movq	24(%rbp), %rdx	 # __p, tmp83
	movq	%rdx, (%rax)	 # tmp83, this_2(D)->_M_dataplus._M_p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:213:       { _M_dataplus._M_p = __p; }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy:
.LFB5748:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __capacity, __capacity
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	movq	16(%rbp), %rax	 # this, tmp82
	movq	24(%rbp), %rdx	 # __capacity, tmp83
	movq	%rdx, 16(%rax)	 # tmp83, this_2(D)->D.72316._M_allocated_capacity
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:250:       { _M_allocated_capacity = __capacity; }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB5749:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:282: 	if (!_M_is_local())
	movq	16(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:282: 	if (!_M_is_local())
	xorl	$1, %eax	 #, retval.33_8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:282: 	if (!_M_is_local())
	testb	%al, %al	 # retval.33_8
	je	.L189	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:283: 	  _M_destroy(_M_allocated_capacity);
	movq	16(%rbp), %rax	 # this, tmp86
	movq	16(%rax), %rdx	 # this_5(D)->D.72316._M_allocated_capacity, _2
	movq	16(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy	 #
.L189:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:284:       }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy:
.LFB5750:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:256: 	_M_length(__n);
	movq	24(%rbp), %rdx	 # __n, tmp84
	movq	16(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:257: 	traits_type::assign(_M_data()[__n], _CharT());
	movb	$0, -1(%rbp)	 #, D.138269
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:257: 	traits_type::assign(_M_data()[__n], _CharT());
	movq	16(%rbp), %rax	 # this, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:257: 	traits_type::assign(_M_data()[__n], _CharT());
	movq	24(%rbp), %rdx	 # __n, tmp87
	leaq	(%rax,%rdx), %rcx	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:257: 	traits_type::assign(_M_data()[__n], _CharT());
	leaq	-1(%rbp), %rax	 #, tmp88
	movq	%rax, %rdx	 # tmp88,
	call	_ZNSt11char_traitsIcE6assignERcRKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:258:       }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv:
.LFB5751:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:871:       { return iterator(this->_M_impl._M_start); }
	movq	16(%rbp), %rdx	 # this, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:871:       { return iterator(this->_M_impl._M_start); }
	leaq	-8(%rbp), %rax	 #, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC1ERKS5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:871:       { return iterator(this->_M_impl._M_start); }
	movq	-8(%rbp), %rax	 # D.138293, D.146854
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:871:       { return iterator(this->_M_impl._M_start); }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv:
.LFB5752:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:891:       { return iterator(this->_M_impl._M_finish); }
	movq	16(%rbp), %rax	 # this, tmp85
	leaq	8(%rax), %rdx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:891:       { return iterator(this->_M_impl._M_finish); }
	leaq	-8(%rbp), %rax	 #, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC1ERKS5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:891:       { return iterator(this->_M_impl._M_finish); }
	movq	-8(%rbp), %rax	 # D.138298, D.146817
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:891:       { return iterator(this->_M_impl._M_finish); }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEppEv:
.LFB5753:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1111: 	++_M_current;
	movq	16(%rbp), %rax	 # this, tmp86
	movq	(%rax), %rax	 # this_4(D)->_M_current, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1111: 	++_M_current;
	leaq	16(%rax), %rdx	 #, _2
	movq	16(%rbp), %rax	 # this, tmp87
	movq	%rdx, (%rax)	 # _2, this_4(D)->_M_current
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1112: 	return *this;
	movq	16(%rbp), %rax	 # this, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1113:       }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt17basic_string_viewIcSt11char_traitsIcEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt17basic_string_viewIcSt11char_traitsIcEEixEy
	.def	_ZNKSt17basic_string_viewIcSt11char_traitsIcEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt17basic_string_viewIcSt11char_traitsIcEEixEy
_ZNKSt17basic_string_viewIcSt11char_traitsIcEEixEy:
.LFB5754:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __pos, __pos
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:258: 	__glibcxx_assert(__pos < this->_M_len);
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:258: 	__glibcxx_assert(__pos < this->_M_len);
	testb	%al, %al	 # _1
	je	.L198	 #,
	movq	16(%rbp), %rax	 # this, tmp88
	movq	(%rax), %rax	 # this_7(D)->_M_len, _2
	cmpq	%rax, 24(%rbp)	 # _2, __pos
	jb	.L198	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:258: 	__glibcxx_assert(__pos < this->_M_len);
	movl	$1, %eax	 #, iftmp.37_4
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:258: 	__glibcxx_assert(__pos < this->_M_len);
	jmp	.L199	 #
.L198:
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:258: 	__glibcxx_assert(__pos < this->_M_len);
	movl	$0, %eax	 #, iftmp.37_4
.L199:
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:258: 	__glibcxx_assert(__pos < this->_M_len);
	testb	%al, %al	 # iftmp.37_4
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:259: 	return *(this->_M_str + __pos);
	movq	16(%rbp), %rax	 # this, tmp89
	movq	8(%rax), %rdx	 # this_7(D)->_M_str, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:259: 	return *(this->_M_str + __pos);
	movq	24(%rbp), %rax	 # __pos, tmp90
	addq	%rdx, %rax	 # _3, _12
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:260:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_:
.LFB5755:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __svt, __svt
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:925:        { return this->assign(__svt); }
	movq	24(%rbp), %rdx	 # __svt, tmp84
	movq	16(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:925:        { return this->assign(__svt); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_,"x"
	.linkonce discard
	.globl	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	.def	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_:
.LFB5761:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # .result_ptr, .result_ptr
	movq	%rdx, 24(%rbp)	 # __string, __string
	movl	%r8d, %eax	 # __delim, tmp84
	movl	%r9d, %edx	 # __escape, tmp86
	movb	%al, 32(%rbp)	 # tmp85, __delim
	movl	%edx, %eax	 # tmp86, tmp87
	movb	%al, 40(%rbp)	 # tmp87, __escape
 # C:/msys64/ucrt64/include/c++/13.2.0/iomanip:478: 	    __string, __delim, __escape);
	movsbl	40(%rbp), %r8d	 # __escape, _1
	movsbl	32(%rbp), %ecx	 # __delim, _2
	movq	24(%rbp), %rdx	 # __string, tmp88
	movq	16(%rbp), %rax	 # .result_ptr, tmp89
	movl	%r8d, %r9d	 # _1,
	movl	%ecx, %r8d	 # _2,
	movq	%rax, %rcx	 # tmp89,
	call	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC1ES8_cc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/iomanip:479:     }
	movq	16(%rbp), %rax	 # .result_ptr,
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,"x"
	.linkonce discard
	.globl	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	.def	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE:
.LFB5760:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$104, %rsp	 #,
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __os, __os
	movq	%rdx, 40(%rbp)	 # __p, __p
	leaq	-9(%rbp), %rax	 #, tmp85
	movq	%rax, -8(%rbp)	 # tmp85, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:163:       allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:542: 	__os << std::quoted(__p.string<_CharT, _Traits>());
	leaq	-48(%rbp), %rax	 #, tmp86
	leaq	-9(%rbp), %rcx	 #, tmp87
	movq	40(%rbp), %rdx	 # __p, tmp88
	movq	%rcx, %r8	 # tmp87,
	movq	%rax, %rcx	 # tmp86,
.LEHB21:
	call	_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_	 #
.LEHE21:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:542: 	__os << std::quoted(__p.string<_CharT, _Traits>());
	leaq	-64(%rbp), %rax	 #, tmp89
	leaq	-48(%rbp), %rdx	 #, tmp90
	movl	$92, %r9d	 #,
	movl	$34, %r8d	 #,
	movq	%rax, %rcx	 # tmp89,
	call	_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:542: 	__os << std::quoted(__p.string<_CharT, _Traits>());
	leaq	-64(%rbp), %rdx	 #, tmp91
	movq	32(%rbp), %rax	 # __os, tmp92
	movq	%rax, %rcx	 # tmp92,
.LEHB22:
	call	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE	 #
.LEHE22:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:542: 	__os << std::quoted(__p.string<_CharT, _Traits>());
	leaq	-48(%rbp), %rax	 #, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:543: 	return __os;
	movq	32(%rbp), %rax	 # __os, _13
	jmp	.L213	 #
.L211:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:542: 	__os << std::quoted(__p.string<_CharT, _Traits>());
	movq	%rax, %rbx	 #, tmp97
	leaq	-48(%rbp), %rax	 #, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
	movq	%rbx, %rax	 # tmp97, tmp96
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	jmp	.L214	 #
.L210:
.L214:
	nop	
	movq	%rax, %rcx	 # D.147996,
.LEHB23:
	call	_Unwind_Resume	 #
.LEHE23:
.L213:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:544:       }
	addq	$104, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5760:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5760-.LLSDACSB5760
.LLSDACSB5760:
	.uleb128 .LEHB21-.LFB5760
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L210-.LFB5760
	.uleb128 0
	.uleb128 .LEHB22-.LFB5760
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L211-.LFB5760
	.uleb128 0
	.uleb128 .LEHB23-.LFB5760
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE5760:
	.section	.text$_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIN5lexer5tokenESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN5lexer5tokenESaIS1_EED1Ev
	.def	_ZNSt6vectorIN5lexer5tokenESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN5lexer5tokenESaIS1_EED1Ev
_ZNSt6vectorIN5lexer5tokenESaIS1_EED1Ev:
.LFB5778:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:733: 		      _M_get_Tp_allocator());
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE19_M_get_Tp_allocatorEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:732: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	16(%rbp), %rdx	 # this, tmp87
	movq	8(%rdx), %rdx	 # this_6(D)->D.134283._M_impl.D.133622._M_finish, _3
	movq	16(%rbp), %rcx	 # this, tmp88
	movq	(%rcx), %rcx	 # this_6(D)->D.134283._M_impl.D.133622._M_start, _4
	movq	%rcx, -8(%rbp)	 # _4, __first
	movq	%rdx, -16(%rbp)	 # _3, __last
	movq	%rax, -24(%rbp)	 # _2, D.147869
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:947:       std::_Destroy(__first, __last);
	movq	-16(%rbp), %rdx	 # __last, tmp89
	movq	-8(%rbp), %rax	 # __first, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZSt8_DestroyIPN5lexer5tokenEEvT_S3_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:948:     }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:735:       }
	movq	16(%rbp), %rax	 # this, _5
	movq	%rax, %rcx	 # _5,
	call	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EED2Ev	 #
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5778:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5778-.LLSDACSB5778
.LLSDACSB5778:
.LLSDACSE5778:
	.section	.text$_ZNSt6vectorIN5lexer5tokenESaIS1_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	.def	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB5779:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	movq	16(%rbp), %rax	 # __t, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.def	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB5780:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __c1, __c1
	movq	%rdx, 24(%rbp)	 # __c2, __c2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:137:       { return __c1 == __c2; }
	movq	16(%rbp), %rax	 # __c1, tmp86
	movzbl	(%rax), %edx	 # *__c1_4(D), _1
	movq	24(%rbp), %rax	 # __c2, tmp87
	movzbl	(%rax), %eax	 # *__c2_5(D), _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:137:       { return __c1 == __c2; }
	cmpb	%al, %dl	 # _2, _1
	sete	%al	 #, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:137:       { return __c1 == __c2; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc
	.def	_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc
_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc:
.LFB5781:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __c1, __c1
	movq	%rdx, 24(%rbp)	 # __c2, __c2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:128: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:128: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.49_5
	je	.L221	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:129: 	  std::construct_at(__builtin_addressof(__c1), __c2);
	movq	24(%rbp), %rdx	 # __c2, tmp84
	movq	16(%rbp), %rax	 # __c1, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:133:       }
	jmp	.L223	 #
.L221:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:132: 	__c1 = __c2;
	movq	24(%rbp), %rax	 # __c2, tmp86
	movzbl	(%rax), %edx	 # *__c2_6(D), _1
	movq	16(%rbp), %rax	 # __c1, tmp87
	movb	%dl, (%rax)	 # _1, *__c1_7(D)
.L223:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/char_traits.h:133:       }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt12construct_atIcJRcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS2_DpOS3_,"x"
	.linkonce discard
	.globl	_ZSt12construct_atIcJRcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS2_DpOS3_
	.def	_ZSt12construct_atIcJRcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS2_DpOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12construct_atIcJRcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS2_DpOS3_
_ZSt12construct_atIcJRcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS2_DpOS3_:
.LFB5782:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __location, __location
	movq	%rdx, 40(%rbp)	 # __args#0, __args#0
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	32(%rbp), %rax	 # __location, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	%rax, %rdx	 # _4,
	movl	$1, %ecx	 #,
	call	_ZnwyPv	 #
	movq	%rax, %rbx	 #, _7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	40(%rbp), %rax	 # __args#0, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZSt7forwardIRcEOT_RNSt16remove_referenceIS1_E4typeE	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movzbl	(%rax), %eax	 # *_1, _2
	movb	%al, (%rbx)	 # _2, MEM[(char *)_7]
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	%rbx, %rax	 # _7, <retval>
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB5801:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:337:       { return _M_dataplus; }
	movq	16(%rbp), %rax	 # this, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:337:       { return _M_dataplus; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_:
.LFB5802:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	16(%rbp), %rax	 # __t, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_:
.LFB5805:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __dat, __dat
	movq	%r8, 32(%rbp)	 # __a, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	32(%rbp), %rax	 # __a, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_	 #
	movq	16(%rbp), %rdx	 # this, tmp84
	movq	%rdx, -8(%rbp)	 # tmp84, this
	movq	%rax, -16(%rbp)	 # _1, __a
	movq	-8(%rbp), %rax	 # this, tmp85
	movq	%rax, -24(%rbp)	 # tmp85, this
	movq	-16(%rbp), %rax	 # __a, tmp86
	movq	%rax, -32(%rbp)	 # tmp86, D.147769
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:168:       : __allocator_base<_Tp>(__a) { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	16(%rbp), %rax	 # this, tmp87
	movq	24(%rbp), %rdx	 # __dat, tmp88
	movq	%rdx, (%rax)	 # tmp88, this_3(D)->_M_p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:193: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv:
.LFB5806:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	movq	32(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rbx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	movq	32(%rbp), %rax	 # this, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rbx	 # _2, _1
	sete	%al	 #, retval.34_9
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	testb	%al, %al	 # retval.34_9
	je	.L232	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	movq	32(%rbp), %rax	 # this, tmp90
	movq	8(%rax), %rax	 # this_6(D)->_M_string_length, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	cmpq	$15, %rax	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:268: 	    return true;
	movl	$1, %eax	 #, _4
	jmp	.L234	 #
.L232:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:270: 	return false;
	movl	$0, %eax	 #, _4
.L234:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:271:       }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv:
.LFB5807:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1067:       { return _M_string_length; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	8(%rax), %rax	 # this_2(D)->_M_string_length, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1067:       { return _M_string_length; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy:
.LFB5808:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __length, __length
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:218:       { _M_string_length = __length; }
	movq	16(%rbp), %rax	 # this, tmp82
	movq	24(%rbp), %rdx	 # __length, tmp83
	movq	%rdx, 8(%rax)	 # tmp83, this_2(D)->_M_string_length
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:218:       { _M_string_length = __length; }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_M_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_M_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_M_dataEv
_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_M_dataEv:
.LFB5812:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	(%rax), %rax	 # this_2(D)->_M_dataplus._M_p, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:223:       { return _M_dataplus._M_p; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_disposeEv:
.LFB5816:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:282: 	if (!_M_is_local())
	movq	16(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:282: 	if (!_M_is_local())
	xorl	$1, %eax	 #, retval.79_8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:282: 	if (!_M_is_local())
	testb	%al, %al	 # retval.79_8
	je	.L242	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:283: 	  _M_destroy(_M_allocated_capacity);
	movq	16(%rbp), %rax	 # this, tmp86
	movq	16(%rax), %rdx	 # this_5(D)->D.73952._M_allocated_capacity, _2
	movq	16(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_destroyEy	 #
.L242:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:284:       }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv:
.LFB5878:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1159: 	return _M_is_local() ? size_type(_S_local_capacity)
	movq	16(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1159: 	return _M_is_local() ? size_type(_S_local_capacity)
	testb	%al, %al	 # _1
	je	.L244	 #,
	movl	$15, %eax	 #, iftmp.42_2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1160: 	                     : _M_allocated_capacity;
	jmp	.L246	 #
.L244:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1159: 	return _M_is_local() ? size_type(_S_local_capacity)
	movq	16(%rbp), %rax	 # this, tmp86
	movq	16(%rax), %rax	 # this_4(D)->D.72316._M_allocated_capacity, iftmp.42_2
.L246:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1161:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.def	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv:
.LFB5905:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:197:       pointer&   _M_ptr() noexcept { return std::get<0>(_M_t); }
	movq	16(%rbp), %rax	 # this, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:197:       pointer&   _M_ptr() noexcept { return std::get<0>(_M_t); }
	movq	%rax, %rcx	 # _1,
	call	_ZSt3getILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:197:       pointer&   _M_ptr() noexcept { return std::get<0>(_M_t); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.def	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv:
.LFB5906:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:476:       { return _M_t._M_deleter(); }
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:476:       { return _M_t._M_deleter(); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	.def	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB5907:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	16(%rbp), %rax	 # __t, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv
	.def	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv
_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv:
.LFB5914:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	movq	32(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_M_dataEv	 #
	movq	%rax, %rbx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	movq	32(%rbp), %rax	 # this, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_local_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rbx	 # _2, _1
	sete	%al	 #, retval.80_9
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:264: 	if (_M_data() == _M_local_data())
	testb	%al, %al	 # retval.80_9
	je	.L254	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	movq	32(%rbp), %rax	 # this, tmp90
	movq	8(%rax), %rax	 # this_6(D)->_M_string_length, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:266: 	    if (_M_string_length > _S_local_capacity)
	cmpq	$7, %rax	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:268: 	    return true;
	movl	$1, %eax	 #, _4
	jmp	.L256	 #
.L254:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:270: 	return false;
	movl	$0, %eax	 #, _4
.L256:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:271:       }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_destroyEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_destroyEy
	.def	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_destroyEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_destroyEy
_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_destroyEy:
.LFB5935:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	leaq	80(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __size, __size
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	40(%rbp), %rax	 # __size, tmp86
	leaq	1(%rax), %rsi	 #, _1
	movq	32(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_M_dataEv	 #
	movq	%rax, %rbx	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	32(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE16_M_get_allocatorEv	 #
	movq	%rax, -8(%rbp)	 # _3, __a
	movq	%rbx, -16(%rbp)	 # _2, __p
	movq	%rsi, -24(%rbp)	 # _1, __n
	movq	-8(%rbp), %rax	 # __a, tmp89
	movq	%rax, -32(%rbp)	 # tmp89, this
	movq	-16(%rbp), %rax	 # __p, tmp90
	movq	%rax, -40(%rbp)	 # tmp90, __p
	movq	-24(%rbp), %rax	 # __n, tmp91
	movq	%rax, -48(%rbp)	 # tmp91, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.81_15
	je	.L258	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:207: 	    ::operator delete(__p);
	movq	-40(%rbp), %rax	 # __p, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	_ZdlPv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:208: 	    return;
	jmp	.L259	 #
.L258:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:210: 	__allocator_base<_Tp>::deallocate(__p, __n);
	movq	-48(%rbp), %rcx	 # __n, tmp93
	movq	-40(%rbp), %rdx	 # __p, tmp94
	movq	-32(%rbp), %rax	 # this, tmp95
	movq	%rcx, %r8	 # tmp93,
	movq	%rax, %rcx	 # tmp95,
	call	_ZNSt15__new_allocatorIwE10deallocateEPwy	 #
.L259:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:516:       { __a.deallocate(__p, __n); }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.def	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv:
.LFB5943:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:201:       _Dp&       _M_deleter() noexcept { return std::get<1>(_M_t); }
	movq	16(%rbp), %rax	 # this, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:201:       _Dp&       _M_deleter() noexcept { return std::get<1>(_M_t); }
	movq	%rax, %rcx	 # _1,
	call	_ZSt3getILy1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/unique_ptr.h:201:       _Dp&       _M_deleter() noexcept { return std::get<1>(_M_t); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4dataEv
	.def	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4dataEv
_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4dataEv:
.LFB5945:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:2597:       { return _M_data(); }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_M_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:2597:       { return _M_data(); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4sizeEv
	.def	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4sizeEv
_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4sizeEv:
.LFB5948:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:232:       { return this->_M_len; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	(%rax), %rax	 # this_2(D)->_M_len, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:232:       { return this->_M_len; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev
	.def	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev
_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev:
.LFB5951:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	leaq	16+_ZTVSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE(%rip), %rdx	 #, _1
	movq	16(%rbp), %rax	 # this, tmp84
	movq	%rdx, (%rax)	 # _1, this_4(D)->D.126202.D.115579.D.93690.D.93591._vptr.facet
	movq	16(%rbp), %rax	 # this, _2
	movq	%rax, %rcx	 # _2,
	call	_ZNSt25__codecvt_utf8_utf16_baseIwED2Ev	 #
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED0Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED0Ev
	.def	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED0Ev
_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED0Ev:
.LFB5952:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	movq	16(%rbp), %rax	 # this, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	movq	16(%rbp), %rax	 # this, tmp83
	movl	$32, %edx	 #,
	movq	%rax, %rcx	 # tmp83,
	call	_ZdlPvy	 #
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt10filesystem7__cxx114path14_S_str_convertIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EESt17basic_string_viewIwS3_IwEERKSA_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10filesystem7__cxx114path14_S_str_convertIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EESt17basic_string_viewIwS3_IwEERKSA_
	.def	_ZNSt10filesystem7__cxx114path14_S_str_convertIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EESt17basic_string_viewIwS3_IwEERKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10filesystem7__cxx114path14_S_str_convertIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EESt17basic_string_viewIwS3_IwEERKSA_
_ZNSt10filesystem7__cxx114path14_S_str_convertIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EESt17basic_string_viewIwS3_IwEERKSA_:
.LFB5947:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$168, %rsp	 #,
	.seh_stackalloc	168
	leaq	160(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 160
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # .result_ptr, .result_ptr
	movq	%rdx, %rbx	 #, tmp89
	movq	(%rbx), %rax	 # __str, tmp90
	movq	8(%rbx), %rdx	 # __str,
	movq	%rax, -128(%rbp)	 # tmp90, __str
	movq	%rdx, -120(%rbp)	 #, __str
	movq	%r8, 48(%rbp)	 # __a, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1116:       if (__str.size() == 0)
	leaq	-128(%rbp), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1116:       if (__str.size() == 0)
	testq	%rax, %rax	 # _1
	sete	%al	 #, retval.51_10
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1116:       if (__str.size() == 0)
	testb	%al, %al	 # retval.51_10
	je	.L269	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1117: 	return _WString(__a);
	movq	48(%rbp), %rdx	 # __a, tmp92
	movq	32(%rbp), %rax	 # <retval>, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_	 #
	jmp	.L268	 #
.L269:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1124:       std::codecvt_utf8_utf16<value_type> __cvt;
	leaq	-80(%rbp), %rax	 #, tmp94
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp94,
.LEHB24:
	call	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EEC1Ey	 #
.LEHE24:
	movq	48(%rbp), %rax	 # __a, tmp95
	movq	%rax, -24(%rbp)	 # tmp95, __a
	leaq	-41(%rbp), %rax	 #, tmp96
	movq	%rax, -32(%rbp)	 # tmp96, this
	movq	-24(%rbp), %rax	 # __a, tmp97
	movq	%rax, -40(%rbp)	 # tmp97, D.147953
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:168:       : __allocator_base<_Tp>(__a) { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1128:       _String __u8str{_CharAlloc{__a}};
	leaq	-41(%rbp), %rdx	 #, tmp98
	leaq	-112(%rbp), %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1129:       const value_type* __wfirst = __str.data();
	leaq	-128(%rbp), %rax	 #, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4dataEv	 #
	movq	%rax, -8(%rbp)	 # tmp101, __wfirst
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1130:       const value_type* __wlast = __wfirst + __str.size();
	leaq	-128(%rbp), %rax	 #, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	_ZNKSt17basic_string_viewIwSt11char_traitsIwEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1130:       const value_type* __wlast = __wfirst + __str.size();
	leaq	(%rax,%rax), %rdx	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1130:       const value_type* __wlast = __wfirst + __str.size();
	movq	-8(%rbp), %rax	 # __wfirst, tmp106
	addq	%rdx, %rax	 # _3, tmp105
	movq	%rax, -16(%rbp)	 # tmp105, __wlast
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1131:       if (!__str_codecvt_out_all(__wfirst, __wlast, __u8str, __cvt))
	leaq	-80(%rbp), %r8	 #, tmp107
	leaq	-112(%rbp), %rcx	 #, tmp108
	movq	-16(%rbp), %rdx	 # __wlast, tmp109
	movq	-8(%rbp), %rax	 # __wfirst, tmp110
	movq	%r8, %r9	 # tmp107,
	movq	%rcx, %r8	 # tmp108,
	movq	%rax, %rcx	 # tmp110,
.LEHB25:
	call	_ZSt21__str_codecvt_out_allIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_E	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1131:       if (!__str_codecvt_out_all(__wfirst, __wlast, __u8str, __cvt))
	xorl	$1, %eax	 #, retval.52_21
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1131:       if (!__str_codecvt_out_all(__wfirst, __wlast, __u8str, __cvt))
	testb	%al, %al	 # retval.52_21
	je	.L271	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1132: 	__detail::__throw_conversion_error();
	call	_ZNSt10filesystem7__cxx118__detail24__throw_conversion_errorEv	 #
.LEHE25:
.L271:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1134: 	return __u8str; // XXX assumes native ordinary encoding is UTF-8.
	leaq	-112(%rbp), %rdx	 #, tmp111
	movq	32(%rbp), %rax	 # <retval>, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1156:     }
	leaq	-112(%rbp), %rax	 #, tmp113
	movq	%rax, %rcx	 # tmp113,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1156:     }
	leaq	-80(%rbp), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/fs_path.h:1156:     }
	jmp	.L268	 #
.L274:
	movq	%rax, %rbx	 #, tmp117
	leaq	-112(%rbp), %rax	 #, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
	leaq	-80(%rbp), %rax	 #, tmp120
	movq	%rax, %rcx	 # tmp120,
	call	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev	 #
	movq	%rbx, %rax	 # tmp116, D.147999
	movq	%rax, %rcx	 # D.147999,
.LEHB26:
	call	_Unwind_Resume	 #
.LEHE26:
.L268:
	movq	32(%rbp), %rax	 # <retval>,
	addq	$168, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5947:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5947-.LLSDACSB5947
.LLSDACSB5947:
	.uleb128 .LEHB24-.LFB5947
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB5947
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L274-.LFB5947
	.uleb128 0
	.uleb128 .LEHB26-.LFB5947
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE5947:
	.section	.text$_ZNSt10filesystem7__cxx114path14_S_str_convertIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EESt17basic_string_viewIwS3_IwEERKSA_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_y
	.def	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_y
_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_y:
.LFB6019:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __p, __p
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:386: 	if (__p)
	cmpq	$0, 24(%rbp)	 #, __p
	je	.L279	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:387: 	  _Tr::deallocate(_M_impl, __p, __n);
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, -8(%rbp)	 # _1, __a
	movq	24(%rbp), %rax	 # __p, tmp84
	movq	%rax, -16(%rbp)	 # tmp84, __p
	movq	32(%rbp), %rax	 # __n, tmp85
	movq	%rax, -24(%rbp)	 # tmp85, __n
	movq	-8(%rbp), %rax	 # __a, tmp86
	movq	%rax, -32(%rbp)	 # tmp86, this
	movq	-16(%rbp), %rax	 # __p, tmp87
	movq	%rax, -40(%rbp)	 # tmp87, __p
	movq	-24(%rbp), %rax	 # __n, tmp88
	movq	%rax, -48(%rbp)	 # tmp88, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.12_13
	je	.L277	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:207: 	    ::operator delete(__p);
	movq	-40(%rbp), %rax	 # __p, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZdlPv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:208: 	    return;
	jmp	.L278	 #
.L277:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:210: 	__allocator_base<_Tp>::deallocate(__p, __n);
	movq	-48(%rbp), %rcx	 # __n, tmp90
	movq	-40(%rbp), %rdx	 # __p, tmp91
	movq	-32(%rbp), %rax	 # this, tmp92
	movq	%rcx, %r8	 # tmp90,
	movq	%rax, %rcx	 # tmp92,
	call	_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_y	 #
.L278:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:516:       { __a.deallocate(__p, __n); }
	nop	
.L279:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:388:       }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv:
.LFB6020:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:299:       { return this->_M_impl; }
	movq	16(%rbp), %rax	 # this, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:299:       { return this->_M_impl; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt4moveIRSt17basic_string_viewIcSt11char_traitsIcEEEONSt16remove_referenceIT_E4typeEOS6_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRSt17basic_string_viewIcSt11char_traitsIcEEEONSt16remove_referenceIT_E4typeEOS6_
	.def	_ZSt4moveIRSt17basic_string_viewIcSt11char_traitsIcEEEONSt16remove_referenceIT_E4typeEOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRSt17basic_string_viewIcSt11char_traitsIcEEEONSt16remove_referenceIT_E4typeEOS6_
_ZSt4moveIRSt17basic_string_viewIcSt11char_traitsIcEEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB6022:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	16(%rbp), %rax	 # __t, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_:
.LFB6023:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$72, %rsp	 #,
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __args#0, __args#0
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	32(%rbp), %rax	 # this, tmp94
	movq	8(%rax), %rdx	 # this_11(D)->D.132308._M_impl.D.131647._M_finish, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	32(%rbp), %rax	 # this, tmp95
	movq	16(%rax), %rax	 # this_11(D)->D.132308._M_impl.D.131647._M_end_of_storage, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rax, %rdx	 # _2, _1
	je	.L285	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:117: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	40(%rbp), %rax	 # __args#0, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:117: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	32(%rbp), %rdx	 # this, tmp97
	movq	8(%rdx), %rdx	 # this_11(D)->D.132308._M_impl.D.131647._M_finish, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:117: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	32(%rbp), %rcx	 # this, _5
	movq	%rcx, -8(%rbp)	 # _5, __a
	movq	%rdx, -16(%rbp)	 # _4, __p
	movq	%rax, -24(%rbp)	 # _3, __args#0
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:539: 	  std::construct_at(__p, std::forward<_Args>(__args)...);
	movq	-24(%rbp), %rax	 # __args#0, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE	 #
	movq	%rax, %rdx	 #, _23
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:539: 	  std::construct_at(__p, std::forward<_Args>(__args)...);
	movq	-16(%rbp), %rax	 # __p, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	_ZSt12construct_atISt17basic_string_viewIcSt11char_traitsIcEEJS3_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:541: 	}
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	movq	32(%rbp), %rax	 # this, tmp100
	movq	8(%rax), %rax	 # this_11(D)->D.132308._M_impl.D.131647._M_finish, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	leaq	16(%rax), %rdx	 #, _7
	movq	32(%rbp), %rax	 # this, tmp101
	movq	%rdx, 8(%rax)	 # _7, this_11(D)->D.132308._M_impl.D.131647._M_finish
	jmp	.L286	 #
.L285:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:123: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	movq	40(%rbp), %rax	 # __args#0, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE	 #
	movq	%rax, %rbx	 #, _8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:123: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	movq	32(%rbp), %rax	 # this, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv	 #
	movq	%rax, %rdx	 #, D.146805
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:123: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	movq	32(%rbp), %rax	 # this, tmp104
	movq	%rbx, %r8	 # _8,
	movq	%rax, %rcx	 # tmp104,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_	 #
.L286:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:125: 	return back();
	movq	32(%rbp), %rax	 # this, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:127:       }
	addq	$72, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv:
.LFB6032:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1073:       { return (_Alloc_traits::max_size(_M_get_allocator()) - 1) / 2; }
	movq	16(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	 #
	movq	%rax, -8(%rbp)	 # _1, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:575: 	return size_t(-1) / sizeof(value_type);
	movq	$-1, %rax	 #, D.147791
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1073:       { return (_Alloc_traits::max_size(_M_get_allocator()) - 1) / 2; }
	subq	$1, %rax	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1073:       { return (_Alloc_traits::max_size(_M_get_allocator()) - 1) / 2; }
	shrq	%rax	 # _7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1073:       { return (_Alloc_traits::max_size(_M_get_allocator()) - 1) / 2; }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y,"x"
	.linkonce discard
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y:
.LFB6033:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __a, __a
	movq	%rdx, 24(%rbp)	 # __n, __n
	movq	16(%rbp), %rax	 # __a, tmp93
	movq	%rax, -16(%rbp)	 # tmp93, __a
	movq	24(%rbp), %rax	 # __n, tmp94
	movq	%rax, -24(%rbp)	 # tmp94, __n
	movq	-16(%rbp), %rax	 # __a, tmp95
	movq	%rax, -32(%rbp)	 # tmp95, this
	movq	-24(%rbp), %rax	 # __n, tmp96
	movq	%rax, -40(%rbp)	 # tmp96, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:191: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:191: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.23_10
	je	.L292	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:193: 	    if (__builtin_mul_overflow(__n, sizeof(_Tp), &__n))
	movq	-40(%rbp), %rax	 # __n, __n.25_11
	movq	%rax, -40(%rbp)	 # __n.25_11, __n
	movl	$0, %eax	 #, _14
	andl	$1, %eax	 #, retval.24_15
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:193: 	    if (__builtin_mul_overflow(__n, sizeof(_Tp), &__n))
	testb	%al, %al	 # retval.24_15
	je	.L293	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:194: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L293:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:195: 	    return static_cast<_Tp*>(::operator new(__n));
	movq	-40(%rbp), %rax	 # __n, __n.26_16
	movq	%rax, %rcx	 # __n.26_16,
	call	_Znwy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:195: 	    return static_cast<_Tp*>(::operator new(__n));
	jmp	.L294	 #
.L292:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:198: 	return __allocator_base<_Tp>::allocate(__n, 0);
	movq	-40(%rbp), %rdx	 # __n, __n.27_19
	movq	-32(%rbp), %rax	 # this, tmp98
	movl	$0, %r8d	 #,
	movq	%rax, %rcx	 # tmp98,
	call	_ZNSt15__new_allocatorIcE8allocateEyPKv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:198: 	return __allocator_base<_Tp>::allocate(__n, 0);
	nop	
.L294:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:482:       { return __a.allocate(__n); }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:126: 	pointer __p = _Alloc_traits::allocate(__a, __n);
	movq	%rax, -8(%rbp)	 # D.147809, __p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:136: 	return __p;
	movq	-8(%rbp), %rax	 # __p, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:137:       }
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy:
.LFB6034:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	leaq	80(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __size, __size
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	40(%rbp), %rax	 # __size, tmp86
	leaq	1(%rax), %rsi	 #, _1
	movq	32(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rbx	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	32(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	 #
	movq	%rax, -8(%rbp)	 # _3, __a
	movq	%rbx, -16(%rbp)	 # _2, __p
	movq	%rsi, -24(%rbp)	 # _1, __n
	movq	-8(%rbp), %rax	 # __a, tmp89
	movq	%rax, -32(%rbp)	 # tmp89, this
	movq	-16(%rbp), %rax	 # __p, tmp90
	movq	%rax, -40(%rbp)	 # tmp90, __p
	movq	-24(%rbp), %rax	 # __n, tmp91
	movq	%rax, -48(%rbp)	 # tmp91, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.35_15
	je	.L298	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:207: 	    ::operator delete(__p);
	movq	-40(%rbp), %rax	 # __p, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	_ZdlPv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:208: 	    return;
	jmp	.L299	 #
.L298:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:210: 	__allocator_base<_Tp>::deallocate(__p, __n);
	movq	-48(%rbp), %rcx	 # __n, tmp93
	movq	-40(%rbp), %rdx	 # __p, tmp94
	movq	-32(%rbp), %rax	 # this, tmp95
	movq	%rcx, %r8	 # tmp93,
	movq	%rax, %rcx	 # tmp95,
	call	_ZNSt15__new_allocatorIcE10deallocateEPcy	 #
.L299:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:516:       { __a.deallocate(__p, __n); }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:289:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC1ERKS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC1ERKS5_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC1ERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC1ERKS5_
_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC1ERKS5_:
.LFB6037:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __i, __i
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	movq	24(%rbp), %rax	 # __i, tmp83
	movq	(%rax), %rdx	 # *__i_5(D), _1
	movq	16(%rbp), %rax	 # this, tmp84
	movq	%rdx, (%rax)	 # _1, this_3(D)->_M_current
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt17basic_string_viewIcS2_EEENSt9enable_ifIXsrSt6__and_IJSt14is_convertibleIRKT_S7_ESt6__not_ISA_IPSC_PKS4_EESF_ISA_ISD_PKcEEEE5valueERS4_E4typeESD_:
.LFB6038:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __svt, __svt
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1732: 	  __sv_type __sv = __svt;
	movq	40(%rbp), %rax	 # __svt, tmp86
	movq	8(%rax), %rdx	 # *__svt_4(D),
	movq	(%rax), %rax	 # *__svt_4(D), tmp87
	movq	%rax, -16(%rbp)	 # tmp87, __sv
	movq	%rdx, -8(%rbp)	 #, __sv
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1733: 	  return this->assign(__sv.data(), __sv.size());
	leaq	-16(%rbp), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv	 #
	movq	%rax, %rbx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1733: 	  return this->assign(__sv.data(), __sv.size());
	leaq	-16(%rbp), %rax	 #, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv	 #
	movq	%rax, %rdx	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1733: 	  return this->assign(__sv.data(), __sv.size());
	movq	32(%rbp), %rax	 # this, tmp90
	movq	%rbx, %r8	 # _1,
	movq	%rax, %rcx	 # tmp90,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1734: 	}
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC1ES8_cc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC1ES8_cc
	.def	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC1ES8_cc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC1ES8_cc
_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC1ES8_cc:
.LFB6045:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __str, __str
	movl	%r8d, %eax	 # __del, tmp82
	movl	%r9d, %edx	 # __esc, tmp84
	movb	%al, 32(%rbp)	 # tmp83, __del
	movl	%edx, %eax	 # tmp84, tmp85
	movb	%al, 40(%rbp)	 # tmp85, __esc
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:56: 	: _M_string(__str), _M_delim{__del}, _M_escape{__esc}
	movq	16(%rbp), %rax	 # this, tmp86
	movq	24(%rbp), %rdx	 # __str, tmp87
	movq	%rdx, (%rax)	 # tmp87, this_2(D)->_M_string
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:56: 	: _M_string(__str), _M_delim{__del}, _M_escape{__esc}
	movq	16(%rbp), %rax	 # this, tmp88
	movzbl	32(%rbp), %edx	 # __del, tmp89
	movb	%dl, 8(%rax)	 # tmp89, this_2(D)->_M_delim
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:56: 	: _M_string(__str), _M_delim{__del}, _M_escape{__esc}
	movq	16(%rbp), %rax	 # this, tmp90
	movzbl	40(%rbp), %edx	 # __esc, tmp91
	movb	%dl, 9(%rax)	 # tmp91, this_2(D)->_M_escape
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:57: 	{ }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
.LFB6047:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1100:       { return *_M_current; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	(%rax), %rax	 # this_2(D)->_M_current, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1100:       { return *_M_current; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,"x"
	.linkonce discard
	.globl	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	.def	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE:
.LFB6046:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$488, %rsp	 #,
	.seh_stackalloc	488
	leaq	128(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 384(%rbp)	 # __os, __os
	movq	%rdx, 392(%rbp)	 # __str, __str
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:122: 	std::basic_ostringstream<_CharT, _Traits> __ostr;
	leaq	-80(%rbp), %rax	 #, tmp97
	movq	%rax, %rcx	 # tmp97,
.LEHB27:
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev	 #
.LEHE27:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:123: 	__ostr << __str._M_delim;
	movq	392(%rbp), %rax	 # __str, tmp98
	movzbl	8(%rax), %eax	 # __str_20(D)->_M_delim, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:123: 	__ostr << __str._M_delim;
	movsbl	%al, %edx	 # _1, _2
	leaq	-80(%rbp), %rax	 #, tmp99
	movq	%rax, %rcx	 # tmp99,
.LEHB28:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:124: 	for (auto __c : __str._M_string)
	movq	392(%rbp), %rax	 # __str, tmp100
	movq	(%rax), %rax	 # __str_20(D)->_M_string, tmp101
	movq	%rax, 344(%rbp)	 # tmp101, __for_range
	movq	344(%rbp), %rax	 # __for_range, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv	 #
	movq	%rax, -88(%rbp)	 # tmp104, __for_begin
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:124: 	for (auto __c : __str._M_string)
	movq	344(%rbp), %rax	 # __for_range, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv	 #
	movq	%rax, -96(%rbp)	 # tmp107, __for_end
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:124: 	for (auto __c : __str._M_string)
	jmp	.L307	 #
.L310:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:124: 	for (auto __c : __str._M_string)
	leaq	-88(%rbp), %rax	 #, tmp108
	movq	%rax, %rcx	 # tmp108,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv	 #
	movzbl	(%rax), %eax	 # *_3, tmp109
	movb	%al, 343(%rbp)	 # tmp109, __c
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:126: 	    if (__c == __str._M_delim || __c == __str._M_escape)
	movq	392(%rbp), %rax	 # __str, tmp110
	movzbl	8(%rax), %eax	 # __str_20(D)->_M_delim, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:126: 	    if (__c == __str._M_delim || __c == __str._M_escape)
	cmpb	%al, 343(%rbp)	 # _4, __c
	je	.L308	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:126: 	    if (__c == __str._M_delim || __c == __str._M_escape)
	movq	392(%rbp), %rax	 # __str, tmp111
	movzbl	9(%rax), %eax	 # __str_20(D)->_M_escape, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:126: 	    if (__c == __str._M_delim || __c == __str._M_escape)
	cmpb	%al, 343(%rbp)	 # _5, __c
	jne	.L309	 #,
.L308:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:127: 	      __ostr << __str._M_escape;
	movq	392(%rbp), %rax	 # __str, tmp112
	movzbl	9(%rax), %eax	 # __str_20(D)->_M_escape, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:127: 	      __ostr << __str._M_escape;
	movsbl	%al, %edx	 # _6, _7
	leaq	-80(%rbp), %rax	 #, tmp113
	movq	%rax, %rcx	 # tmp113,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	 #
.L309:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:128: 	    __ostr << __c;
	movsbl	343(%rbp), %edx	 # __c, _8
	leaq	-80(%rbp), %rax	 #, tmp114
	movq	%rax, %rcx	 # tmp114,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:124: 	for (auto __c : __str._M_string)
	leaq	-88(%rbp), %rax	 #, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv	 #
.L307:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:124: 	for (auto __c : __str._M_string)
	leaq	-96(%rbp), %rdx	 #, tmp116
	leaq	-88(%rbp), %rax	 #, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	_ZN9__gnu_cxxeqIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_	 #
	xorl	$1, %eax	 #, retval.78_26
	testb	%al, %al	 # retval.78_26
	jne	.L310	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:130: 	__ostr << __str._M_delim;
	movq	392(%rbp), %rax	 # __str, tmp118
	movzbl	8(%rax), %eax	 # __str_20(D)->_M_delim, _10
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:130: 	__ostr << __str._M_delim;
	movsbl	%al, %edx	 # _10, _11
	leaq	-80(%rbp), %rax	 #, tmp119
	movq	%rax, %rcx	 # tmp119,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:132: 	return __os << __ostr.str();
	leaq	304(%rbp), %rax	 #, tmp120
	leaq	-80(%rbp), %rdx	 #, tmp121
	movq	%rax, %rcx	 # tmp120,
	call	_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv	 #
.LEHE28:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:132: 	return __os << __ostr.str();
	leaq	304(%rbp), %rdx	 #, tmp122
	movq	384(%rbp), %rax	 # __os, tmp123
	movq	%rax, %rcx	 # tmp123,
.LEHB29:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE	 #
.LEHE29:
	movq	%rax, %rbx	 #, _33
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:132: 	return __os << __ostr.str();
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:132: 	return __os << __ostr.str();
	leaq	304(%rbp), %rax	 #, tmp124
	movq	%rax, %rcx	 # tmp124,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:133:       }
	leaq	-80(%rbp), %rax	 #, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:132: 	return __os << __ostr.str();
	movq	%rbx, %rax	 # _33, <retval>
	jmp	.L316	 #
.L315:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:132: 	return __os << __ostr.str();
	movq	%rax, %rbx	 #, tmp129
	leaq	304(%rbp), %rax	 #, tmp127
	movq	%rax, %rcx	 # tmp127,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	 #
	jmp	.L313	 #
.L314:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/quoted_string.h:133:       }
	movq	%rax, %rbx	 #, tmp128
.L313:
	leaq	-80(%rbp), %rax	 #, tmp132
	movq	%rax, %rcx	 # tmp132,
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev	 #
	movq	%rbx, %rax	 # tmp128, D.148001
	movq	%rax, %rcx	 # D.148001,
.LEHB30:
	call	_Unwind_Resume	 #
.LEHE30:
.L316:
	addq	$488, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6046:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6046-.LLSDACSB6046
.LLSDACSB6046:
	.uleb128 .LEHB27-.LFB6046
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB6046
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L314-.LFB6046
	.uleb128 0
	.uleb128 .LEHB29-.LFB6046
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L315-.LFB6046
	.uleb128 0
	.uleb128 .LEHB30-.LFB6046
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE6046:
	.section	.text$_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE12_Vector_implD1Ev:
.LFB6069:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$16, %rsp	 #,
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	16(%rbp), %rax	 # this, tmp82
	movq	%rax, -8(%rbp)	 # tmp82, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:133:       struct _Vector_impl
	nop	
	addq	$16, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EED2Ev
	.def	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EED2Ev
_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EED2Ev:
.LFB6070:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	16(%rbp), %rax	 # this, tmp89
	movq	16(%rax), %rdx	 # this_9(D)->_M_impl.D.133622._M_end_of_storage, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	16(%rbp), %rax	 # this, tmp90
	movq	(%rax), %rax	 # this_9(D)->_M_impl.D.133622._M_start, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rax, %rdx	 # _2, _3
	sarq	$3, %rdx	 #, tmp91
	movabsq	$-6148914691236517205, %rax	 #, tmp93
	imulq	%rdx, %rax	 # tmp91, tmp92
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:366: 	_M_deallocate(_M_impl._M_start,
	movq	%rax, %rcx	 # _4, _5
	movq	16(%rbp), %rax	 # this, tmp94
	movq	(%rax), %rdx	 # this_9(D)->_M_impl.D.133622._M_start, _6
	movq	16(%rbp), %rax	 # this, tmp95
	movq	%rcx, %r8	 # _5,
	movq	%rax, %rcx	 # tmp95,
	call	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE13_M_deallocateEPS1_y	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:368:       }
	movq	16(%rbp), %rax	 # this, _7
	movq	%rax, %rcx	 # _7,
	call	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE12_Vector_implD1Ev	 #
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6070:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6070-.LLSDACSB6070
.LLSDACSB6070:
.LLSDACSE6070:
	.section	.text$_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB6072:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:299:       { return this->_M_impl; }
	movq	16(%rbp), %rax	 # this, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:299:       { return this->_M_impl; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt7forwardIRcEOT_RNSt16remove_referenceIS1_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRcEOT_RNSt16remove_referenceIS1_E4typeE
	.def	_ZSt7forwardIRcEOT_RNSt16remove_referenceIS1_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRcEOT_RNSt16remove_referenceIS1_E4typeE
_ZSt7forwardIRcEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB6074:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	movq	16(%rbp), %rax	 # __t, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc,"x"
	.linkonce discard
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc:
.LFB6077:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __d, __d
	movq	%rdx, 24(%rbp)	 # __n, __n
	movl	%r8d, %eax	 # __c, tmp84
	movb	%al, 32(%rbp)	 # tmp85, __c
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:437: 	if (__n == 1)
	cmpq	$1, 24(%rbp)	 #, __n
	jne	.L324	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:438: 	  traits_type::assign(*__d, __c);
	leaq	32(%rbp), %rdx	 #, tmp86
	movq	16(%rbp), %rax	 # __d, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNSt11char_traitsIcE6assignERcRKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:441:       }
	jmp	.L326	 #
.L324:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:440: 	  traits_type::assign(__d, __n, __c);
	movzbl	32(%rbp), %eax	 # __c, __c.73_1
	movsbl	%al, %ecx	 # __c.73_1, _2
	movq	24(%rbp), %rdx	 # __n, tmp88
	movq	16(%rbp), %rax	 # __d, tmp89
	movl	%ecx, %r8d	 # _2,
	movq	%rax, %rcx	 # tmp89,
	call	_ZNSt11char_traitsIcE6assignEPcyc	 #
.L326:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:441:       }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB6078:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:241: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	16(%rbp), %rax	 # this, tmp85
	addq	$16, %rax	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:241: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	%rax, %rcx	 # _1,
	call	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:245:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB6137:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:342:       { return _M_dataplus; }
	movq	16(%rbp), %rax	 # this, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:342:       { return _M_dataplus; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_:
.LFB6141:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __a, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:526:       : _M_dataplus(_M_local_data(), __a)
	movq	32(%rbp), %rbx	 # this, _1
	movq	32(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:526:       : _M_dataplus(_M_local_data(), __a)
	movq	40(%rbp), %rdx	 # __a, tmp88
	movq	%rdx, %r8	 # tmp88,
	movq	%rax, %rdx	 # _2,
	movq	%rbx, %rcx	 # _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_	 #
	movq	32(%rbp), %rax	 # this, tmp89
	movq	%rax, -8(%rbp)	 # tmp89, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:351: 	if (std::is_constant_evaluated())
	call	_ZSt21is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:351: 	if (std::is_constant_evaluated())
	testb	%al, %al	 # retval.29_12
	je	.L332	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:352: 	  for (size_type __i = 0; __i <= _S_local_capacity; ++__i)
	movq	$0, -16(%rbp)	 #, __i
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:352: 	  for (size_type __i = 0; __i <= _S_local_capacity; ++__i)
	jmp	.L333	 #
.L334:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:353: 	    _M_local_buf[__i] = _CharT();
	movq	-8(%rbp), %rdx	 # this, tmp90
	movq	-16(%rbp), %rax	 # __i, tmp92
	addq	%rdx, %rax	 # tmp90, tmp91
	addq	$16, %rax	 #, tmp93
	movb	$0, (%rax)	 #, this_11->D.72316._M_local_buf[__i_14]
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:352: 	  for (size_type __i = 0; __i <= _S_local_capacity; ++__i)
	addq	$1, -16(%rbp)	 #, __i
.L333:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:352: 	  for (size_type __i = 0; __i <= _S_local_capacity; ++__i)
	cmpq	$15, -16(%rbp)	 #, __i
	jbe	.L334	 #,
.L332:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:355: 	return _M_local_data();
	movq	-8(%rbp), %rax	 # this, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:355: 	return _M_local_data();
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:529: 	_M_set_length(0);
	movq	32(%rbp), %rax	 # this, tmp95
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp95,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:530:       }
	nop	
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt3getILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,"x"
	.linkonce discard
	.globl	_ZSt3getILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.def	_ZSt3getILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
_ZSt3getILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_:
.LFB6155:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:1790:     { return std::__get_helper<__i>(__t); }
	movq	16(%rbp), %rax	 # __t, _1
	movq	%rax, %rcx	 # _1,
	call	_ZSt12__get_helperILy0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:1790:     { return std::__get_helper<__i>(__t); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_local_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_local_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_local_dataEv
_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_local_dataEv:
.LFB6156:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:241: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	16(%rbp), %rax	 # this, tmp85
	addq	$16, %rax	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:241: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	%rax, %rcx	 # _1,
	call	_ZNSt19__ptr_traits_ptr_toIPKwS0_Lb0EE10pointer_toERS0_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:245:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt3getILy1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,"x"
	.linkonce discard
	.globl	_ZSt3getILy1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.def	_ZSt3getILy1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3getILy1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
_ZSt3getILy1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_:
.LFB6167:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:1790:     { return std::__get_helper<__i>(__t); }
	movq	16(%rbp), %rax	 # __t, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZSt12__get_helperILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:1790:     { return std::__get_helper<__i>(__t); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EEC1Ey,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EEC1Ey
	.def	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EEC1Ey;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EEC1Ey
_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EEC1Ey:
.LFB6171:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __refs, __refs
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	movq	32(%rbp), %rbx	 # this, _1
	movl	$1114111, -8(%rbp)	 #, D.143313
	movl	$1114111, -4(%rbp)	 #, D.143312
	leaq	-8(%rbp), %rdx	 #, tmp87
	leaq	-4(%rbp), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZSt3minImERKT_S2_S2_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	movl	(%rax), %eax	 # *_2, _3
	movq	40(%rbp), %rdx	 # __refs, tmp89
	movq	%rdx, %r9	 # tmp89,
	movl	$0, %r8d	 #,
	movl	%eax, %edx	 # _3,
	movq	%rbx, %rcx	 # _1,
	call	_ZNSt25__codecvt_utf8_utf16_baseIwEC2EmSt12codecvt_modey	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	leaq	16+_ZTVSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE(%rip), %rdx	 #, _4
	movq	32(%rbp), %rax	 # this, tmp90
	movq	%rdx, (%rax)	 # _4, this_7(D)->D.126202.D.115579.D.93690.D.93591._vptr.facet
 # C:/msys64/ucrt64/include/c++/13.2.0/codecvt:169:   _GLIBCXX_CODECVT_SPECIALIZATION(codecvt_utf8_utf16, wchar_t);
	nop	
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt21__str_codecvt_out_allIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_E,"x"
	.linkonce discard
	.globl	_ZSt21__str_codecvt_out_allIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_E
	.def	_ZSt21__str_codecvt_out_allIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt21__str_codecvt_out_allIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_E
_ZSt21__str_codecvt_out_allIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_E:
.LFB6172:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __first, __first
	movq	%rdx, 24(%rbp)	 # __last, __last
	movq	%r8, 32(%rbp)	 # __outstr, __outstr
	movq	%r9, 40(%rbp)	 # __cvt, __cvt
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:184:       _State __state = {};
	movq	$0, -8(%rbp)	 #, __state
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:186:       return __str_codecvt_out(__first, __last, __outstr, __cvt, __state, __n)
	movq	40(%rbp), %r9	 # __cvt, tmp89
	movq	32(%rbp), %r8	 # __outstr, tmp90
	movq	24(%rbp), %rdx	 # __last, tmp91
	movq	16(%rbp), %rax	 # __first, tmp92
	leaq	-16(%rbp), %rcx	 #, tmp93
	movq	%rcx, 40(%rsp)	 # tmp93,
	leaq	-8(%rbp), %rcx	 #, tmp94
	movq	%rcx, 32(%rsp)	 # tmp94,
	movq	%rax, %rcx	 # tmp92,
	call	_ZSt17__str_codecvt_outIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_ERSE_Ry	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:187: 	&& (__n == size_t(__last - __first));
	testb	%al, %al	 # _1
	je	.L344	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:187: 	&& (__n == size_t(__last - __first));
	movq	24(%rbp), %rax	 # __last, tmp95
	subq	16(%rbp), %rax	 # __first, _2
	sarq	%rax	 # tmp96
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:187: 	&& (__n == size_t(__last - __first));
	movq	%rax, %rdx	 # _3, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:187: 	&& (__n == size_t(__last - __first));
	movq	-16(%rbp), %rax	 # __n, __n.54_5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:187: 	&& (__n == size_t(__last - __first));
	cmpq	%rax, %rdx	 # __n.54_5, _4
	jne	.L344	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:187: 	&& (__n == size_t(__last - __first));
	movl	$1, %eax	 #, iftmp.53_6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:187: 	&& (__n == size_t(__last - __first));
	jmp	.L345	 #
.L344:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:187: 	&& (__n == size_t(__last - __first));
	movl	$0, %eax	 #, iftmp.53_6
.L345:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:188:     }
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_
	.def	_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_
_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_:
.LFB6208:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __first, __first
	movq	%rdx, 24(%rbp)	 # __last, __last
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:192:       if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:192:       if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.14_4
	je	.L348	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:193: 	return std::_Destroy_aux<false>::__destroy(__first, __last);
	movq	24(%rbp), %rdx	 # __last, tmp83
	movq	16(%rbp), %rax	 # __first, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:193: 	return std::_Destroy_aux<false>::__destroy(__first, __last);
	jmp	.L347	 #
.L348:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:196: 	__destroy(__first, __last);
	movq	24(%rbp), %rdx	 # __last, tmp85
	movq	16(%rbp), %rax	 # __first, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_	 #
	nop	
.L347:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:197:     }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE
	.def	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE
_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB6209:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	movq	16(%rbp), %rax	 # __t, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv
	.def	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv
_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv:
.LFB6213:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	16(%rbp), %rax	 # this, tmp88
	movq	8(%rax), %rdx	 # this_6(D)->D.132308._M_impl.D.131647._M_finish, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	16(%rbp), %rax	 # this, tmp89
	movq	(%rax), %rax	 # this_6(D)->D.132308._M_impl.D.131647._M_start, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	subq	%rax, %rdx	 # _2, _3
	movq	%rdx, %rax	 # _3, _3
	sarq	$4, %rax	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:990:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEyPKc
_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEyPKc:
.LFB6212:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __n, __n
	movq	%r8, 48(%rbp)	 # __s, __s
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	movq	32(%rbp), %rax	 # this, tmp95
	movq	%rax, %rcx	 # tmp95,
	call	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv	 #
	movq	%rax, %rbx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	movq	32(%rbp), %rax	 # this, tmp96
	movq	%rax, %rcx	 # tmp96,
	call	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	subq	%rax, %rbx	 # _2, _1
	movq	%rbx, %rdx	 # _1, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	movq	40(%rbp), %rax	 # __n, __n.3_4
	cmpq	%rax, %rdx	 # __n.3_4, _3
	setb	%al	 #, retval.2_18
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1895: 	if (max_size() - size() < __n)
	testb	%al, %al	 # retval.2_18
	je	.L355	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1896: 	  __throw_length_error(__N(__s));
	movq	48(%rbp), %rax	 # __s, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	_ZSt20__throw_length_errorPKc	 #
.L355:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	32(%rbp), %rax	 # this, tmp98
	movq	%rax, %rcx	 # tmp98,
	call	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv	 #
	movq	%rax, %rbx	 #, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	32(%rbp), %rax	 # this, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	%rax, -16(%rbp)	 # _6, D.143683
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	leaq	40(%rbp), %rdx	 #, tmp100
	leaq	-16(%rbp), %rax	 #, tmp101
	movq	%rax, %rcx	 # tmp101,
	call	_ZSt3maxIyERKT_S2_S2_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	(%rax), %rax	 # *_7, _8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1898: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rbx, %rax	 # _5, tmp102
	movq	%rax, -8(%rbp)	 # tmp102, __len
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	32(%rbp), %rax	 # this, tmp103
	movq	%rax, %rcx	 # tmp103,
	call	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	%rax, -8(%rbp)	 # _9, __len
	jb	.L356	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	32(%rbp), %rax	 # this, tmp104
	movq	%rax, %rcx	 # tmp104,
	call	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	-8(%rbp), %rax	 # __len, _10
	jnb	.L357	 #,
.L356:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	32(%rbp), %rax	 # this, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	jmp	.L358	 #
.L357:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1899: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-8(%rbp), %rax	 # __len, iftmp.4_11
.L358:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1900:       }
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	.def	_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_:
.LFB6214:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __lhs, __lhs
	movq	%rdx, 40(%rbp)	 # __rhs, __rhs
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	movq	32(%rbp), %rax	 # __lhs, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	movq	(%rax), %rbx	 # *_1, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	movq	40(%rbp), %rax	 # __rhs, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	movq	(%rax), %rax	 # *_3, _4
	subq	%rax, %rbx	 # _4, _2
	movq	%rbx, %rdx	 # _2, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	movq	%rdx, %rax	 # _5, _5
	sarq	$4, %rax	 #, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:
.LFB6211:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$120, %rsp	 #,
	.seh_stackalloc	120
	leaq	112(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 112
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __position, __position
	movq	%r8, 48(%rbp)	 # __args#0, __args#0
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:455: 	_M_check_len(size_type(1), "vector::_M_realloc_insert");
	movq	32(%rbp), %rax	 # this, tmp113
	leaq	.LC5(%rip), %r8	 #,
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp113,
	call	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEyPKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:455: 	_M_check_len(size_type(1), "vector::_M_realloc_insert");
	movq	%rax, -8(%rbp)	 # _32, __len
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:456:       pointer __old_start = this->_M_impl._M_start;
	movq	32(%rbp), %rax	 # this, tmp114
	movq	(%rax), %rax	 # this_30(D)->D.132308._M_impl.D.131647._M_start, tmp115
	movq	%rax, -16(%rbp)	 # tmp115, __old_start
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:457:       pointer __old_finish = this->_M_impl._M_finish;
	movq	32(%rbp), %rax	 # this, tmp116
	movq	8(%rax), %rax	 # this_30(D)->D.132308._M_impl.D.131647._M_finish, tmp117
	movq	%rax, -24(%rbp)	 # tmp117, __old_finish
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	movq	32(%rbp), %rax	 # this, tmp118
	movq	%rax, %rcx	 # tmp118,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv	 #
	movq	%rax, -80(%rbp)	 # tmp120, D.143696
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	leaq	-80(%rbp), %rdx	 #, tmp121
	leaq	40(%rbp), %rax	 #, tmp122
	movq	%rax, %rcx	 # tmp122,
	call	_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	movq	%rax, -32(%rbp)	 # _1, __elems_before
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:459:       pointer __new_start(this->_M_allocate(__len));
	movq	32(%rbp), %rax	 # this, _2
	movq	-8(%rbp), %rdx	 # __len, tmp123
	movq	%rax, %rcx	 # _2,
	call	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:459:       pointer __new_start(this->_M_allocate(__len));
	movq	%rax, -40(%rbp)	 # _41, __new_start
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:460:       pointer __new_finish(__new_start);
	movq	-40(%rbp), %rax	 # __new_start, tmp124
	movq	%rax, -48(%rbp)	 # tmp124, __new_finish
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	movq	48(%rbp), %rax	 # __args#0, tmp125
	movq	%rax, %rcx	 # tmp125,
	call	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:469: 				   __new_start + __elems_before,
	movq	-32(%rbp), %rdx	 # __elems_before, tmp126
	movq	%rdx, %rcx	 # tmp126, tmp126
	salq	$4, %rcx	 #, tmp126
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	movq	-40(%rbp), %rdx	 # __new_start, tmp127
	addq	%rdx, %rcx	 # tmp127, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	movq	32(%rbp), %rdx	 # this, _6
	movq	%rdx, -56(%rbp)	 # _6, __a
	movq	%rcx, -64(%rbp)	 # _5, __p
	movq	%rax, -72(%rbp)	 # _3, __args#0
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:539: 	  std::construct_at(__p, std::forward<_Args>(__args)...);
	movq	-72(%rbp), %rax	 # __args#0, tmp128
	movq	%rax, %rcx	 # tmp128,
	call	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE	 #
	movq	%rax, %rdx	 #, _63
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:539: 	  std::construct_at(__p, std::forward<_Args>(__args)...);
	movq	-64(%rbp), %rax	 # __p, tmp129
	movq	%rax, %rcx	 # tmp129,
	call	_ZSt12construct_atISt17basic_string_viewIcSt11char_traitsIcEEJS3_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:541: 	}
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:475: 	  __new_finish = pointer();
	movq	$0, -48(%rbp)	 #, __new_finish
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:481: 					 __new_start, _M_get_Tp_allocator());
	movq	32(%rbp), %rax	 # this, _7
	movq	%rax, %rcx	 # _7,
	call	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv	 #
	movq	%rax, %rbx	 #, _8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:480: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	leaq	40(%rbp), %rax	 #, tmp130
	movq	%rax, %rcx	 # tmp130,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:480: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	movq	(%rax), %rdx	 # *_9, _10
	movq	-40(%rbp), %rcx	 # __new_start, tmp131
	movq	-16(%rbp), %rax	 # __old_start, tmp132
	movq	%rbx, %r9	 # _8,
	movq	%rcx, %r8	 # tmp131,
	movq	%rax, %rcx	 # tmp132,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_	 #
	movq	%rax, -48(%rbp)	 # tmp133, __new_finish
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:483: 	      ++__new_finish;
	addq	$16, -48(%rbp)	 #, __new_finish
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:486: 					 __new_finish, _M_get_Tp_allocator());
	movq	32(%rbp), %rax	 # this, _11
	movq	%rax, %rcx	 # _11,
	call	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv	 #
	movq	%rax, %rbx	 #, _12
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:485: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	leaq	40(%rbp), %rax	 #, tmp134
	movq	%rax, %rcx	 # tmp134,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:485: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	movq	(%rax), %rax	 # *_13, _14
	movq	-48(%rbp), %rcx	 # __new_finish, tmp135
	movq	-24(%rbp), %rdx	 # __old_finish, tmp136
	movq	%rbx, %r9	 # _12,
	movq	%rcx, %r8	 # tmp135,
	movq	%rax, %rcx	 # _14,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_	 #
	movq	%rax, -48(%rbp)	 # tmp137, __new_finish
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:519:       _M_deallocate(__old_start,
	movq	32(%rbp), %rax	 # this, _22
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	movq	32(%rbp), %rdx	 # this, tmp138
	movq	16(%rdx), %rdx	 # this_30(D)->D.132308._M_impl.D.131647._M_end_of_storage, _23
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	subq	-16(%rbp), %rdx	 # __old_start, _24
	sarq	$4, %rdx	 #, tmp139
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:519:       _M_deallocate(__old_start,
	movq	%rdx, %rcx	 # _25, _26
	movq	-16(%rbp), %rdx	 # __old_start, tmp140
	movq	%rcx, %r8	 # _26,
	movq	%rax, %rcx	 # _22,
	call	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_y	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:521:       this->_M_impl._M_start = __new_start;
	movq	32(%rbp), %rax	 # this, tmp141
	movq	-40(%rbp), %rdx	 # __new_start, tmp142
	movq	%rdx, (%rax)	 # tmp142, this_30(D)->D.132308._M_impl.D.131647._M_start
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:522:       this->_M_impl._M_finish = __new_finish;
	movq	32(%rbp), %rax	 # this, tmp143
	movq	-48(%rbp), %rdx	 # __new_finish, tmp144
	movq	%rdx, 8(%rax)	 # tmp144, this_30(D)->D.132308._M_impl.D.131647._M_finish
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-8(%rbp), %rax	 # __len, tmp145
	salq	$4, %rax	 #, tmp145
	movq	%rax, %rdx	 # tmp145, _27
	movq	-40(%rbp), %rax	 # __new_start, tmp146
	addq	%rax, %rdx	 # tmp146, _28
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	32(%rbp), %rax	 # this, tmp147
	movq	%rdx, 16(%rax)	 # _28, this_30(D)->D.132308._M_impl.D.131647._M_end_of_storage
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/vector.tcc:524:     }
	nop	
	addq	$120, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv:
.LFB6218:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1233: 	return *(end() - 1);
	movq	16(%rbp), %rax	 # this, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv	 #
	movq	%rax, -8(%rbp)	 # tmp86, D.143954
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1233: 	return *(end() - 1);
	leaq	-8(%rbp), %rax	 #, tmp87
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp87,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEx	 #
	movq	%rax, -16(%rbp)	 # tmp89, D.143955
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1233: 	return *(end() - 1);
	leaq	-16(%rbp), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1234:       }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
	.def	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv:
.LFB6225:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:232:       { return this->_M_len; }
	movq	16(%rbp), %rax	 # this, tmp84
	movq	(%rax), %rax	 # this_2(D)->_M_len, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/string_view:232:       { return this->_M_len; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcy:
.LFB6226:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __s, __s
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1655: 	return _M_replace(size_type(0), this->size(), __s, __n);
	movq	16(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
	movq	%rax, %rcx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1655: 	return _M_replace(size_type(0), this->size(), __s, __n);
	movq	24(%rbp), %r8	 # __s, tmp86
	movq	16(%rbp), %rax	 # this, tmp87
	movq	32(%rbp), %rdx	 # __n, tmp88
	movq	%rdx, 32(%rsp)	 # tmp88,
	movq	%r8, %r9	 # tmp86,
	movq	%rcx, %r8	 # _1,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp87,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1656:       }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv:
.LFB6237:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:953:       { return const_iterator(_M_data()); }
	movq	16(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:953:       { return const_iterator(_M_data()); }
	movq	%rax, -8(%rbp)	 # _1, D.144010
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:953:       { return const_iterator(_M_data()); }
	leaq	-8(%rbp), %rdx	 #, tmp86
	leaq	-16(%rbp), %rax	 #, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS2_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:953:       { return const_iterator(_M_data()); }
	movq	-16(%rbp), %rax	 # D.144011, D.147424
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:953:       { return const_iterator(_M_data()); }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv:
.LFB6238:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:971:       { return const_iterator(_M_data() + this->size()); }
	movq	32(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rbx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:971:       { return const_iterator(_M_data() + this->size()); }
	movq	32(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:971:       { return const_iterator(_M_data() + this->size()); }
	addq	%rbx, %rax	 # _1, _3
	movq	%rax, -8(%rbp)	 # _3, D.144017
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:971:       { return const_iterator(_M_data() + this->size()); }
	leaq	-8(%rbp), %rdx	 #, tmp89
	leaq	-16(%rbp), %rax	 #, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS2_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:971:       { return const_iterator(_M_data() + this->size()); }
	movq	-16(%rbp), %rax	 # D.144018, D.147428
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:971:       { return const_iterator(_M_data() + this->size()); }
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.def	_ZN9__gnu_cxxeqIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
_ZN9__gnu_cxxeqIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_:
.LFB6239:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __lhs, __lhs
	movq	%rdx, 40(%rbp)	 # __rhs, __rhs
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	movq	32(%rbp), %rax	 # __lhs, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	movq	(%rax), %rbx	 # *_1, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	movq	40(%rbp), %rax	 # __rhs, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	movq	(%rax), %rax	 # *_3, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	cmpq	%rax, %rbx	 # _4, _2
	sete	%al	 #, _10
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1203:     { return __lhs.base() == __rhs.base(); }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
.LFB6240:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1111: 	++_M_current;
	movq	16(%rbp), %rax	 # this, tmp86
	movq	(%rax), %rax	 # this_4(D)->_M_current, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1111: 	++_M_current;
	leaq	1(%rax), %rdx	 #, _2
	movq	16(%rbp), %rax	 # this, tmp87
	movq	%rdx, (%rax)	 # _2, this_4(D)->_M_current
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1112: 	return *this;
	movq	16(%rbp), %rax	 # this, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1113:       }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE13_M_deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE13_M_deallocateEPS1_y
	.def	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE13_M_deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE13_M_deallocateEPS1_y
_ZNSt12_Vector_baseIN5lexer5tokenESaIS1_EE13_M_deallocateEPS1_y:
.LFB6266:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __p, __p
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:386: 	if (__p)
	cmpq	$0, 24(%rbp)	 #, __p
	je	.L381	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:387: 	  _Tr::deallocate(_M_impl, __p, __n);
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, -8(%rbp)	 # _1, __a
	movq	24(%rbp), %rax	 # __p, tmp84
	movq	%rax, -16(%rbp)	 # tmp84, __p
	movq	32(%rbp), %rax	 # __n, tmp85
	movq	%rax, -24(%rbp)	 # tmp85, __n
	movq	-8(%rbp), %rax	 # __a, tmp86
	movq	%rax, -32(%rbp)	 # tmp86, this
	movq	-16(%rbp), %rax	 # __p, tmp87
	movq	%rax, -40(%rbp)	 # tmp87, __p
	movq	-24(%rbp), %rax	 # __n, tmp88
	movq	%rax, -48(%rbp)	 # tmp88, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.83_13
	je	.L379	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:207: 	    ::operator delete(__p);
	movq	-40(%rbp), %rax	 # __p, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZdlPv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:208: 	    return;
	jmp	.L380	 #
.L379:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:210: 	__allocator_base<_Tp>::deallocate(__p, __n);
	movq	-48(%rbp), %rcx	 # __n, tmp90
	movq	-40(%rbp), %rdx	 # __p, tmp91
	movq	-32(%rbp), %rax	 # this, tmp92
	movq	%rcx, %r8	 # tmp90,
	movq	%rax, %rcx	 # tmp92,
	call	_ZNSt15__new_allocatorIN5lexer5tokenEE10deallocateEPS1_y	 #
.L380:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:516:       { __a.deallocate(__p, __n); }
	nop	
.L381:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:388:       }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPN5lexer5tokenEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPN5lexer5tokenEEvT_S3_
	.def	_ZSt8_DestroyIPN5lexer5tokenEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPN5lexer5tokenEEvT_S3_
_ZSt8_DestroyIPN5lexer5tokenEEvT_S3_:
.LFB6267:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __first, __first
	movq	%rdx, 24(%rbp)	 # __last, __last
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:192:       if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:192:       if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.82_4
	je	.L383	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:193: 	return std::_Destroy_aux<false>::__destroy(__first, __last);
	movq	24(%rbp), %rdx	 # __last, tmp83
	movq	16(%rbp), %rax	 # __first, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPN5lexer5tokenEEEvT_S5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:193: 	return std::_Destroy_aux<false>::__destroy(__first, __last);
	jmp	.L382	 #
.L383:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:196: 	__destroy(__first, __last);
	movq	24(%rbp), %rdx	 # __last, tmp85
	movq	16(%rbp), %rax	 # __first, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5lexer5tokenEEEvT_S5_	 #
	nop	
.L382:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:197:     }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_,"x"
	.linkonce discard
	.globl	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	.def	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_:
.LFB6269:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/ptr_traits.h:142:       { return std::addressof(__r); }
	movq	16(%rbp), %rax	 # __r, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZSt9addressofIKcEPT_RS1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/ptr_traits.h:142:       { return std::addressof(__r); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEyyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEyyPKc
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEyyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEyyPKc
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEyyPKc:
.LFB6319:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __n1, __n1
	movq	%r8, 48(%rbp)	 # __n2, __n2
	movq	%r9, 56(%rbp)	 # __s, __s
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:389: 	if (this->max_size() - (this->size() - __n1) < __n2)
	movq	32(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	 #
	movq	%rax, %rbx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:389: 	if (this->max_size() - (this->size() - __n1) < __n2)
	movq	32(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:389: 	if (this->max_size() - (this->size() - __n1) < __n2)
	movq	40(%rbp), %rdx	 # __n1, tmp89
	subq	%rax, %rdx	 # _2, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:389: 	if (this->max_size() - (this->size() - __n1) < __n2)
	leaq	(%rbx,%rdx), %rax	 #, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:389: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmpq	48(%rbp), %rax	 # __n2, _4
	setb	%al	 #, retval.41_11
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:389: 	if (this->max_size() - (this->size() - __n1) < __n2)
	testb	%al, %al	 # retval.41_11
	je	.L389	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:390: 	  __throw_length_error(__N(__s));
	movq	56(%rbp), %rax	 # __s, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZSt20__throw_length_errorPKc	 #
.L389:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:391:       }
	nop	
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "basic_string::_M_replace\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy:
.LFB6321:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$112, %rsp	 #,
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __pos, __pos
	movq	%r8, 32(%rbp)	 # __len1, __len1
	movq	%r9, 40(%rbp)	 # __s, __s
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:510:       _M_check_length(__len1, __len2, "basic_string::_M_replace");
	movq	48(%rbp), %rcx	 # __len2, tmp106
	movq	32(%rbp), %rdx	 # __len1, tmp107
	movq	16(%rbp), %rax	 # this, tmp108
	leaq	.LC6(%rip), %r9	 #,
	movq	%rcx, %r8	 # tmp106,
	movq	%rax, %rcx	 # tmp108,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEyyPKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:512:       const size_type __old_size = this->size();
	movq	16(%rbp), %rax	 # this, tmp109
	movq	%rax, %rcx	 # tmp109,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
	movq	%rax, -8(%rbp)	 # tmp110, __old_size
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:513:       const size_type __new_size = __old_size + __len2 - __len1;
	movq	-8(%rbp), %rdx	 # __old_size, tmp111
	movq	48(%rbp), %rax	 # __len2, tmp112
	addq	%rdx, %rax	 # tmp111, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:513:       const size_type __new_size = __old_size + __len2 - __len1;
	subq	32(%rbp), %rax	 # __len1, tmp114
	movq	%rax, -16(%rbp)	 # tmp114, __new_size
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:515:       if (__new_size <= this->capacity())
	movq	16(%rbp), %rax	 # this, tmp115
	movq	%rax, %rcx	 # tmp115,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:515:       if (__new_size <= this->capacity())
	cmpq	-16(%rbp), %rax	 # __new_size, _2
	setnb	%al	 #, retval.38_29
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:515:       if (__new_size <= this->capacity())
	testb	%al, %al	 # retval.38_29
	je	.L391	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:517: 	  pointer __p = this->_M_data() + __pos;
	movq	16(%rbp), %rax	 # this, tmp116
	movq	%rax, %rcx	 # tmp116,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:517: 	  pointer __p = this->_M_data() + __pos;
	movq	24(%rbp), %rdx	 # __pos, tmp120
	addq	%rdx, %rax	 # tmp120, tmp119
	movq	%rax, -24(%rbp)	 # tmp119, __p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:519: 	  const size_type __how_much = __old_size - __pos - __len1;
	movq	-8(%rbp), %rax	 # __old_size, tmp121
	subq	24(%rbp), %rax	 # __pos, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:519: 	  const size_type __how_much = __old_size - __pos - __len1;
	subq	32(%rbp), %rax	 # __len1, tmp123
	movq	%rax, -32(%rbp)	 # tmp123, __how_much
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:521: 	  if (std::is_constant_evaluated())
	call	_ZSt21is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:521: 	  if (std::is_constant_evaluated())
	testb	%al, %al	 # retval.39_37
	je	.L392	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:523: 	      auto __newp = _S_allocate(_M_get_allocator(), __new_size);
	movq	16(%rbp), %rax	 # this, tmp124
	movq	%rax, %rcx	 # tmp124,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	 #
	movq	%rax, %rcx	 #, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:523: 	      auto __newp = _S_allocate(_M_get_allocator(), __new_size);
	movq	-16(%rbp), %rax	 # __new_size, tmp125
	movq	%rax, %rdx	 # tmp125,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:523: 	      auto __newp = _S_allocate(_M_get_allocator(), __new_size);
	movq	%rax, -40(%rbp)	 # _45, __newp
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:524: 	      _S_copy(__newp, this->_M_data(), __pos);
	movq	16(%rbp), %rax	 # this, tmp126
	movq	%rax, %rcx	 # tmp126,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rdx	 #, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:524: 	      _S_copy(__newp, this->_M_data(), __pos);
	movq	24(%rbp), %rcx	 # __pos, tmp127
	movq	-40(%rbp), %rax	 # __newp, tmp128
	movq	%rcx, %r8	 # tmp127,
	movq	%rax, %rcx	 # tmp128,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:525: 	      _S_copy(__newp + __pos, __s, __len2);
	movq	-40(%rbp), %rdx	 # __newp, tmp129
	movq	24(%rbp), %rax	 # __pos, tmp130
	leaq	(%rdx,%rax), %rcx	 #, _7
	movq	48(%rbp), %rdx	 # __len2, tmp131
	movq	40(%rbp), %rax	 # __s, tmp132
	movq	%rdx, %r8	 # tmp131,
	movq	%rax, %rdx	 # tmp132,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:526: 	      _S_copy(__newp + __pos + __len2, __p + __len1, __how_much);
	movq	-24(%rbp), %rdx	 # __p, tmp133
	movq	32(%rbp), %rax	 # __len1, tmp134
	addq	%rax, %rdx	 # tmp134, _8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:526: 	      _S_copy(__newp + __pos + __len2, __p + __len1, __how_much);
	movq	24(%rbp), %rcx	 # __pos, tmp135
	movq	48(%rbp), %rax	 # __len2, tmp136
	addq	%rax, %rcx	 # tmp136, _9
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:526: 	      _S_copy(__newp + __pos + __len2, __p + __len1, __how_much);
	movq	-40(%rbp), %rax	 # __newp, tmp137
	addq	%rcx, %rax	 # _9, _10
	movq	-32(%rbp), %rcx	 # __how_much, tmp138
	movq	%rcx, %r8	 # tmp138,
	movq	%rax, %rcx	 # _10,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:527: 	      _S_copy(this->_M_data(), __newp, __new_size);
	movq	16(%rbp), %rax	 # this, tmp139
	movq	%rax, %rcx	 # tmp139,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rcx	 #, _11
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:527: 	      _S_copy(this->_M_data(), __newp, __new_size);
	movq	-16(%rbp), %rdx	 # __new_size, tmp140
	movq	-40(%rbp), %rax	 # __newp, tmp141
	movq	%rdx, %r8	 # tmp140,
	movq	%rax, %rdx	 # tmp141,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:528: 	      this->_M_get_allocator().deallocate(__newp, __new_size);
	movq	16(%rbp), %rax	 # this, tmp142
	movq	%rax, %rcx	 # tmp142,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	 #
	movq	%rax, -48(%rbp)	 # _12, this
	movq	-40(%rbp), %rax	 # __newp, tmp143
	movq	%rax, -56(%rbp)	 # tmp143, __p
	movq	-16(%rbp), %rax	 # __new_size, tmp144
	movq	%rax, -64(%rbp)	 # tmp144, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:205: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.35_59
	je	.L393	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:207: 	    ::operator delete(__p);
	movq	-56(%rbp), %rax	 # __p, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	_ZdlPv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:208: 	    return;
	jmp	.L395	 #
.L393:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:210: 	__allocator_base<_Tp>::deallocate(__p, __n);
	movq	-64(%rbp), %rcx	 # __n, tmp146
	movq	-56(%rbp), %rdx	 # __p, tmp147
	movq	-48(%rbp), %rax	 # this, tmp148
	movq	%rcx, %r8	 # tmp146,
	movq	%rax, %rcx	 # tmp148,
	call	_ZNSt15__new_allocatorIcE10deallocateEPcy	 #
	jmp	.L395	 #
.L392:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:532: 	  if (__builtin_expect(_M_disjunct(__s), true))
	movq	40(%rbp), %rdx	 # __s, tmp149
	movq	16(%rbp), %rax	 # this, tmp150
	movq	%rax, %rcx	 # tmp150,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:532: 	  if (__builtin_expect(_M_disjunct(__s), true))
	movzbl	%al, %eax	 # _13, _14
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:532: 	  if (__builtin_expect(_M_disjunct(__s), true))
	testl	%eax, %eax	 # _15
	setne	%al	 #, retval.40_39
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:532: 	  if (__builtin_expect(_M_disjunct(__s), true))
	testb	%al, %al	 # retval.40_39
	je	.L396	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:534: 	      if (__how_much && __len1 != __len2)
	cmpq	$0, -32(%rbp)	 #, __how_much
	je	.L397	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:534: 	      if (__how_much && __len1 != __len2)
	movq	32(%rbp), %rax	 # __len1, tmp151
	cmpq	48(%rbp), %rax	 # __len2, tmp151
	je	.L397	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:535: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	movq	-24(%rbp), %rdx	 # __p, tmp152
	movq	32(%rbp), %rax	 # __len1, tmp153
	addq	%rax, %rdx	 # tmp153, _16
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:535: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	movq	-24(%rbp), %rcx	 # __p, tmp154
	movq	48(%rbp), %rax	 # __len2, tmp155
	addq	%rcx, %rax	 # tmp154, _17
	movq	-32(%rbp), %rcx	 # __how_much, tmp156
	movq	%rcx, %r8	 # tmp156,
	movq	%rax, %rcx	 # _17,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcy	 #
.L397:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:536: 	      if (__len2)
	cmpq	$0, 48(%rbp)	 #, __len2
	je	.L395	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:537: 		this->_S_copy(__p, __s, __len2);
	movq	48(%rbp), %rcx	 # __len2, tmp157
	movq	40(%rbp), %rdx	 # __s, tmp158
	movq	-24(%rbp), %rax	 # __p, tmp159
	movq	%rcx, %r8	 # tmp157,
	movq	%rax, %rcx	 # tmp159,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
	jmp	.L395	 #
.L396:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:540: 	    _M_replace_cold(__p, __len1, __s, __len2, __how_much);
	movq	40(%rbp), %r9	 # __s, tmp160
	movq	32(%rbp), %r8	 # __len1, tmp161
	movq	-24(%rbp), %rdx	 # __p, tmp162
	movq	16(%rbp), %rax	 # this, tmp163
	movq	-32(%rbp), %rcx	 # __how_much, tmp164
	movq	%rcx, 40(%rsp)	 # tmp164,
	movq	48(%rbp), %rcx	 # __len2, tmp165
	movq	%rcx, 32(%rsp)	 # tmp165,
	movq	%rax, %rcx	 # tmp163,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcyPKcyy	 #
	jmp	.L395	 #
.L391:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:543: 	this->_M_mutate(__pos, __len1, __s, __len2);
	movq	40(%rbp), %r9	 # __s, tmp166
	movq	32(%rbp), %r8	 # __len1, tmp167
	movq	24(%rbp), %rdx	 # __pos, tmp168
	movq	16(%rbp), %rax	 # this, tmp169
	movq	48(%rbp), %rcx	 # __len2, tmp170
	movq	%rcx, 32(%rsp)	 # tmp170,
	movq	%rax, %rcx	 # tmp169,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy	 #
.L395:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:545:       this->_M_set_length(__new_size);
	movq	-16(%rbp), %rdx	 # __new_size, tmp171
	movq	16(%rbp), %rax	 # this, tmp172
	movq	%rax, %rcx	 # tmp172,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:546:       return *this;
	movq	16(%rbp), %rax	 # this, _55
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:547:     }
	addq	$112, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.def	_ZSt12__get_helperILy0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
_ZSt12__get_helperILy0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE:
.LFB6327:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:1774:     { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
	movq	16(%rbp), %rax	 # __t, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNSt11_Tuple_implILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:1774:     { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt19__ptr_traits_ptr_toIPKwS0_Lb0EE10pointer_toERS0_,"x"
	.linkonce discard
	.globl	_ZNSt19__ptr_traits_ptr_toIPKwS0_Lb0EE10pointer_toERS0_
	.def	_ZNSt19__ptr_traits_ptr_toIPKwS0_Lb0EE10pointer_toERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19__ptr_traits_ptr_toIPKwS0_Lb0EE10pointer_toERS0_
_ZNSt19__ptr_traits_ptr_toIPKwS0_Lb0EE10pointer_toERS0_:
.LFB6328:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/ptr_traits.h:142:       { return std::addressof(__r); }
	movq	16(%rbp), %rax	 # __r, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZSt9addressofIKwEPT_RS1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/ptr_traits.h:142:       { return std::addressof(__r); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt12__get_helperILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"x"
	.linkonce discard
	.globl	_ZSt12__get_helperILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.def	_ZSt12__get_helperILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__get_helperILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
_ZSt12__get_helperILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB6335:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:1774:     { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
	movq	16(%rbp), %rax	 # __t, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNSt11_Tuple_implILy1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:1774:     { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt3minImERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minImERKT_S2_S2_
	.def	_ZSt3minImERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minImERKT_S2_S2_
_ZSt3minImERKT_S2_S2_:
.LFB6336:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __a, __a
	movq	%rdx, 24(%rbp)	 # __b, __b
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	movq	24(%rbp), %rax	 # __b, tmp86
	movl	(%rax), %edx	 # *__b_5(D), _1
	movq	16(%rbp), %rax	 # __a, tmp87
	movl	(%rax), %eax	 # *__a_6(D), _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:238:       if (__b < __a)
	cmpl	%eax, %edx	 # _2, _1
	jnb	.L406	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:239: 	return __b;
	movq	24(%rbp), %rax	 # __b, _3
	jmp	.L407	 #
.L406:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:240:       return __a;
	movq	16(%rbp), %rax	 # __a, _3
.L407:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:241:     }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt17__str_codecvt_outIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_ERSE_Ry,"x"
	.linkonce discard
	.globl	_ZSt17__str_codecvt_outIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_ERSE_Ry
	.def	_ZSt17__str_codecvt_outIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_ERSE_Ry;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt17__str_codecvt_outIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_ERSE_Ry
_ZSt17__str_codecvt_outIwSt11char_traitsIcESaIcE9_MbstatetEbPKT_S6_RNSt7__cxx1112basic_stringIcT0_T1_EERKSt7codecvtIS4_cT2_ERSE_Ry:
.LFB6337:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$96, %rsp	 #,
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __first, __first
	movq	%rdx, 24(%rbp)	 # __last, __last
	movq	%r8, 32(%rbp)	 # __outstr, __outstr
	movq	%r9, 40(%rbp)	 # __cvt, __cvt
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:160:       _ConvFn __fn = &codecvt<_CharT, char, _State>::out;
	leaq	_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE3outERS0_PKwS4_RS4_PcS6_RS6_(%rip), %rax	 #, tmp85
	movq	%rax, -16(%rbp)	 # tmp84, __fn.__pfn
	movq	$0, -8(%rbp)	 #, __fn.__delta
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:161:       return __do_str_codecvt(__first, __last, __outstr, __cvt, __state,
	movq	-16(%rbp), %rax	 # __fn, tmp86
	movq	-8(%rbp), %rdx	 # __fn,
	movq	%rax, -32(%rbp)	 # tmp86,
	movq	%rdx, -24(%rbp)	 #,
	movq	40(%rbp), %r9	 # __cvt, tmp87
	movq	32(%rbp), %r8	 # __outstr, tmp88
	movq	24(%rbp), %rdx	 # __last, tmp89
	movq	16(%rbp), %rax	 # __first, tmp90
	leaq	-32(%rbp), %rcx	 #, tmp91
	movq	%rcx, 48(%rsp)	 # tmp91,
	movq	56(%rbp), %rcx	 # __count, tmp92
	movq	%rcx, 40(%rsp)	 # tmp92,
	movq	48(%rbp), %rcx	 # __state, tmp93
	movq	%rcx, 32(%rsp)	 # tmp93,
	movq	%rax, %rcx	 # tmp90,
	call	_ZSt16__do_str_codecvtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEwSt7codecvtIwc9_MbstatetES7_MS8_KFNSt12codecvt_base6resultERS7_PKwSD_RSD_PcSF_RSF_EEbPKT0_SL_RT_RKT1_RT2_RyT3_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:163:     }
	addq	$96, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_:
.LFB6363:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __first, __first
	movq	%rdx, 24(%rbp)	 # __last, __last
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	jmp	.L411	 #
.L412:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:163: 	    std::_Destroy(std::__addressof(*__first));
	movq	16(%rbp), %rax	 # __first, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:163: 	    std::_Destroy(std::__addressof(*__first));
	movq	%rax, %rcx	 # _1,
	call	_ZSt8_DestroyISt17basic_string_viewIcSt11char_traitsIcEEEvPT_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	addq	$16, 16(%rbp)	 #, __first
.L411:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	movq	16(%rbp), %rax	 # __first, tmp84
	cmpq	24(%rbp), %rax	 # __last, tmp84
	jne	.L412	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:164: 	}
	nop	
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_:
.LFB6364:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # D.145039, D.145039
	movq	%rdx, 24(%rbp)	 # D.145040, D.145040
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:172:         __destroy(_ForwardIterator, _ForwardIterator) { }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt12construct_atISt17basic_string_viewIcSt11char_traitsIcEEJS3_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_,"x"
	.linkonce discard
	.globl	_ZSt12construct_atISt17basic_string_viewIcSt11char_traitsIcEEJS3_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_
	.def	_ZSt12construct_atISt17basic_string_viewIcSt11char_traitsIcEEJS3_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12construct_atISt17basic_string_viewIcSt11char_traitsIcEEJS3_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_
_ZSt12construct_atISt17basic_string_viewIcSt11char_traitsIcEEJS3_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_:
.LFB6365:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __location, __location
	movq	%rdx, 40(%rbp)	 # __args#0, __args#0
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	32(%rbp), %rax	 # __location, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	%rax, %rdx	 # _3,
	movl	$16, %ecx	 #,
	call	_ZnwyPv	 #
	movq	%rax, %rbx	 #, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	40(%rbp), %rax	 # __args#0, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	8(%rax), %rdx	 # MEM[(const struct basic_string_view &)_1],
	movq	(%rax), %rax	 # MEM[(const struct basic_string_view &)_1], tmp89
	movq	%rax, (%rbx)	 # tmp89, MEM[(struct basic_string_view *)_6]
	movq	%rdx, 8(%rbx)	 #, MEM[(struct basic_string_view *)_6]
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movq	%rbx, %rax	 # _6, <retval>
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	addq	$40, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv
	.def	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv
_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv:
.LFB6366:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:996:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:996:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	%rax, %rcx	 # _2,
	call	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:996:       { return _S_max_size(_M_get_Tp_allocator()); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEy
_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEy:
.LFB6367:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cmpq	$0, 24(%rbp)	 #, __n
	je	.L419	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, -8(%rbp)	 # _1, __a
	movq	24(%rbp), %rax	 # __n, tmp94
	movq	%rax, -16(%rbp)	 # tmp94, __n
	movq	-8(%rbp), %rax	 # __a, tmp95
	movq	%rax, -24(%rbp)	 # tmp95, this
	movq	-16(%rbp), %rax	 # __n, tmp96
	movq	%rax, -32(%rbp)	 # tmp96, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:191: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:191: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.6_14
	je	.L420	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:193: 	    if (__builtin_mul_overflow(__n, sizeof(_Tp), &__n))
	movq	-32(%rbp), %rax	 # __n, __n.8_15
	movl	$0, %ecx	 #, _16
	movq	%rax, %rdx	 # __n.8_15, tmp97
	salq	$4, %rdx	 #, tmp97
	shrq	$60, %rax	 #, tmp98
	testq	%rax, %rax	 # tmp98
	je	.L421	 #,
	movl	$1, %ecx	 #, _16
.L421:
	movq	%rdx, %rax	 # tmp97, _16
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:193: 	    if (__builtin_mul_overflow(__n, sizeof(_Tp), &__n))
	movq	%rax, -32(%rbp)	 # _17, __n
	movq	%rcx, %rax	 # _16, _18
	andl	$1, %eax	 #, retval.7_19
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:193: 	    if (__builtin_mul_overflow(__n, sizeof(_Tp), &__n))
	testb	%al, %al	 # retval.7_19
	je	.L423	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:194: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L423:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:195: 	    return static_cast<_Tp*>(::operator new(__n));
	movq	-32(%rbp), %rax	 # __n, __n.9_20
	movq	%rax, %rcx	 # __n.9_20,
	call	_Znwy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:195: 	    return static_cast<_Tp*>(::operator new(__n));
	jmp	.L424	 #
.L420:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:198: 	return __allocator_base<_Tp>::allocate(__n, 0);
	movq	-32(%rbp), %rdx	 # __n, __n.10_23
	movq	-24(%rbp), %rax	 # this, tmp100
	movl	$0, %r8d	 #,
	movq	%rax, %rcx	 # tmp100,
	call	_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEyPKv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/allocator.h:198: 	return __allocator_base<_Tp>::allocate(__n, 0);
	nop	
.L424:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:482:       { return __a.allocate(__n); }
	nop	
	jmp	.L426	 #
.L419:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movl	$0, %eax	 #, D.147920
.L426:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:379:       }
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_:
.LFB6368:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __first, __first
	movq	%rdx, 24(%rbp)	 # __last, __last
	movq	%r8, 32(%rbp)	 # __result, __result
	movq	%r9, 40(%rbp)	 # __alloc, __alloc
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:506: 	return std::__relocate_a(__first, __last, __result, __alloc);
	movq	40(%rbp), %r8	 # __alloc, tmp84
	movq	32(%rbp), %rcx	 # __result, tmp85
	movq	24(%rbp), %rdx	 # __last, tmp86
	movq	16(%rbp), %rax	 # __first, tmp87
	movq	%r8, %r9	 # tmp84,
	movq	%rcx, %r8	 # tmp85,
	movq	%rax, %rcx	 # tmp87,
	call	_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:511:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEx
_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEx:
.LFB6370:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1158:       { return __normal_iterator(_M_current - __n); }
	movq	16(%rbp), %rax	 # this, tmp89
	movq	(%rax), %rax	 # this_7(D)->_M_current, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1158:       { return __normal_iterator(_M_current - __n); }
	movq	24(%rbp), %rdx	 # __n, __n.13_2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1158:       { return __normal_iterator(_M_current - __n); }
	salq	$4, %rdx	 #, _3
	negq	%rdx	 # _4
	addq	%rdx, %rax	 # _4, _5
	movq	%rax, -8(%rbp)	 # _5, D.145084
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1158:       { return __normal_iterator(_M_current - __n); }
	leaq	-8(%rbp), %rdx	 #, tmp90
	leaq	-16(%rbp), %rax	 #, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC1ERKS5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1158:       { return __normal_iterator(_M_current - __n); }
	movq	-16(%rbp), %rax	 # D.145085, D.146921
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1158:       { return __normal_iterator(_M_current - __n); }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS2_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS2_
_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS2_:
.LFB6379:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __i, __i
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	movq	24(%rbp), %rax	 # __i, tmp83
	movq	(%rax), %rdx	 # *__i_5(D), _1
	movq	16(%rbp), %rax	 # this, tmp84
	movq	%rdx, (%rax)	 # _1, this_3(D)->_M_current
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv:
.LFB6380:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1163:       { return _M_current; }
	movq	16(%rbp), %rax	 # this, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_iterator.h:1163:       { return _M_current; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIPN5lexer5tokenEEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIPN5lexer5tokenEEEvT_S5_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIPN5lexer5tokenEEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIPN5lexer5tokenEEEvT_S5_
_ZNSt12_Destroy_auxILb0EE9__destroyIPN5lexer5tokenEEEvT_S5_:
.LFB6387:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __first, __first
	movq	%rdx, 24(%rbp)	 # __last, __last
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	jmp	.L436	 #
.L437:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:163: 	    std::_Destroy(std::__addressof(*__first));
	movq	16(%rbp), %rax	 # __first, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZSt11__addressofIN5lexer5tokenEEPT_RS2_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:163: 	    std::_Destroy(std::__addressof(*__first));
	movq	%rax, %rcx	 # _1,
	call	_ZSt8_DestroyIN5lexer5tokenEEvPT_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	addq	$24, 16(%rbp)	 #, __first
.L436:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:162: 	  for (; __first != __last; ++__first)
	movq	16(%rbp), %rax	 # __first, tmp84
	cmpq	24(%rbp), %rax	 # __last, tmp84
	jne	.L437	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:164: 	}
	nop	
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPN5lexer5tokenEEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5lexer5tokenEEEvT_S5_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5lexer5tokenEEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5lexer5tokenEEEvT_S5_
_ZNSt12_Destroy_auxILb1EE9__destroyIPN5lexer5tokenEEEvT_S5_:
.LFB6388:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # D.145448, D.145448
	movq	%rdx, 24(%rbp)	 # D.145449, D.145449
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:172:         __destroy(_ForwardIterator, _ForwardIterator) { }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt9addressofIKcEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIKcEPT_RS1_
	.def	_ZSt9addressofIKcEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIKcEPT_RS1_
_ZSt9addressofIKcEPT_RS1_:
.LFB6389:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:139:     { return std::__addressof(__r); }
	movq	16(%rbp), %rax	 # __r, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZSt11__addressofIKcEPT_RS1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:139:     { return std::__addressof(__r); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy:
.LFB6411:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __pos, __pos
	movq	%r8, 32(%rbp)	 # __len1, __len1
	movq	%r9, 40(%rbp)	 # __s, __s
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:325:       const size_type __how_much = length() - __pos - __len1;
	movq	16(%rbp), %rax	 # this, tmp97
	movq	%rax, %rcx	 # tmp97,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:325:       const size_type __how_much = length() - __pos - __len1;
	subq	24(%rbp), %rax	 # __pos, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:325:       const size_type __how_much = length() - __pos - __len1;
	subq	32(%rbp), %rax	 # __len1, tmp99
	movq	%rax, -8(%rbp)	 # tmp99, __how_much
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:327:       size_type __new_capacity = length() + __len2 - __len1;
	movq	16(%rbp), %rax	 # this, tmp100
	movq	%rax, %rcx	 # tmp100,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:327:       size_type __new_capacity = length() + __len2 - __len1;
	movq	48(%rbp), %rdx	 # __len2, tmp101
	addq	%rdx, %rax	 # tmp101, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:327:       size_type __new_capacity = length() + __len2 - __len1;
	subq	32(%rbp), %rax	 # __len1, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:327:       size_type __new_capacity = length() + __len2 - __len1;
	movq	%rax, -24(%rbp)	 # _5, __new_capacity
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:328:       pointer __r = _M_create(__new_capacity, capacity());
	movq	16(%rbp), %rax	 # this, tmp102
	movq	%rax, %rcx	 # tmp102,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv	 #
	movq	%rax, %rcx	 #, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:328:       pointer __r = _M_create(__new_capacity, capacity());
	leaq	-24(%rbp), %rdx	 #, tmp103
	movq	16(%rbp), %rax	 # this, tmp104
	movq	%rcx, %r8	 # _6,
	movq	%rax, %rcx	 # tmp104,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy	 #
	movq	%rax, -16(%rbp)	 # _30, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:330:       if (__pos)
	cmpq	$0, 24(%rbp)	 #, __pos
	je	.L442	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:331: 	this->_S_copy(__r, _M_data(), __pos);
	movq	16(%rbp), %rax	 # this, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rdx	 #, _7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:331: 	this->_S_copy(__r, _M_data(), __pos);
	movq	24(%rbp), %rcx	 # __pos, tmp106
	movq	-16(%rbp), %rax	 # __r, tmp107
	movq	%rcx, %r8	 # tmp106,
	movq	%rax, %rcx	 # tmp107,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
.L442:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:332:       if (__s && __len2)
	cmpq	$0, 40(%rbp)	 #, __s
	je	.L443	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:332:       if (__s && __len2)
	cmpq	$0, 48(%rbp)	 #, __len2
	je	.L443	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:333: 	this->_S_copy(__r + __pos, __s, __len2);
	movq	-16(%rbp), %rdx	 # __r, tmp108
	movq	24(%rbp), %rax	 # __pos, tmp109
	leaq	(%rdx,%rax), %rcx	 #, _8
	movq	48(%rbp), %rdx	 # __len2, tmp110
	movq	40(%rbp), %rax	 # __s, tmp111
	movq	%rdx, %r8	 # tmp110,
	movq	%rax, %rdx	 # tmp111,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
.L443:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:334:       if (__how_much)
	cmpq	$0, -8(%rbp)	 #, __how_much
	je	.L444	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:336: 		      _M_data() + __pos + __len1, __how_much);
	movq	16(%rbp), %rax	 # this, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:336: 		      _M_data() + __pos + __len1, __how_much);
	movq	24(%rbp), %rcx	 # __pos, tmp113
	movq	32(%rbp), %rdx	 # __len1, tmp114
	addq	%rcx, %rdx	 # tmp113, _10
	addq	%rax, %rdx	 # _9, _11
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:335: 	this->_S_copy(__r + __pos + __len2,
	movq	24(%rbp), %rcx	 # __pos, tmp115
	movq	48(%rbp), %rax	 # __len2, tmp116
	addq	%rax, %rcx	 # tmp116, _12
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:335: 	this->_S_copy(__r + __pos + __len2,
	movq	-16(%rbp), %rax	 # __r, tmp117
	addq	%rcx, %rax	 # _12, _13
	movq	-8(%rbp), %rcx	 # __how_much, tmp118
	movq	%rcx, %r8	 # tmp118,
	movq	%rax, %rcx	 # _13,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy	 #
.L444:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:338:       _M_dispose();
	movq	16(%rbp), %rax	 # this, tmp119
	movq	%rax, %rcx	 # tmp119,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:339:       _M_data(__r);
	movq	-16(%rbp), %rdx	 # __r, tmp120
	movq	16(%rbp), %rax	 # this, tmp121
	movq	%rax, %rcx	 # tmp121,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:340:       _M_capacity(__new_capacity);
	movq	-24(%rbp), %rdx	 # __new_capacity, __new_capacity.50_14
	movq	16(%rbp), %rax	 # this, tmp122
	movq	%rax, %rcx	 # tmp122,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:341:     }
	nop	
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc:
.LFB6412:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __s, __s
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:407: 	return (less<const _CharT*>()(__s, _M_data())
	movq	32(%rbp), %rax	 # this, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rcx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:407: 	return (less<const _CharT*>()(__s, _M_data())
	movq	40(%rbp), %rdx	 # __s, tmp91
	leaq	-2(%rbp), %rax	 #, tmp92
	movq	%rcx, %r8	 # _1,
	movq	%rax, %rcx	 # tmp92,
	call	_ZNKSt4lessIPKcEclES1_S1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:408: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	testb	%al, %al	 # _2
	jne	.L446	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:408: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	movq	32(%rbp), %rax	 # this, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
	movq	%rax, %rbx	 #, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:408: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	movq	32(%rbp), %rax	 # this, tmp94
	movq	%rax, %rcx	 # tmp94,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:408: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	leaq	(%rbx,%rax), %rdx	 #, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:408: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	movq	40(%rbp), %rcx	 # __s, tmp95
	leaq	-1(%rbp), %rax	 #, tmp96
	movq	%rcx, %r8	 # tmp95,
	movq	%rax, %rcx	 # tmp96,
	call	_ZNKSt4lessIPKcEclES1_S1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:408: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	testb	%al, %al	 # _6
	je	.L447	 #,
.L446:
	movl	$1, %eax	 #, iftmp.43_7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:408: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	jmp	.L448	 #
.L447:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:408: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	movl	$0, %eax	 #, iftmp.43_7
.L448:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:409:       }
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcy,"x"
	.linkonce discard
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcy:
.LFB6413:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __d, __d
	movq	%rdx, 24(%rbp)	 # __s, __s
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:427: 	if (__n == 1)
	cmpq	$1, 32(%rbp)	 #, __n
	jne	.L451	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:428: 	  traits_type::assign(*__d, *__s);
	movq	24(%rbp), %rdx	 # __s, tmp82
	movq	16(%rbp), %rax	 # __d, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZNSt11char_traitsIcE6assignERcRKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:431:       }
	jmp	.L453	 #
.L451:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:430: 	  traits_type::move(__d, __s, __n);
	movq	32(%rbp), %rcx	 # __n, tmp84
	movq	24(%rbp), %rdx	 # __s, tmp85
	movq	16(%rbp), %rax	 # __d, tmp86
	movq	%rcx, %r8	 # tmp84,
	movq	%rax, %rcx	 # tmp86,
	call	_ZNSt11char_traitsIcE4moveEPcPKcy	 #
.L453:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:431:       }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.def	_ZNSt11_Tuple_implILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
_ZNSt11_Tuple_implILy0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_:
.LFB6414:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:269:       _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
	movq	16(%rbp), %rax	 # __t, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt10_Head_baseILy0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:269:       _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt9addressofIKwEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIKwEPT_RS1_
	.def	_ZSt9addressofIKwEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIKwEPT_RS1_
_ZSt9addressofIKwEPT_RS1_:
.LFB6415:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:139:     { return std::__addressof(__r); }
	movq	16(%rbp), %rax	 # __r, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZSt11__addressofIKwEPT_RS1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:139:     { return std::__addressof(__r); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIwE10deallocateEPwy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIwE10deallocateEPwy
	.def	_ZNSt15__new_allocatorIwE10deallocateEPwy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIwE10deallocateEPwy
_ZNSt15__new_allocatorIwE10deallocateEPwy:
.LFB6417:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __p, __p
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	32(%rbp), %rax	 # __n, tmp83
	leaq	(%rax,%rax), %rdx	 #, _2
	movq	24(%rbp), %rax	 # __p, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZdlPvy	 #
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:169:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt11_Tuple_implILy1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_,"x"
	.linkonce discard
	.globl	_ZNSt11_Tuple_implILy1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.def	_ZNSt11_Tuple_implILy1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11_Tuple_implILy1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
_ZNSt11_Tuple_implILy1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_:
.LFB6419:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __t, __t
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:497:       _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
	movq	16(%rbp), %rax	 # __t, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZNSt10_Head_baseILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:497:       _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE3outERS0_PKwS4_RS4_PcS6_RS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE3outERS0_PKwS4_RS4_PcS6_RS6_
	.def	_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE3outERS0_PKwS4_RS4_PcS6_RS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE3outERS0_PKwS4_RS4_PcS6_RS6_
_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE3outERS0_PKwS4_RS4_PcS6_RS6_:
.LFB6420:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __state, __state
	movq	%r8, 32(%rbp)	 # __from, __from
	movq	%r9, 40(%rbp)	 # __from_end, __from_end
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/codecvt.h:124: 	return this->do_out(__state, __from, __from_end, __from_next,
	movq	16(%rbp), %rax	 # this, tmp87
	movq	(%rax), %rax	 # this_5(D)->D.93591._vptr.facet, _1
	addq	$16, %rax	 #, _2
	movq	(%rax), %r10	 # *_2, _3
	movq	40(%rbp), %r9	 # __from_end, tmp88
	movq	32(%rbp), %r8	 # __from, tmp89
	movq	24(%rbp), %rdx	 # __state, tmp90
	movq	16(%rbp), %rax	 # this, tmp91
	movq	72(%rbp), %rcx	 # __to_next, tmp92
	movq	%rcx, 56(%rsp)	 # tmp92,
	movq	64(%rbp), %rcx	 # __to_end, tmp93
	movq	%rcx, 48(%rsp)	 # tmp93,
	movq	56(%rbp), %rcx	 # __to, tmp94
	movq	%rcx, 40(%rsp)	 # tmp94,
	movq	48(%rbp), %rcx	 # __from_next, tmp95
	movq	%rcx, 32(%rsp)	 # tmp95,
	movq	%rax, %rcx	 # tmp91,
	call	*%r10	 # _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/codecvt.h:126:       }
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt16__do_str_codecvtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEwSt7codecvtIwc9_MbstatetES7_MS8_KFNSt12codecvt_base6resultERS7_PKwSD_RSD_PcSF_RSF_EEbPKT0_SL_RT_RKT1_RT2_RyT3_,"x"
	.linkonce discard
	.globl	_ZSt16__do_str_codecvtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEwSt7codecvtIwc9_MbstatetES7_MS8_KFNSt12codecvt_base6resultERS7_PKwSD_RSD_PcSF_RSF_EEbPKT0_SL_RT_RKT1_RT2_RyT3_
	.def	_ZSt16__do_str_codecvtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEwSt7codecvtIwc9_MbstatetES7_MS8_KFNSt12codecvt_base6resultERS7_PKwSD_RSD_PcSF_RSF_EEbPKT0_SL_RT_RKT1_RT2_RyT3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt16__do_str_codecvtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEwSt7codecvtIwc9_MbstatetES7_MS8_KFNSt12codecvt_base6resultERS7_PKwSD_RSD_PcSF_RSF_EEbPKT0_SL_RT_RKT1_RT2_RyT3_
_ZSt16__do_str_codecvtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEwSt7codecvtIwc9_MbstatetES7_MS8_KFNSt12codecvt_base6resultERS7_PKwSD_RSD_PcSF_RSF_EEbPKT0_SL_RT_RKT1_RT2_RyT3_:
.LFB6421:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$136, %rsp	 #,
	.seh_stackalloc	136
	leaq	128(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __first, __first
	movq	%rdx, 40(%rbp)	 # __last, __last
	movq	%r8, 48(%rbp)	 # __outstr, __outstr
	movq	%r9, 56(%rbp)	 # __cvt, __cvt
	movq	80(%rbp), %rbx	 #, tmp133
	movq	(%rbx), %rax	 # __fn, tmp134
	movq	8(%rbx), %rdx	 # __fn,
	movq	%rax, -64(%rbp)	 # tmp134, __fn
	movq	%rdx, -56(%rbp)	 #, __fn
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:58:       if (__first == __last)
	movq	32(%rbp), %rax	 # __first, tmp135
	cmpq	40(%rbp), %rax	 # __last, tmp135
	jne	.L465	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:60: 	  __outstr.clear();
	movq	48(%rbp), %rax	 # __outstr, tmp136
	movq	%rax, %rcx	 # tmp136,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:61: 	  __count = 0;
	movq	72(%rbp), %rax	 # __count, tmp137
	movq	$0, (%rax)	 #, *__count_87(D)
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:62: 	  return true;
	movl	$1, %eax	 #, _49
	jmp	.L473	 #
.L465:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:65:       size_t __outchars = 0;
	movq	$0, -8(%rbp)	 #, __outchars
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:66:       auto __next = __first;
	movq	32(%rbp), %rax	 # __first, tmp138
	movq	%rax, -40(%rbp)	 # tmp138, __next
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:67:       const auto __maxlen = __cvt.max_length() + 1;
	movq	56(%rbp), %rax	 # __cvt, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE10max_lengthEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:67:       const auto __maxlen = __cvt.max_length() + 1;
	addl	$1, %eax	 #, tmp139
	movl	%eax, -12(%rbp)	 # tmp139, __maxlen
.L471:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:72: 	  __outstr.resize(__outstr.size() + (__last - __next) * __maxlen);
	movq	48(%rbp), %rax	 # __outstr, tmp140
	movq	%rax, %rcx	 # tmp140,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:72: 	  __outstr.resize(__outstr.size() + (__last - __next) * __maxlen);
	movq	-40(%rbp), %rdx	 # __next, __next.55_4
	movq	40(%rbp), %rcx	 # __last, tmp141
	subq	%rdx, %rcx	 # __next.55_4, _5
	sarq	%rcx	 # _5
	movq	%rcx, %rdx	 # _5, tmp142
	movq	%rdx, %rcx	 # tmp142, _6
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:72: 	  __outstr.resize(__outstr.size() + (__last - __next) * __maxlen);
	movl	-12(%rbp), %edx	 # __maxlen, tmp143
	movslq	%edx, %rdx	 # tmp143, _7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:72: 	  __outstr.resize(__outstr.size() + (__last - __next) * __maxlen);
	imulq	%rcx, %rdx	 # _6, _8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:72: 	  __outstr.resize(__outstr.size() + (__last - __next) * __maxlen);
	addq	%rax, %rdx	 # _3, _10
	movq	48(%rbp), %rax	 # __outstr, tmp144
	movq	%rax, %rcx	 # tmp144,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:73: 	  auto __outnext = &__outstr.front() + __outchars;
	movq	48(%rbp), %rax	 # __outstr, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:73: 	  auto __outnext = &__outstr.front() + __outchars;
	movq	-8(%rbp), %rdx	 # __outchars, tmp146
	addq	%rdx, %rax	 # tmp146, _12
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:73: 	  auto __outnext = &__outstr.front() + __outchars;
	movq	%rax, -48(%rbp)	 # _12, __outnext
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:74: 	  auto const __outlast = &__outstr.back() + 1;
	movq	48(%rbp), %rax	 # __outstr, tmp147
	movq	%rax, %rcx	 # tmp147,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:74: 	  auto const __outlast = &__outstr.back() + 1;
	addq	$1, %rax	 #, tmp148
	movq	%rax, -24(%rbp)	 # tmp148, __outlast
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:75: 	  __result = (__cvt.*__fn)(__state, __next, __last, __next,
	movq	-64(%rbp), %rax	 # __fn.__pfn, _14
	andl	$1, %eax	 #, _16
	testq	%rax, %rax	 # _16
	je	.L467	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:75: 	  __result = (__cvt.*__fn)(__state, __next, __last, __next,
	movq	-56(%rbp), %rax	 # __fn.__delta, _17
	movq	%rax, %rdx	 # _17, _18
	movq	56(%rbp), %rax	 # __cvt, tmp149
	addq	%rdx, %rax	 # _18, _19
	movq	(%rax), %rax	 # *_19, _20
	movq	-64(%rbp), %rdx	 # __fn.__pfn, _21
	subq	$1, %rdx	 #, _23
	addq	%rdx, %rax	 # _24, _25
	movq	(%rax), %rax	 # *_25, iftmp.56_50
	jmp	.L468	 #
.L467:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:75: 	  __result = (__cvt.*__fn)(__state, __next, __last, __next,
	movq	-64(%rbp), %rax	 # __fn.__pfn, iftmp.56_50
.L468:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:75: 	  __result = (__cvt.*__fn)(__state, __next, __last, __next,
	movq	-56(%rbp), %rdx	 # __fn.__delta, _27
	movq	%rdx, %rcx	 # _27, _28
	movq	56(%rbp), %rdx	 # __cvt, tmp150
	addq	%rdx, %rcx	 # tmp150, _29
	movq	-48(%rbp), %r8	 # __outnext, __outnext.58_30
	movq	-40(%rbp), %r10	 # __next, __next.59_31
	movq	40(%rbp), %r11	 # __last, tmp151
	movq	64(%rbp), %rdx	 # __state, tmp152
	leaq	-48(%rbp), %r9	 #, tmp153
	movq	%r9, 56(%rsp)	 # tmp153,
	movq	-24(%rbp), %r9	 # __outlast, tmp154
	movq	%r9, 48(%rsp)	 # tmp154,
	movq	%r8, 40(%rsp)	 # __outnext.58_30,
	leaq	-40(%rbp), %r8	 #, tmp155
	movq	%r8, 32(%rsp)	 # tmp155,
	movq	%r11, %r9	 # tmp151,
	movq	%r10, %r8	 # __next.59_31,
	call	*%rax	 # iftmp.56_50
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:75: 	  __result = (__cvt.*__fn)(__state, __next, __last, __next,
	movl	%eax, -28(%rbp)	 # _77, __result
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:77: 	  __outchars = __outnext - &__outstr.front();
	movq	-48(%rbp), %rbx	 # __outnext, __outnext.60_32
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:77: 	  __outchars = __outnext - &__outstr.front();
	movq	48(%rbp), %rax	 # __outstr, tmp156
	movq	%rax, %rcx	 # tmp156,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:77: 	  __outchars = __outnext - &__outstr.front();
	subq	%rax, %rbx	 # _33, __outnext.60_32
	movq	%rbx, %rdx	 # __outnext.60_32, _34
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:77: 	  __outchars = __outnext - &__outstr.front();
	movq	%rdx, -8(%rbp)	 # _34, __outchars
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	cmpl	$1, -28(%rbp)	 #, __result
	jne	.L469	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:79:       while (__result == codecvt_base::partial && __next != __last
	movq	-40(%rbp), %rax	 # __next, __next.63_35
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:79:       while (__result == codecvt_base::partial && __next != __last
	cmpq	%rax, 40(%rbp)	 # __next.63_35, __last
	je	.L469	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	movq	48(%rbp), %rax	 # __outstr, tmp157
	movq	%rax, %rcx	 # tmp157,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	subq	-8(%rbp), %rax	 # __outchars, _37
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	movq	%rax, %rdx	 # _37, _38
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	movl	-12(%rbp), %eax	 # __maxlen, tmp158
	cltq
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	cmpq	%rax, %rdx	 # _39, _38
	jge	.L469	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	movl	$1, %eax	 #, iftmp.62_51
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	jmp	.L470	 #
.L469:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	movl	$0, %eax	 #, iftmp.62_51
.L470:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:80: 	     && ptrdiff_t(__outstr.size() - __outchars) < __maxlen);
	testb	%al, %al	 # iftmp.62_51
	jne	.L471	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:82:       if (__result == codecvt_base::error)
	cmpl	$2, -28(%rbp)	 #, __result
	jne	.L472	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:84: 	  __count = __next - __first;
	movq	-40(%rbp), %rax	 # __next, __next.64_40
	subq	32(%rbp), %rax	 # __first, _41
	sarq	%rax	 # tmp159
	movq	%rax, %rdx	 # _42, _43
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:84: 	  __count = __next - __first;
	movq	72(%rbp), %rax	 # __count, tmp160
	movq	%rdx, (%rax)	 # _43, *__count_87(D)
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:85: 	  return false;
	movl	$0, %eax	 #, _49
	jmp	.L473	 #
.L472:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:99:       __outstr.resize(__outchars);
	movq	-8(%rbp), %rdx	 # __outchars, tmp161
	movq	48(%rbp), %rax	 # __outstr, tmp162
	movq	%rax, %rcx	 # tmp162,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:100:       __count = __next - __first;
	movq	-40(%rbp), %rax	 # __next, __next.65_44
	subq	32(%rbp), %rax	 # __first, _45
	sarq	%rax	 # tmp163
	movq	%rax, %rdx	 # _46, _47
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:100:       __count = __next - __first;
	movq	72(%rbp), %rax	 # __count, tmp164
	movq	%rdx, (%rax)	 # _47, *__count_87(D)
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:101:       return true;
	movl	$1, %eax	 #, _49
.L473:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/locale_conv.h:102:     }
	addq	$136, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_y
	.def	_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_y
_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_y:
.LFB6428:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __p, __p
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	32(%rbp), %rax	 # __n, tmp83
	salq	$4, %rax	 #, tmp83
	movq	%rax, %rdx	 # tmp83, _2
	movq	24(%rbp), %rax	 # __p, tmp84
	movq	%rax, %rcx	 # tmp84,
	call	_ZdlPvy	 #
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:169:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_
	.def	_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_
_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_:
.LFB6429:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	movq	16(%rbp), %rax	 # __r, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt8_DestroyISt17basic_string_viewIcSt11char_traitsIcEEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyISt17basic_string_viewIcSt11char_traitsIcEEEvPT_
	.def	_ZSt8_DestroyISt17basic_string_viewIcSt11char_traitsIcEEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyISt17basic_string_viewIcSt11char_traitsIcEEEvPT_
_ZSt8_DestroyISt17basic_string_viewIcSt11char_traitsIcEEEvPT_:
.LFB6430:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __pointer, __pointer
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:149:       std::destroy_at(__pointer);
	movq	16(%rbp), %rax	 # __pointer, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	_ZSt10destroy_atISt17basic_string_viewIcSt11char_traitsIcEEEvPT_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:153:     }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_
	.def	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_:
.LFB6431:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __a, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1918: 	const size_t __diffmax
	movabsq	$576460752303423487, %rax	 #, tmp91
	movq	%rax, -16(%rbp)	 # tmp91, __diffmax
	movq	16(%rbp), %rax	 # __a, tmp86
	movq	%rax, -8(%rbp)	 # tmp86, __a
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:575: 	return size_t(-1) / sizeof(value_type);
	movabsq	$1152921504606846975, %rax	 #, D.147851
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1920: 	const size_t __allocmax = _Alloc_traits::max_size(__a);
	movq	%rax, -24(%rbp)	 # D.147851, __allocmax
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1921: 	return (std::min)(__diffmax, __allocmax);
	leaq	-24(%rbp), %rdx	 #, tmp87
	leaq	-16(%rbp), %rax	 #, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZSt3minIyERKT_S2_S2_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1921: 	return (std::min)(__diffmax, __allocmax);
	movq	(%rax), %rax	 # *_2, _8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:1922:       }
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv:
.LFB6433:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:304:       { return this->_M_impl; }
	movq	16(%rbp), %rax	 # this, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_vector.h:304:       { return this->_M_impl; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_
	.def	_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_
_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_:
.LFB6435:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	leaq	32(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __first, __first
	movq	%rdx, 40(%rbp)	 # __last, __last
	movq	%r8, 48(%rbp)	 # __result, __result
	movq	%r9, 56(%rbp)	 # __alloc, __alloc
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1148:       return std::__relocate_a_1(std::__niter_base(__first),
	movq	48(%rbp), %rax	 # __result, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_	 #
	movq	%rax, %rsi	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1148:       return std::__relocate_a_1(std::__niter_base(__first),
	movq	40(%rbp), %rax	 # __last, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_	 #
	movq	%rax, %rbx	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1148:       return std::__relocate_a_1(std::__niter_base(__first),
	movq	32(%rbp), %rax	 # __first, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1148:       return std::__relocate_a_1(std::__niter_base(__first),
	movq	56(%rbp), %rdx	 # __alloc, tmp90
	movq	%rdx, %r9	 # tmp90,
	movq	%rsi, %r8	 # _1,
	movq	%rbx, %rdx	 # _2,
	movq	%rax, %rcx	 # _3,
	call	_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1151:     }
	addq	$32, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt10destroy_atISt17basic_string_viewIcSt11char_traitsIcEEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt10destroy_atISt17basic_string_viewIcSt11char_traitsIcEEEvPT_
	.def	_ZSt10destroy_atISt17basic_string_viewIcSt11char_traitsIcEEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10destroy_atISt17basic_string_viewIcSt11char_traitsIcEEEvPT_
_ZSt10destroy_atISt17basic_string_viewIcSt11char_traitsIcEEEvPT_:
.LFB6436:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __location, __location
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:89:     }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcE8allocateEyPKv
	.def	_ZNSt15__new_allocatorIcE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcE8allocateEyPKv
_ZNSt15__new_allocatorIcE8allocateEyPKv:
.LFB6437:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __n, __n
	movq	%r8, 32(%rbp)	 # D.146016, D.146016
	movq	16(%rbp), %rax	 # this, tmp89
	movq	%rax, -8(%rbp)	 # tmp89, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:229: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$9223372036854775807, %rax	 #, D.147932
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmpq	24(%rbp), %rax	 # __n, D.147932
	setb	%al	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movzbl	%al, %eax	 # _2, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testl	%eax, %eax	 # _4
	setne	%al	 #, retval.28_8
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testb	%al, %al	 # retval.28_8
	je	.L489	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:136: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.L489:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	24(%rbp), %rax	 # __n, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_Znwy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:148:       }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIcE10deallocateEPcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIcE10deallocateEPcy
	.def	_ZNSt15__new_allocatorIcE10deallocateEPcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIcE10deallocateEPcy
_ZNSt15__new_allocatorIcE10deallocateEPcy:
.LFB6438:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __p, __p
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	32(%rbp), %rdx	 # __n, tmp82
	movq	24(%rbp), %rax	 # __p, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	_ZdlPvy	 #
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:169:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt11__addressofIN5lexer5tokenEEPT_RS2_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIN5lexer5tokenEEPT_RS2_
	.def	_ZSt11__addressofIN5lexer5tokenEEPT_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIN5lexer5tokenEEPT_RS2_
_ZSt11__addressofIN5lexer5tokenEEPT_RS2_:
.LFB6446:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	movq	16(%rbp), %rax	 # __r, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt8_DestroyIN5lexer5tokenEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIN5lexer5tokenEEvPT_
	.def	_ZSt8_DestroyIN5lexer5tokenEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIN5lexer5tokenEEvPT_
_ZSt8_DestroyIN5lexer5tokenEEvPT_:
.LFB6447:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __pointer, __pointer
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:149:       std::destroy_at(__pointer);
	movq	16(%rbp), %rax	 # __pointer, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	_ZSt10destroy_atIN5lexer5tokenEEvPT_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:153:     }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt11__addressofIKcEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIKcEPT_RS1_
	.def	_ZSt11__addressofIKcEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIKcEPT_RS1_
_ZSt11__addressofIKcEPT_RS1_:
.LFB6448:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	movq	16(%rbp), %rax	 # __r, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt4lessIPKcEclES1_S1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt4lessIPKcEclES1_S1_
	.def	_ZNKSt4lessIPKcEclES1_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt4lessIPKcEclES1_S1_
_ZNKSt4lessIPKcEclES1_S1_:
.LFB6458:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __x, __x
	movq	%r8, 32(%rbp)	 # __y, __y
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_function.h:454: 	if (std::__is_constant_evaluated())
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_function.h:454: 	if (std::__is_constant_evaluated())
	testb	%al, %al	 # retval.44_6
	je	.L499	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_function.h:455: 	  return __x < __y;
	movq	24(%rbp), %rax	 # __x, tmp87
	cmpq	32(%rbp), %rax	 # __y, tmp87
	setb	%al	 #, _3
	jmp	.L500	 #
.L499:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_function.h:457: 	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
	movq	24(%rbp), %rdx	 # __x, __x.45_1
	movq	32(%rbp), %rax	 # __y, __y.46_2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_function.h:457: 	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
	cmpq	%rax, %rdx	 # __y.46_2, __x.45_1
	setb	%al	 #, _3
.L500:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_function.h:458:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_,"x"
	.linkonce discard
	.globl	_ZNSt10_Head_baseILy0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.def	_ZNSt10_Head_baseILy0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
_ZNSt10_Head_baseILy0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_:
.LFB6459:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __b, __b
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:234:       _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
	movq	16(%rbp), %rax	 # __b, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:234:       _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt11__addressofIKwEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIKwEPT_RS1_
	.def	_ZSt11__addressofIKwEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIKwEPT_RS1_
_ZSt11__addressofIKwEPT_RS1_:
.LFB6460:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __r, __r
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	movq	16(%rbp), %rax	 # __r, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/move.h:52:     { return __builtin_addressof(__r); }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt10_Head_baseILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_,"x"
	.linkonce discard
	.globl	_ZNSt10_Head_baseILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.def	_ZNSt10_Head_baseILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_Head_baseILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
_ZNSt10_Head_baseILy1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_:
.LFB6463:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __b, __b
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:125:       _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
	movq	16(%rbp), %rax	 # __b, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/tuple:125:       _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv:
.LFB6464:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1200:       { _M_set_length(0); }
	movq	16(%rbp), %rax	 # this, tmp82
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp82,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1200:       { _M_set_length(0); }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE10max_lengthEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE10max_lengthEv
	.def	_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE10max_lengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE10max_lengthEv
_ZNKSt23__codecvt_abstract_baseIwc9_MbstatetE10max_lengthEv:
.LFB6465:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/codecvt.h:223:       { return this->do_max_length(); }
	movq	16(%rbp), %rax	 # this, tmp87
	movq	(%rax), %rax	 # this_5(D)->D.93591._vptr.facet, _1
	addq	$64, %rax	 #, _2
	movq	(%rax), %rdx	 # *_2, _3
	movq	16(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	*%rdx	 # _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/codecvt.h:223:       { return this->do_max_length(); }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEy
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEy
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEy:
.LFB6466:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1102:       { this->resize(__n, _CharT()); }
	movq	24(%rbp), %rdx	 # __n, tmp82
	movq	16(%rbp), %rax	 # this, tmp83
	movl	$0, %r8d	 #,
	movq	%rax, %rcx	 # tmp83,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEyc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1102:       { this->resize(__n, _CharT()); }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv:
.LFB6467:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1305: 	__glibcxx_assert(!empty());
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1305: 	__glibcxx_assert(!empty());
	testb	%al, %al	 # _1
	je	.L512	 #,
	movq	16(%rbp), %rax	 # this, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv	 #
	testb	%al, %al	 # _2
	je	.L512	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1305: 	__glibcxx_assert(!empty());
	movl	$1, %eax	 #, iftmp.71_3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1305: 	__glibcxx_assert(!empty());
	jmp	.L513	 #
.L512:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1305: 	__glibcxx_assert(!empty());
	movl	$0, %eax	 #, iftmp.71_3
.L513:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1305: 	__glibcxx_assert(!empty());
	testb	%al, %al	 # iftmp.71_3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1306: 	return operator[](0);
	movq	16(%rbp), %rax	 # this, tmp88
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp88,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1307:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv:
.LFB6468:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1329: 	__glibcxx_assert(!empty());
	call	_ZSt23__is_constant_evaluatedv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1329: 	__glibcxx_assert(!empty());
	testb	%al, %al	 # _1
	je	.L517	 #,
	movq	16(%rbp), %rax	 # this, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv	 #
	testb	%al, %al	 # _2
	je	.L517	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1329: 	__glibcxx_assert(!empty());
	movl	$1, %eax	 #, iftmp.67_5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1329: 	__glibcxx_assert(!empty());
	jmp	.L518	 #
.L517:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1329: 	__glibcxx_assert(!empty());
	movl	$0, %eax	 #, iftmp.67_5
.L518:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1329: 	__glibcxx_assert(!empty());
	testb	%al, %al	 # iftmp.67_5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1330: 	return operator[](this->size() - 1);
	movq	16(%rbp), %rax	 # this, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1330: 	return operator[](this->size() - 1);
	leaq	-1(%rax), %rdx	 #, _4
	movq	16(%rbp), %rax	 # this, tmp91
	movq	%rax, %rcx	 # tmp91,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1331:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_
	.def	_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_
_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_:
.LFB6482:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __it, __it
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:318:     { return __it; }
	movq	16(%rbp), %rax	 # __it, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_algobase.h:318:     { return __it; }
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_
	.def	_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_
_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_:
.LFB6483:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # __first, __first
	movq	%rdx, 40(%rbp)	 # __last, __last
	movq	%r8, 48(%rbp)	 # __result, __result
	movq	%r9, 56(%rbp)	 # __alloc, __alloc
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1104:       _ForwardIterator __cur = __result;
	movq	48(%rbp), %rax	 # __result, tmp86
	movq	%rax, -8(%rbp)	 # tmp86, __cur
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	jmp	.L524	 #
.L525:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1106: 	std::__relocate_object_a(std::__addressof(*__cur),
	movq	32(%rbp), %rax	 # __first, tmp87
	movq	%rax, %rcx	 # tmp87,
	call	_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_	 #
	movq	%rax, %rbx	 #, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1106: 	std::__relocate_object_a(std::__addressof(*__cur),
	movq	-8(%rbp), %rax	 # __cur, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1106: 	std::__relocate_object_a(std::__addressof(*__cur),
	movq	56(%rbp), %rdx	 # __alloc, tmp89
	movq	%rdx, %r8	 # tmp89,
	movq	%rbx, %rdx	 # _1,
	movq	%rax, %rcx	 # _2,
	call	_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	addq	$16, 32(%rbp)	 #, __first
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	addq	$16, -8(%rbp)	 #, __cur
.L524:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1105:       for (; __first != __last; ++__first, (void)++__cur)
	movq	32(%rbp), %rax	 # __first, tmp90
	cmpq	40(%rbp), %rax	 # __last, tmp90
	jne	.L525	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1108:       return __cur;
	movq	-8(%rbp), %rax	 # __cur, _11
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1109:     }
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorIN5lexer5tokenEE10deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorIN5lexer5tokenEE10deallocateEPS1_y
	.def	_ZNSt15__new_allocatorIN5lexer5tokenEE10deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorIN5lexer5tokenEE10deallocateEPS1_y
_ZNSt15__new_allocatorIN5lexer5tokenEE10deallocateEPS1_y:
.LFB6497:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __p, __p
	movq	%r8, 32(%rbp)	 # __n, __n
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:168: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	32(%rbp), %rdx	 # __n, tmp83
	movq	%rdx, %rax	 # tmp83, tmp84
	addq	%rax, %rax	 # tmp84
	addq	%rdx, %rax	 # tmp83, tmp84
	salq	$3, %rax	 #, tmp85
	movq	%rax, %rdx	 # tmp84, _2
	movq	24(%rbp), %rax	 # __p, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	_ZdlPvy	 #
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:169:       }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt10destroy_atIN5lexer5tokenEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt10destroy_atIN5lexer5tokenEEvPT_
	.def	_ZSt10destroy_atIN5lexer5tokenEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10destroy_atIN5lexer5tokenEEvPT_
_ZSt10destroy_atIN5lexer5tokenEEvPT_:
.LFB6498:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __location, __location
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_construct.h:89:     }
	nop	
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEyc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEyc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEyc
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEyc:
.LFB6506:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __n, __n
	movl	%r8d, %eax	 # __c, tmp84
	movb	%al, 32(%rbp)	 # tmp85, __c
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:398:       const size_type __size = this->size();
	movq	16(%rbp), %rax	 # this, tmp86
	movq	%rax, %rcx	 # tmp86,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
	movq	%rax, -8(%rbp)	 # tmp87, __size
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:399:       if (__size < __n)
	movq	-8(%rbp), %rax	 # __size, tmp88
	cmpq	24(%rbp), %rax	 # __n, tmp88
	jnb	.L531	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:400: 	this->append(__n - __size, __c);
	movsbl	32(%rbp), %ecx	 # __c, _1
	movq	24(%rbp), %rax	 # __n, tmp89
	subq	-8(%rbp), %rax	 # __size, tmp89
	movq	%rax, %rdx	 # tmp89, _2
	movq	16(%rbp), %rax	 # this, tmp90
	movl	%ecx, %r8d	 # _1,
	movq	%rax, %rcx	 # tmp90,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEyc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:403:     }
	jmp	.L533	 #
.L531:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:401:       else if (__n < __size)
	movq	24(%rbp), %rax	 # __n, tmp91
	cmpq	-8(%rbp), %rax	 # __size, tmp91
	jnb	.L533	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:402: 	this->_M_set_length(__n);
	movq	24(%rbp), %rdx	 # __n, tmp92
	movq	16(%rbp), %rax	 # this, tmp93
	movq	%rax, %rcx	 # tmp93,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy	 #
.L533:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:403:     }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv:
.LFB6507:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1209:       { return this->size() == 0; }
	movq	16(%rbp), %rax	 # this, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1209:       { return this->size() == 0; }
	testq	%rax, %rax	 # _1
	sete	%al	 #, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1209:       { return this->size() == 0; }
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEyPKv
	.def	_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEyPKv
_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEyPKv:
.LFB6514:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
	movq	%rdx, 24(%rbp)	 # __n, __n
	movq	%r8, 32(%rbp)	 # D.146472, D.146472
	movq	16(%rbp), %rax	 # this, tmp90
	movq	%rax, -8(%rbp)	 # tmp90, this
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:229: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$576460752303423487, %rax	 #, D.147947
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmpq	24(%rbp), %rax	 # __n, D.147947
	setb	%al	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movzbl	%al, %eax	 # _2, _3
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testl	%eax, %eax	 # _4
	setne	%al	 #, retval.11_9
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:130: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testb	%al, %al	 # retval.11_9
	je	.L538	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:134: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	movabsq	$1152921504606846975, %rax	 #, tmp91
	cmpq	24(%rbp), %rax	 # __n, tmp91
	jnb	.L539	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:135: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv	 #
.L539:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:136: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv	 #
.L538:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	24(%rbp), %rax	 # __n, tmp92
	salq	$4, %rax	 #, _6
	movq	%rax, %rcx	 # _6,
	call	_Znwy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:147: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/new_allocator.h:148:       }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_,"x"
	.linkonce discard
	.globl	_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_
	.def	_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_
_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_:
.LFB6515:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$80, %rsp	 #,
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # __dest, __dest
	movq	%rdx, 24(%rbp)	 # __orig, __orig
	movq	%r8, 32(%rbp)	 # __alloc, __alloc
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1078:       __traits::construct(__alloc, __dest, std::move(*__orig));
	movq	24(%rbp), %rax	 # __orig, tmp85
	movq	%rax, %rcx	 # tmp85,
	call	_ZSt4moveIRSt17basic_string_viewIcSt11char_traitsIcEEEONSt16remove_referenceIT_E4typeEOS6_	 #
	movq	32(%rbp), %rdx	 # __alloc, tmp86
	movq	%rdx, -24(%rbp)	 # tmp86, __a
	movq	16(%rbp), %rdx	 # __dest, tmp87
	movq	%rdx, -32(%rbp)	 # tmp87, __p
	movq	%rax, -40(%rbp)	 # _1, __args#0
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:539: 	  std::construct_at(__p, std::forward<_Args>(__args)...);
	movq	-40(%rbp), %rax	 # __args#0, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZSt7forwardISt17basic_string_viewIcSt11char_traitsIcEEEOT_RNSt16remove_referenceIS4_E4typeE	 #
	movq	%rax, %rdx	 #, _14
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:539: 	  std::construct_at(__p, std::forward<_Args>(__args)...);
	movq	-32(%rbp), %rax	 # __p, tmp89
	movq	%rax, %rcx	 # tmp89,
	call	_ZSt12construct_atISt17basic_string_viewIcSt11char_traitsIcEEJS3_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS5_DpOS6_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:541: 	}
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1079:       __traits::destroy(__alloc, std::__addressof(*__orig));
	movq	24(%rbp), %rax	 # __orig, tmp90
	movq	%rax, %rcx	 # tmp90,
	call	_ZSt11__addressofISt17basic_string_viewIcSt11char_traitsIcEEEPT_RS4_	 #
	movq	32(%rbp), %rdx	 # __alloc, tmp91
	movq	%rdx, -8(%rbp)	 # tmp91, __a
	movq	%rax, -16(%rbp)	 # _2, __p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:559: 	  std::destroy_at(__p);
	movq	-16(%rbp), %rax	 # __p, tmp92
	movq	%rax, %rcx	 # tmp92,
	call	_ZSt10destroy_atISt17basic_string_viewIcSt11char_traitsIcEEEvPT_	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/alloc_traits.h:561: 	}
	nop	
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/stl_uninitialized.h:1080:     }
	nop	
	addq	$80, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEyc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEyc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEyc
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEyc:
.LFB6527:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __n, __n
	movl	%r8d, %eax	 # __c, tmp86
	movb	%al, 48(%rbp)	 # tmp87, __c
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1476:       { return _M_replace_aux(this->size(), size_type(0), __n, __c); }
	movsbl	48(%rbp), %ebx	 # __c, _1
	movq	32(%rbp), %rax	 # this, tmp88
	movq	%rax, %rcx	 # tmp88,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
	movq	%rax, %rdx	 #, _2
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1476:       { return _M_replace_aux(this->size(), size_type(0), __n, __c); }
	movq	40(%rbp), %rcx	 # __n, tmp89
	movq	32(%rbp), %rax	 # this, tmp90
	movl	%ebx, 32(%rsp)	 # _1,
	movq	%rcx, %r9	 # tmp89,
	movl	$0, %r8d	 #,
	movq	%rax, %rcx	 # tmp90,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.h:1476:       { return _M_replace_aux(this->size(), size_type(0), __n, __c); }
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "basic_string::_M_replace_aux\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEyyyc:
.LFB6532:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$104, %rsp	 #,
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # this, this
	movq	%rdx, 40(%rbp)	 # __pos1, __pos1
	movq	%r8, 48(%rbp)	 # __n1, __n1
	movq	%r9, 56(%rbp)	 # __n2, __n2
	movl	64(%rbp), %eax	 # __c, tmp94
	movb	%al, -36(%rbp)	 # tmp95, __c
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:449:       _M_check_length(__n1, __n2, "basic_string::_M_replace_aux");
	movq	56(%rbp), %rcx	 # __n2, tmp96
	movq	48(%rbp), %rdx	 # __n1, tmp97
	movq	32(%rbp), %rax	 # this, tmp98
	leaq	.LC7(%rip), %r9	 #,
	movq	%rcx, %r8	 # tmp96,
	movq	%rax, %rcx	 # tmp98,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEyyPKc	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:451:       const size_type __old_size = this->size();
	movq	32(%rbp), %rax	 # this, tmp99
	movq	%rax, %rcx	 # tmp99,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	 #
	movq	%rax, -8(%rbp)	 # tmp100, __old_size
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:452:       const size_type __new_size = __old_size + __n2 - __n1;
	movq	-8(%rbp), %rdx	 # __old_size, tmp101
	movq	56(%rbp), %rax	 # __n2, tmp102
	addq	%rdx, %rax	 # tmp101, _1
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:452:       const size_type __new_size = __old_size + __n2 - __n1;
	subq	48(%rbp), %rax	 # __n1, tmp104
	movq	%rax, -16(%rbp)	 # tmp104, __new_size
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:454:       if (__new_size <= this->capacity())
	movq	32(%rbp), %rax	 # this, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:454:       if (__new_size <= this->capacity())
	cmpq	-16(%rbp), %rax	 # __new_size, _2
	setnb	%al	 #, retval.72_21
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:454:       if (__new_size <= this->capacity())
	testb	%al, %al	 # retval.72_21
	je	.L545	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:456: 	  pointer __p = this->_M_data() + __pos1;
	movq	32(%rbp), %rax	 # this, tmp106
	movq	%rax, %rcx	 # tmp106,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:456: 	  pointer __p = this->_M_data() + __pos1;
	movq	40(%rbp), %rdx	 # __pos1, tmp110
	addq	%rdx, %rax	 # tmp110, tmp109
	movq	%rax, -24(%rbp)	 # tmp109, __p
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:458: 	  const size_type __how_much = __old_size - __pos1 - __n1;
	movq	-8(%rbp), %rax	 # __old_size, tmp111
	subq	40(%rbp), %rax	 # __pos1, _4
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:458: 	  const size_type __how_much = __old_size - __pos1 - __n1;
	subq	48(%rbp), %rax	 # __n1, tmp113
	movq	%rax, -32(%rbp)	 # tmp113, __how_much
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:459: 	  if (__how_much && __n1 != __n2)
	cmpq	$0, -32(%rbp)	 #, __how_much
	je	.L546	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:459: 	  if (__how_much && __n1 != __n2)
	movq	48(%rbp), %rax	 # __n1, tmp114
	cmpq	56(%rbp), %rax	 # __n2, tmp114
	je	.L546	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:460: 	    this->_S_move(__p + __n2, __p + __n1, __how_much);
	movq	-24(%rbp), %rdx	 # __p, tmp115
	movq	48(%rbp), %rax	 # __n1, tmp116
	addq	%rax, %rdx	 # tmp116, _5
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:460: 	    this->_S_move(__p + __n2, __p + __n1, __how_much);
	movq	-24(%rbp), %rcx	 # __p, tmp117
	movq	56(%rbp), %rax	 # __n2, tmp118
	addq	%rcx, %rax	 # tmp117, _6
	movq	-32(%rbp), %rcx	 # __how_much, tmp119
	movq	%rcx, %r8	 # tmp119,
	movq	%rax, %rcx	 # _6,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcy	 #
	jmp	.L546	 #
.L545:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:463: 	this->_M_mutate(__pos1, __n1, 0, __n2);
	movq	48(%rbp), %r8	 # __n1, tmp120
	movq	40(%rbp), %rdx	 # __pos1, tmp121
	movq	32(%rbp), %rax	 # this, tmp122
	movq	56(%rbp), %rcx	 # __n2, tmp123
	movq	%rcx, 32(%rsp)	 # tmp123,
	movl	$0, %r9d	 #,
	movq	%rax, %rcx	 # tmp122,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy	 #
.L546:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:465:       if (__n2)
	cmpq	$0, 56(%rbp)	 #, __n2
	je	.L547	 #,
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:466: 	this->_S_assign(this->_M_data() + __pos1, __n2, __c);
	movsbl	-36(%rbp), %ebx	 # __c, _7
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:466: 	this->_S_assign(this->_M_data() + __pos1, __n2, __c);
	movq	32(%rbp), %rax	 # this, tmp124
	movq	%rax, %rcx	 # tmp124,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:466: 	this->_S_assign(this->_M_data() + __pos1, __n2, __c);
	movq	40(%rbp), %rdx	 # __pos1, tmp125
	leaq	(%rax,%rdx), %rcx	 #, _9
	movq	56(%rbp), %rax	 # __n2, tmp126
	movl	%ebx, %r8d	 # _7,
	movq	%rax, %rdx	 # tmp126,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcyc	 #
.L547:
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:468:       this->_M_set_length(__new_size);
	movq	-16(%rbp), %rdx	 # __new_size, tmp127
	movq	32(%rbp), %rax	 # this, tmp128
	movq	%rax, %rcx	 # tmp128,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy	 #
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:469:       return *this;
	movq	32(%rbp), %rax	 # this, _32
 # C:/msys64/ucrt64/include/c++/13.2.0/bits/basic_string.tcc:470:     }
	addq	$104, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	_ZTVSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE
	.section	.rdata$_ZTVSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE,"dr"
	.linkonce same_size
	.align 8
_ZTVSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE:
	.quad	0
	.quad	_ZTISt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE
	.quad	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED1Ev
	.quad	_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED0Ev
	.quad	_ZNKSt25__codecvt_utf8_utf16_baseIwE6do_outER9_MbstatetPKwS4_RS4_PcS6_RS6_
	.quad	_ZNKSt25__codecvt_utf8_utf16_baseIwE10do_unshiftER9_MbstatetPcS3_RS3_
	.quad	_ZNKSt25__codecvt_utf8_utf16_baseIwE5do_inER9_MbstatetPKcS4_RS4_PwS6_RS6_
	.quad	_ZNKSt25__codecvt_utf8_utf16_baseIwE11do_encodingEv
	.quad	_ZNKSt25__codecvt_utf8_utf16_baseIwE16do_always_noconvEv
	.quad	_ZNKSt25__codecvt_utf8_utf16_baseIwE9do_lengthER9_MbstatetPKcS4_y
	.quad	_ZNKSt25__codecvt_utf8_utf16_baseIwE13do_max_lengthEv
	.globl	_ZTISt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE
	.section	.rdata$_ZTISt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE,"dr"
	.linkonce same_size
	.align 8
_ZTISt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE
 # <anonymous>:
	.quad	_ZTISt25__codecvt_utf8_utf16_baseIwE
	.globl	_ZTSSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE
	.section	.rdata$_ZTSSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE,"dr"
	.linkonce same_size
	.align 32
_ZTSSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE:
	.ascii "St18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE\0"
	.globl	_ZTINSt10filesystem7__cxx1116filesystem_errorE
	.section	.rdata$_ZTINSt10filesystem7__cxx1116filesystem_errorE,"dr"
	.linkonce same_size
	.align 8
_ZTINSt10filesystem7__cxx1116filesystem_errorE:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSNSt10filesystem7__cxx1116filesystem_errorE
 # <anonymous>:
	.quad	_ZTISt12system_error
	.globl	_ZTSNSt10filesystem7__cxx1116filesystem_errorE
	.section	.rdata$_ZTSNSt10filesystem7__cxx1116filesystem_errorE,"dr"
	.linkonce same_size
	.align 32
_ZTSNSt10filesystem7__cxx1116filesystem_errorE:
	.ascii "NSt10filesystem7__cxx1116filesystem_errorE\0"
	.globl	_ZTISt25__codecvt_utf8_utf16_baseIwE
	.section	.rdata$_ZTISt25__codecvt_utf8_utf16_baseIwE,"dr"
	.linkonce same_size
	.align 8
_ZTISt25__codecvt_utf8_utf16_baseIwE:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt25__codecvt_utf8_utf16_baseIwE
 # <anonymous>:
	.quad	_ZTISt7codecvtIwc9_MbstatetE
	.globl	_ZTSSt25__codecvt_utf8_utf16_baseIwE
	.section	.rdata$_ZTSSt25__codecvt_utf8_utf16_baseIwE,"dr"
	.linkonce same_size
	.align 32
_ZTSSt25__codecvt_utf8_utf16_baseIwE:
	.ascii "St25__codecvt_utf8_utf16_baseIwE\0"
	.globl	_ZTISt7codecvtIwc9_MbstatetE
	.section	.rdata$_ZTISt7codecvtIwc9_MbstatetE,"dr"
	.linkonce same_size
	.align 8
_ZTISt7codecvtIwc9_MbstatetE:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt7codecvtIwc9_MbstatetE
 # <anonymous>:
	.quad	_ZTISt23__codecvt_abstract_baseIwc9_MbstatetE
	.globl	_ZTSSt7codecvtIwc9_MbstatetE
	.section	.rdata$_ZTSSt7codecvtIwc9_MbstatetE,"dr"
	.linkonce same_size
	.align 16
_ZTSSt7codecvtIwc9_MbstatetE:
	.ascii "St7codecvtIwc9_MbstatetE\0"
	.globl	_ZTISt23__codecvt_abstract_baseIwc9_MbstatetE
	.section	.rdata$_ZTISt23__codecvt_abstract_baseIwc9_MbstatetE,"dr"
	.linkonce same_size
	.align 8
_ZTISt23__codecvt_abstract_baseIwc9_MbstatetE:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt23__codecvt_abstract_baseIwc9_MbstatetE
 # <anonymous>:
	.long	0
 # <anonymous>:
	.long	2
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTINSt6locale5facetE
 # <anonymous>:
	.quad	2
 # <anonymous>:
	.quad	_ZTISt12codecvt_base
 # <anonymous>:
	.quad	2
	.globl	_ZTSSt23__codecvt_abstract_baseIwc9_MbstatetE
	.section	.rdata$_ZTSSt23__codecvt_abstract_baseIwc9_MbstatetE,"dr"
	.linkonce same_size
	.align 32
_ZTSSt23__codecvt_abstract_baseIwc9_MbstatetE:
	.ascii "St23__codecvt_abstract_baseIwc9_MbstatetE\0"
	.globl	_ZTISt12system_error
	.section	.rdata$_ZTISt12system_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt12system_error:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt12system_error
 # <anonymous>:
	.quad	_ZTISt13runtime_error
	.globl	_ZTSSt12system_error
	.section	.rdata$_ZTSSt12system_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt12system_error:
	.ascii "St12system_error\0"
	.globl	_ZTISt13runtime_error
	.section	.rdata$_ZTISt13runtime_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt13runtime_error:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt13runtime_error
 # <anonymous>:
	.quad	_ZTISt9exception
	.globl	_ZTSSt13runtime_error
	.section	.rdata$_ZTSSt13runtime_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt13runtime_error:
	.ascii "St13runtime_error\0"
	.globl	_ZTINSt6locale5facetE
	.section	.rdata$_ZTINSt6locale5facetE,"dr"
	.linkonce same_size
	.align 8
_ZTINSt6locale5facetE:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSNSt6locale5facetE
	.globl	_ZTSNSt6locale5facetE
	.section	.rdata$_ZTSNSt6locale5facetE,"dr"
	.linkonce same_size
	.align 16
_ZTSNSt6locale5facetE:
	.ascii "NSt6locale5facetE\0"
	.globl	_ZTISt9exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTISt9exception:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt9exception
	.globl	_ZTSSt9exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9exception:
	.ascii "St9exception\0"
	.section	.text$_ZN6configD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6configD1Ev
	.def	_ZN6configD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6configD1Ev
_ZN6configD1Ev:
.LFB6548:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # this, this
 # src/main.cpp:24: struct config{
	movq	16(%rbp), %rax	 # this, _1
	movq	%rax, %rcx	 # _1,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev	 #
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB6549:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # src/main.cpp:30: config current_config;
	leaq	current_config(%rip), %rax	 #, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	_ZN6configD1Ev	 #
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0v;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0v
_Z41__static_initialization_and_destruction_0v:
.LFB6545:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # src/main.cpp:30: config current_config;
	leaq	current_config(%rip), %rax	 #, tmp82
	movq	%rax, %rcx	 # tmp82,
	call	_ZN6configC1Ev	 #
 # src/main.cpp:30: config current_config;
	leaq	__tcf_0(%rip), %rax	 #, tmp83
	movq	%rax, %rcx	 # tmp83,
	call	atexit	 #
 # src/main.cpp:66: }
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
_ZNSt8__detail14__destructibleISt13_Bit_iteratorEE:
	.byte	1
_ZNSt8__detail19__destructible_implISt13_Bit_iteratorEE:
	.byte	1
_ZNSt8__detail14__destructibleISt19_Bit_const_iteratorEE:
	.byte	1
_ZNSt8__detail19__destructible_implISt19_Bit_const_iteratorEE:
	.byte	1
_ZNSt8__detail14__destructibleIPwEE:
	.byte	1
_ZNSt8__detail19__destructible_implIPwEE:
	.byte	1
_ZNSt8__detail14__destructibleIiEE:
	.byte	1
_ZNSt8__detail19__destructible_implIiEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
_ZNSt8__detail14__destructibleIPcEE:
	.byte	1
_ZNSt8__detail19__destructible_implIPcEE:
	.byte	1
	.globl	_ZTISt12codecvt_base
	.section	.rdata$_ZTISt12codecvt_base,"dr"
	.linkonce same_size
	.align 8
_ZTISt12codecvt_base:
 # <anonymous>:
 # <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
 # <anonymous>:
	.quad	_ZTSSt12codecvt_base
	.globl	_ZTSSt12codecvt_base
	.section	.rdata$_ZTSSt12codecvt_base,"dr"
	.linkonce same_size
	.align 16
_ZTSSt12codecvt_base:
	.ascii "St12codecvt_base\0"
	.text
	.def	_GLOBAL__sub_I_current_config;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_current_config
_GLOBAL__sub_I_current_config:
.LFB6550:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # src/main.cpp:66: }
	call	_Z41__static_initialization_and_destruction_0v	 #
	nop	
	addq	$32, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_current_config
	.ident	"GCC: (Rev2, Built by MSYS2 project) 13.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt3_V216generic_categoryEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7codecvtIwc9_MbstatetEC2Ey;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt10filesystem7__cxx1116filesystem_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEaSEOS2_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt10filesystem12current_pathB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt14basic_ifstreamIcSt11char_traitsIcEE5rdbufEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPSt15basic_streambufIcSt11char_traitsIcEE;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE4viewEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5lexer9InterpretESt17basic_string_viewIcSt11char_traitsIcEE;	.scl	2;	.type	32;	.endef
	.def	_ZN6parser5ParseERSt6vectorIN5lexer5tokenESaIS2_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt25__codecvt_utf8_utf16_baseIwED2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcyPKcyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt25__codecvt_utf8_utf16_baseIwE6do_outER9_MbstatetPKwS4_RS4_PcS6_RS6_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt25__codecvt_utf8_utf16_baseIwE10do_unshiftER9_MbstatetPcS3_RS3_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt25__codecvt_utf8_utf16_baseIwE5do_inER9_MbstatetPKcS4_RS4_PwS6_RS6_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt25__codecvt_utf8_utf16_baseIwE11do_encodingEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt25__codecvt_utf8_utf16_baseIwE16do_always_noconvEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt25__codecvt_utf8_utf16_baseIwE9do_lengthER9_MbstatetPKcS4_y;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt25__codecvt_utf8_utf16_baseIwE13do_max_lengthEv;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZNSt10filesystem7__cxx1116filesystem_errorD1Ev, "dr"
	.globl	.refptr._ZNSt10filesystem7__cxx1116filesystem_errorD1Ev
	.linkonce	discard
.refptr._ZNSt10filesystem7__cxx1116filesystem_errorD1Ev:
	.quad	_ZNSt10filesystem7__cxx1116filesystem_errorD1Ev
	.section	.rdata$.refptr._ZTVSt25__codecvt_utf8_utf16_baseIwE, "dr"
	.globl	.refptr._ZTVSt25__codecvt_utf8_utf16_baseIwE
	.linkonce	discard
.refptr._ZTVSt25__codecvt_utf8_utf16_baseIwE:
	.quad	_ZTVSt25__codecvt_utf8_utf16_baseIwE
