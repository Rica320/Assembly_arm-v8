.text
.global ajusteSIMD
.type ajusteSIMD, "function"

ajusteSIMD: mov x5,0
loop: cmp x5, x2
	  b.eq fim
	  ldr q1, [x0], 16
	  ldr q2, [x1], 16
	  fabs v2.4s, v2.4s
	  dup v5.4s, v0.s[0]
	  fmul v2.4s, v2.4s, v5.4s
	  fsub v1.4s, v1.4s, v2.4s
	  str q1, [x0,#-16]
	  add x5, x5 , 4
	  b loop
fim: ret
