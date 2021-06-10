.text
.global conta_inf
.type conta_inf, "function"

conta_inf: mov x2, 0
		mov x6, x1
loop: cbz x1, fim
	  ldr q1, [x0], 16
	  sub x1, x1, 4
	  dup v2.4s, v0.s[0]
	  fcmge v1.4s, v1.4s, v2.4s
	  addv s1, v1.4s
	  smov x3, v1.s[0]
	  neg x3, x3
	  add x2, x2, x3
	  b loop
fim: mov x0, x2
	 sub x0, x6, x0
	 ret
