.text
.global Maxsumsubseq
.type Maxsumsubseq, "function"


Maxsumsubseq:   ldr w3, [x0], 4
		sub w1, w1, 1
		mov w7, w3 // last elm register
first_loop: cbz w1, fim
	    ldr w4, [x0], 4
	    cmp w4,w7
	    sub w1, w1, 1
	    mov w7, w4
	    b.le loop // w4 guarda o primeiro a baixo
	    add w3, w3, w4 //w3 guarda o maior
	    b first_loop
loop:   cbz w1, fim
	ldr w5, [x0], 4
	sub w1, w1, 1
	cmp w5, w7
	mov w7, w5
	b.le less
	add w4, w4, w5
	b loop

less: cmp w4, w3
      csel w3, w4, w3, gt
      mov w4, w5
      b loop

fim:
	cmp w4, w3
      csel w3, w4, w3, gt
	mov w0, w3
     ret
