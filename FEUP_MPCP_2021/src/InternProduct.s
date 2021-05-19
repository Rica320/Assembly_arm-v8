.text
.global InternProduct
.type InternProduct, "function"

InternProduct: mov x7,0
loop: cbz x1,fim
	  sub x1,x1,1
	  ldr w4, [x0], 4
	  ldr w5, [x2], 4
	  smaddl x11, w5,w4, x11
	  asr x12,x11,31
	  cmp x12,0
	  b.eq No
	  cmp x12,-1
	  b.eq No
	  mov w0, 2147483647 //or -1 lsr w0, w0, 1
	  ret
No:
	 b loop
fim: mov w0,w7
	 ret
