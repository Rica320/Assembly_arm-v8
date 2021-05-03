#include <stdio.h>

#include <stdlib.h>

// work 1

extern int CheckABS( int numx, int tam, int *seq);

// exercise 1 (Ficha 4 – Instruções adicionais AArch64)

extern int SOMA_V(int *a, int n);

// exercise 2 (Ficha 4 – Instruções adicionais AArch64) a,b,c,d,e

extern int MAX_W(int *a, int n);
extern double MIN_DW(double *a, int n); // long maybe
extern short MAX_HW(short *a, int n);
extern long AVE_64(long *a, int n);
extern long INTERVAL_64(long *ar, long a, long b, int n);

// exercise 3

extern int SIZE_CHARS(char a[]);
extern int NCHAR(char a[], char n);


int main(void) {

	// Exercise/ evaluation 1
	/*
    int x = 20;

    int tamanho = 8;

    int ve[] = {7, -8, -23, 56, 20, -10, 0, 40};

    int res;


    res = CheckABS(x, tamanho, ve);

    printf("Foram modificados %d elementos da sequencia ve[]\n", res);

    printf("%p\n", ve);
    printf("%p\n", &ve[3]);
    for(int i= 0; i < 8; i = i+1) {
     	printf("%d \n", ve[i]);
     }

    // para o exemplo fornecido o output deve indicar que foram alterados 3 elementos


    // no final da execução a sequência ve[] = {7, -8, 0, 0, 20, -10, 0, 0} (podem verificar


    //o seu conteúdo durante a execução em modo debug)
     */

	// exercise 1 (Ficha 4 – Instruções adicionais AArch64)

	/*
	int dim = 5;
	int v[] = {3, -1, 8, 0, -3};  // Para testar
	int res;

	res = SOMA_V(v, dim);
	printf("Soma dos elementos = %d\n", res);
	*/

	// exercise 2 (Ficha 4 – Instruções adicionais AArch64)

	/*
	int dim = 7;
	int v[] = {3, -1, 8, 0, -3, 1000,-3000};  // Para testar
	//double db[] = {3, -1, 8, 0, -3, 1000,-3000};
	short hw[] = {5,6,4,2,9,-3,4};
	long la[] = {999,33,-44505,-9494,34344554,333,9};
	long val[] = {-9,-5,5,6,0,3,2};
	int res;
	//double res2;
	short res3;
	long res4;
	long res5;

	res = MAX_W(v,dim); // not so good this one
	// res2 = MIN_DW(db,dim); // long maybe
	res3 = MAX_HW(hw, dim);
	res4 = AVE_64(la,dim);
	res5 = INTERVAL_64(val, -9, 6,7);
	printf("máximo word= %d\n", res);
	// printf("mínimo dword= %f\n", res2);
	printf("máximo hword= %d\n", res3);
	printf("máximo lword= %ld\n", res4);
	printf("nums bet [a,b]= %ld\n", res5);
	*/

	// exercise 3

	char ar[] ="RICARDO";

	int size = SIZE_CHARS(ar);
	int nchar = NCHAR(ar,'R');

	printf("size = %d", size );
	printf("nchar = %d", nchar );


    return EXIT_SUCCESS;

}
