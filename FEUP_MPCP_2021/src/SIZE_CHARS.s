.text
.global SIZE_CHARS
.type SIZE_CHARS, "function"

SIZE_CHARS: mov w4,0
loop: ldrb w1, [x0], 1
	  cbz w1, FIM
	  add w4,w4,1
	  b loop
FIM: mov w0,w4
	 ret

