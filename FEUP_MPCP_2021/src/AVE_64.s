.text
.global AVE_64
.type AVE_64, "function"

AVE_64: mov x3, 0
		mov x5, x1
loop: cbz x1, FIM
	  ldr x4, [x0], 8
      add x3, x3, x4
      sub x1, x1, 1
      b loop
FIM: SDIV x0, x3, x5
	 ret
