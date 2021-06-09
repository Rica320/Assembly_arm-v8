.data
ap: .int 1, 2, 24, 720, 40320, 3628800

.text
.global cosseno
.type cosseno, "function"

cosseno: ldr x1, =ap
		 fmov d5, d0
		 mov x2, 5
		 mov x4, 1
		 scvtf d4, x4
	   ldr w3, [x1,x2, lsl 2]
	   scvtf d2, x3
	   fdiv d2, d4, d2
	   fmul d0, d5, d5
	   fmul d2, d2, d0
	   sub x2, x2, 1
	   ldr w3, [x1,x2,lsl 2]
	   scvtf d3, x3
	   sub x2, x2, 1
	   fdiv d3, d4, d3
	   fsub d2, d3, d2
loop:  cbz x2, fim
	   fmul d0, d5, d5
	   fmul d2, d0, d2
	    ldr w3, [x1,x2,lsl 2]
	   scvtf d3, x3
	   sub x2, x2, 1
	   fdiv d3, d4,d3
	   fsub d2, d3, d2
	   b loop
fim: fmul d0, d5, d5
	 fmul d2, d0, d2
	 ldr w3, [x1]
	 scvtf d3, x3
	 fsub d0, d3, d2
	 ret
