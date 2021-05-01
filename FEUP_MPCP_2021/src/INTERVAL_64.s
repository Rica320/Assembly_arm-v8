.text
.global INTERVAL_64
.type INTERVAL_64, "function"

// x1 -> a; x2 -> b

INTERVAL_64: mov x5, 0
loop: cbz x3, FIM
	  ldr x4, [x0], 8
      cmp x4,x1
      sub x3, x3, 1
      b.ge IN
      b loop
IN: cmp x4, x2
	cinc x5, x5, le
	b loop
FIM: mov x0, x5
	 ret
