.text
.global MAX_W
.type MAX_W, "function"

MAX_W: mov w3,0
loop: cbz w1, FIM
	  ldr w4, [x0], 4
      cmp w4, w3
      csel w3, w4, w3,gt
      sub w1, w1, 1
      b loop
FIM: mov x0, x3
	 ret
