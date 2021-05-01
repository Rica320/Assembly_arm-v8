.text
.global SOMA
.type SOMA, "function"

SOMA: mov X0, 5
	  b FIM
	  ret
FIM: mov X0 , 10
	 ret

