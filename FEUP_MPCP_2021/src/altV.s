.text
.global altV
.type altV, "function"

altV: dup v2.4s, v0.s[0]
loop: cbz x1, fim
	  ldr q1, [x0], #16
	  fmul v1.4s, v1.4s, v2.4s
	  str q1,[x0, #-16]
	  sub x1, x1, 4
fim: ret
