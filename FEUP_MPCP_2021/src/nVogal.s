
.data
.global nome
nome:
	.string  "AEIOUaeiou"
.text
.global nVogal
.type nVogal, "function"
// refazer

nVogal:
	mov x4, 0
	mov x5, x0
main: ldr x1,nome
		ldrb w2, [x1], 1
		mov x0, x5
		cbz w2, FIM
loop:	ldrb w3, [x0], 1
		cbz w3 , main
		cmp w3,w2
		b.ne loop
		add x4,x4,1
		b loop

FIM: mov x0, x4
	 ret

