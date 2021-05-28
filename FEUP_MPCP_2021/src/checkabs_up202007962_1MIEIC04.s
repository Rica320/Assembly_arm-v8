.text
.global CheckABS
.type CheckABS, "function"

CheckABS: mov x4, 0
Loop: cbz x1, FIM
	  ldrsw x7 , [x2]
	  cmp x7 , 0
	  CSNEG x7, x7, x7, gt
	  cmp x7, x0
	  b.ls NEXT
	  str wzr, [x2]
	  add x4, x4, 1
NEXT: add x2, x2, 4
	  sub x1, x1, 1
	  b Loop
FIM: mov x0, x4
	 ret
