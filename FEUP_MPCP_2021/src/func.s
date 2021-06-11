.data
.align 3 // estava aqui?
pi: .double 3.14159265359
.text
.global func
.type func, "function"

func: ldr d5, pi
	  fmul d0,d0,d5
	  mov x4,180
	  scvtf d4, x4
	  fdiv d0, d0 , d4
	  stp x29, x30, [sp,-16]!
	  bl cosseno
	  ldp x29, x30, [sp], 16
	  mov x5, 50
	  mov x6, 100
	  scvtf d5, x5
	  scvtf d6, x6
	  fmul d0, d0, d5
	  fadd d0, d0, d6
	  ret
