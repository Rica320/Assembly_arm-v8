.text
.global histo
.type histo, "function"

histo: mov x7, 0
	   mov x9, -1
	   mov x8, x0
	   scvtf s7, x7
//loop:  mov x8, x0
	//   cmp x9, 21
	  // mov x10, 0
	   //b.eq fim
       // add x9, 1
loop: cbz x8, fimm
	   ldr q1, [x1], 16
	   sub x8,x8,16
	   mov w10, 0
	   SADDLV h11, v1.16b
	   scvtf s11, s11
	   // fcvt s11, h11
	   fadd s7,s7,s11
loop2: cmp w10 ,21
	   b.eq loop
       dup v2.16B, w10
	   CMEQ v2.16B , v1.16B, v2.16B
	   addv b4, v2.16B
	   neg d4, d4
	   ldr b6, [x2,x10]
	   //smov x6, v6.b[1]
	   //smov x4, v4.b[1]
	   //neg x4, x4
	   add d4,d6,d4
	   str b4, [x2,x10]
	   add w10, w10, 1
	   b loop2

fimm: scvtf s0, x0
	 fdiv s0, s7, s0
	 ret
