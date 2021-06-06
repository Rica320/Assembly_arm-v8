.data
a: .float 1.5
b: .float -12.5
c: .float 7.0
inc: .float 0.1

.text
.global calc_poly_tab
.type calc_poly_tab, "function"


calc_poly_tab: mov x5, 101
			   mov x1, 0
			   scvtf s1, x1
			   ldr s5, a
			   ldr s6, b
			   ldr s7, c
			   ldr s8, inc
loop: cbz x5, fim
	  fmov s2, s1
	  fmul s2, s2, s2
	  fmul s2, s1, s2
	  fmul s2, s2, s5
	  fmul s3, s6, s1
	  fadd s2 ,s2, s3
	  fadd s2,s2,s7
	  str s2, [x0], 4
	  sub x5,x5,1
	  fadd s1, s1, s8
	  b loop

fim: ret
