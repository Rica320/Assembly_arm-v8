.text
.global SOMA_V
.type SOMA_V, "function"

SOMA_V: mov x3, 0
loop: cbz x1, FIM
	  ldr w4,[x0], 4
	  ADD  X3, X3, W4, SXTW
	  sub x1, x1, 1
	  b loop
FIM: mov x0, x3
	 ret
