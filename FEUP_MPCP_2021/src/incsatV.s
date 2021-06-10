.text
.global incsatV
.type incsatV, "function"

incsatV: cbz x1, fim
		 sub x1,x1,#4
		 ldr q1, [x0], 16
		 dup v2.4s, w2
		 sqadd v1.4s, v1.4s, v2.4s // saturação??
		 str q1, [x0, #-16]
		 b incsatV
fim: ret
