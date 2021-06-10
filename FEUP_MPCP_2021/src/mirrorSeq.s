.text
.global mirrorSeq
.type mirrorSeq, "function"

mirrorSeq:  cbz x1, fim
			ldr q1, [x0], 16
			sub x1, x1, 2
			rev64 v1.4s, v1.4s
			str q1, [x0, #-16]
			b mirrorSeq
fim: ret
