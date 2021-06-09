.data
.align 3
pi: .double 3.14159265359

.text
.global rotF
.type rotF, "function"

rotF: fcmp d0, 0.0
	  b.lt less
	  b greater
greater: ldr d1, pi
	 	 fadd d0, d0, d1
	  	 fmov d1, d0
	  	 fmul d0,d0,d0
	  	 fmul d0,d0,d1
	  	 fsqrt d0,d0
	  	 ret
less: mov x1, 1
	  scvtf d1, x1
	  mov x2, 4
	  scvtf d2, x2
	  fsub d0, d2, d0
	  fsqrt d0,d0
	  fdiv d0 , d1, d0
	  ret
