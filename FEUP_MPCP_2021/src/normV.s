.text
.global normV
.type normV, "function"

normV: mov x8, 0
	   SCVTF d8, x8
loop: cbz x1, fim
	  ldr q1, [x0], 16
	  fmul v1.2d, v1.2d, v1.2d
	  faddp d2, v1.2d
	  fadd d8,d8, d2
	  sub x1,x1,2
	  b loop
fim: fsqrt d0,d8
	 ret
