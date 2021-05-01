.text
.global MIN_DW
.type MIN_DW, "function"

MIN_DW: mov x3, 9999
lOOP: cbz x1, fim
	  ldr x4, [x0], 8
      cmp x4, x3
      csel x3, x4, x3,lt
      sub x1, x1, 1
      b lOOP
fim: mov x0, x3
	 ret
