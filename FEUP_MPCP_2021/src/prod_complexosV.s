.data
.align 2

vaa: .float 1.0, -1.0, 1.0, -1.0

.text
.global prod_complexosV
.type prod_complexosV, "function"

prod_complexosV: cbz x3, fim
				 sub x3, x3, 2
				 ldr q1, [x0],16
				 ldr q2, [x1], 16
				 fmul v5.4s, v1.4s, v2.4s // a.c ... b.d
				 rev64 v2.4s, v2.4s
				 fmul v4.4s, v1.4s, v2.4s // a.d ... bc
				 ldr q6, vaa
				 fmul v5.4s, v5.4s, v6.4s
				 faddp v3.4s, v5.4s, v4.4s
				 smov x5, v3.s[2]
				 ins v3.s[2], v3.s[1]
				 mov v3.s[1], w5
				 str q3, [x2], 16
				 b prod_complexosV

fim: ret
