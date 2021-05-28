.text
.global OpMat
.type OpMat, "function"

OpMat:	STP  X19, x20, [SP, #-16]!
	    STP  X21, x22, [SP, #-16]!
	    stp x29,x30,[sp,-16]!
		mov x29,sp
		mov x19, x0 //NCOL
		mov x20, x1 //NLIN
		mov x21, x3 // endereco base da mat
		mov x22, x2
		mov w23, -1 // para guardar valor de retorno de O
loop:
		ldrb w9, [x22], 1
		cmp w9, 88 // X
		b.eq Fim
		cmp w9, 76 // L
		b.eq L
		cmp w9, 67 // C
		b.eq C
		cmp w9, 80 // P
		b.eq P
		cmp w9, 66 // B
		b.eq B
		cmp w9, 79 // O
		b.eq ocorr1

Fim: ldp x29,x30,[sp],16
	 LDP  x21, x22, [SP], #16
     LDP  X19, x20, [SP], #16
	 mov w0, w23
	 ret

L: ldrb w10, [x22], 1
   ldrb w11, [x22], 1
   mul x12, x10, x19
   add x12, x21, x12// como é so um byte
   mov x10, x19
Lloop: cbz x10, loop
	   strb w11, [x12], 1
	   sub x10, x10,1
	   b Lloop

C: ldrb w10, [x22], 1
   ldrb w11, [x22], 1
   add x12, x21, x10
   mov x10, x20
Cloop: cbz x10, loop
	   strb w11, [x12]
	   add x12,x12,x19
	   sub x10, x10,1
	   b Cloop
P: ldrb w10, [x22], 1 //col
   ldrb w11, [x22], 1 // lin
   ldrb w12, [x22], 1 // n
   mul x13, x11, x19
   add x13, x13, x10
   add x13, x13, x21
   strb w12, [x13]
   b loop
B:  mul x10, x19, x20
	mov x12, x21
	mov w13, 1
	mov w14, 0 //not using wzr
Bloop: cbz x10, loop
	   ldrb w11, [x12]
	   ands w11, w11, w13, lsl #7
	   csinv w11, w14, w14, eq
	   strb w11, [x12], 1
	   sub x10, x10,1
	   b Bloop
ocorr1: ldrb w0, [x22],1
		mov x1, x21
	    mul w2, w19, w20
	    STP  X19, x20, [SP, #-16]!
	    STP  X21, x22, [SP, #-16]!
	    bl ocorr // adicionar ao resultado e mover para w0 o valor a proc etc
	    mov w23, w0
	    LDP  x21, x22, [SP], #16
	    LDP  X19, x20, [SP], #16
	    b loop
