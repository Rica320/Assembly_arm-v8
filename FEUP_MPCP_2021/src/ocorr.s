.text
.global ocorr
.type ocorr, "function"

ocorr: mov x9,100
	   mov x10,200
	   mov x12,200
	   mov x13,200
	   mov x14,200
	   mov x19,200
	   mov x20,200
	   mov x21,200
	   mov x22,200
	   mov x23, 200
	   mov w3, 0
Oloop: cbz w2,fim
	  ldrb w5, [x1],1
	  cmp w5, w0
	  cinc w3, w3, eq
	  sub w2, w2, 1
	  b Oloop
fim: mov w0, w3
	 mov w5, -1
	 cmp w0, 0
	 csel w0, w5, w0, eq
	 ret
