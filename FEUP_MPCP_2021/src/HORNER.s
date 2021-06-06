.text
.global HORNER
.type HORNER, "function"

HORNER: mov x4, 0
		scvtf d4,x4
		sub x1, x1, 1
		ldr d5, [x0, x1, lsl #3]
		fmul d1, d5, d0
loop: cbz x1, fim
	  sub x1, x1, 1
      ldr d5, [x0, x1, lsl #3]
	  fadd d1, d1, d5
	  fmul d1, d1, d0
	  b loop

fim: fmov d0, d1
	 ret
