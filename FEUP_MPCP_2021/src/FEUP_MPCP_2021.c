#include <stdio.h>

#include <stdlib.h>

// work 1

// extern int CheckABS( int numx, int tam, int *seq);

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
//extern unsigned int nVogal(char a[]);


//work 2

extern unsigned int SelectedUpperCase(char *seq_B, char *seq_A);

// exercise 11 e)

extern unsigned int InternProduct(int *seq_a, unsigned int dim, int *seq_b );

// work 3

extern int OpMat(char nc, char nl, unsigned char *v, unsigned char *o);



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

	// exercise 3 a,b,c,d ...


	/*
	char ar[] ="RICARDO";

	int size = SIZE_CHARS(ar);
	int nchar = NCHAR(ar,'R');
	//int nvogal = nVogal(ar);

	printf("size = %d\n", size );
	printf("nchar = %d\n", nchar);
	//printf("nvogal = %d\n", nvogal);
	*/


	// work 2

	//char seq_A[] = "Esta frase deveráy ter alguns dos seus carateres alterados para maiúscula!";
	//char seq_B[] = "afuily";

	//unsigned int res = SelectedUpperCase(seq_B, seq_A);

	//printf("Foram modificados %d carateres de seq_A. A sequência A é agora:\n", res);
    //printf("%s\n", seq_A);

	// exercise 11 e)

	/*
	int a[] = {1,4,2};
	int b[] = {2,-1,2147483646};
	int dim = 3;
	int res;
	res = InternProduct(a,3,b);

	printf("InternPro. = %d ", res);
	*/

	// work 3

	unsigned char ncol = 4;  // Nº colunas da matriz
	  unsigned char nlin = 3;  // Nº linhas da matriz
	  unsigned char mat[] = { 29, 127,  11, 255,
	                         100,   5, 200,   0,
	                           1,  29,   0, 128 };
	  unsigned char ops[] = {'L', 1, 33, 'C', 2, 99, 'X', 'B', 'C', 0, 111};   // Exemplo a)
	  unsigned char ops3[] = {'B','O', 255, 'X'};   // Exemplo a)
	  unsigned char ops2[]= {'L', 1, 33, 'C', 2, 99, 'O', 33, 'B', 'C', 0, 123, 'O', 255, 'P', 2, 0, 26, 'X'};   // Exemplo b)
	  int  res;
	  char i, j;

	  res = OpMat(ncol, nlin, mat, ops2);
	  printf("Retorno de OpMat = %d\n", res);
	  for (i=0; i<nlin; i++)
	  {
	      for (j=0; j<ncol; j++)
	          printf("%*d", 4, mat[i*ncol+j]);
	      printf("\n");
	  }
	  printf("\n");




    return EXIT_SUCCESS;

}
