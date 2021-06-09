.data
.align 3
g1: .double 0.278393
g2: .double 0.230389
g3: .double 0.000972
g4: .double 0.078108

.text
.global erfpos
.type erfpos, "function"

erfpos: ldr d1, g1
	    ldr d2, g2
		ldr d3, g3
		ldr d4, g4
		fmov d5, d0
		fmul d1, d1, d0
		fmul d5, d0, d0
		fmul d2, d2, d5
		fmul d5, d0, d0
		fmul d5, d5, d0
		fmul d3, d3, d5
		fmul d5, d0, d0
		fmul d5, d5, d5
		fmul d4, d4, d5
		fadd d0, d1, d2
		fadd d0, d0, d3
		fadd d0, d0, d4
		mov x8, 1
		scvtf d8, x8
		fadd d0, d0, d8
		fdiv d0, d8, d0
		fsub d0, d8, d0
		ret
