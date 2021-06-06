.text
.global conta_ocorr
.type conta_ocorr, "function"

conta_ocorr: mov x4,0
conta_ocorr_1: cbz x1, fim
			 ldr q1, [x0],16
			 sub x1, x1, 16
			 dup v2.16b , w2
			 cmeq v1.16b, v1.16b, v2.16b
			 ADDV b3, v1.16b
			 smov x3, v3.b[0]
			 neg x3,x3
			 add x4, x4, x3
			 b conta_ocorr_1
fim: mov x0, x4
	 ret
