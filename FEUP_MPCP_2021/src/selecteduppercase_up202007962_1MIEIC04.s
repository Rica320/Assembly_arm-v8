.text
.global SelectedUpperCase
.type SelectedUpperCase, "function"

SelectedUpperCase: mov w7 ,0
				   mov x9, x1
mainLoop: ldrb w2, [x0], 1
		  mov x1, x9
		  cbz w2, FIM
seq_a_loop: ldrb w3, [x1], 1
			cbz w3, mainLoop
			cmp w3, w2
			b.ne seq_a_loop
			sub w3,w3,32
			strb w3, [x1,-1]
			add w7,w7,1
			b seq_a_loop
FIM: mov w0, w7
	 ret
