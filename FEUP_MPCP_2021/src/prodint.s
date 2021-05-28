.text
.global prodint
.type prodint , "function"

prodint: mov w7, 0
		 ucvtf d7, w7
loop: cbz x2,fim
      ldr s0, [x0],4
      ldr s1, [x1],4
      fmul s0, s0, s1
      fcvt d0,s0
      fadd d7,d0,d7
      sub x2,x2,1
      b loop
fim:  fmov d0, d7
      ret
