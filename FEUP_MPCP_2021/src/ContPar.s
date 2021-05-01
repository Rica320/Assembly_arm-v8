.text
.global ContPar
.type ContPar, "function"

ContPar: mov x3, 0
		 mov x4 , x1
INIT:
	  cbz x1, FIM
	  ldr x2, [x0]
	  and x2,x2,1
	  add x3,x3,x2
	  sub x1,x1, 1
	  add x0,x0,8
	  b INIT

FIM: sub x0, x4,x3
	 ret
