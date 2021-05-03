.text
.global NCHAR
.type NCHAR, "function"

NCHAR: mov w4,0
loop: ldrb w2, [x0], 1
	  cbz w2, FIM
	  cmp w2, w1
	  CSET w3, eq
	  add w4,w4,w3
	  b loop
FIM: mov w0, w4
	 ret
