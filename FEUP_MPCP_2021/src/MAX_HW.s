.text
.global MAX_HW
.type MAX_HW, "function"

MAX_HW: mov w3,-90 // um valor baixo
loop: cbz w1, FIM
	  ldrsh w4, [x0], 2
      cmp w4, w3
      csel w3, w4, w3,gt
      sub w1, w1, 1
      b loop
FIM: mov x0, x3
	 ret
