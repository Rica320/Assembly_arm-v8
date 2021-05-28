.text
.global conta_intervalo
.type conta_intervalo , "function"

conta_intervalo: mov x7,0
loop: cbz x1,fim
	  ldr s3,[x0],4
	  fcmp s3,s0
	  sub x1,x1,1
	  b.lt loop
	  fcmp s3,s1
	  b.gt loop
	  add x7,x7,1
	  b loop
fim: mov x0, x7
	 ret
