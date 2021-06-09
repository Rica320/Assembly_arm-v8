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

extern int OpMat(char nc, char nl, unsigned char *o, unsigned char *v);

// work 4

extern void closestCircle(unsigned int np, float *vp, unsigned int nc, double *vc, int *id);

// ex5 ficha 6

double prodint(float *X, float *Y, int n);

// ex6 ficha 6

long int conta_intervalo(float *V, long int n, float a, float b);

// work 5

extern float histo(unsigned int N, unsigned char *C, unsigned char *H);

// ex3

long int conta_ocorr(char *V, long int n, char val);

// ex 6

double normV(double *ptV, long int n);

// ex 3 ficha 6

void calc_poly_tab(float *tab);

// ex 4 ficha 6

double HORNER(double x, double *coefs, int n);

// ex 7 ficha 6

double rotF(double x);

// ex 8 ficha 6

double erfpos(double x);

// ex 9 ficha 6

double cosseno(double x);
double func(double graus);

// ex 1b) ficha 7

void altV(float *P, int n, float k);

// ex 1c) ficha 7 -papel

// ex 2 - caderno


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

	/*
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

	  res = OpMat(ncol, nlin, ops2, mat);
	  printf("Retorno de OpMat = %d\n", res);
	  for (i=0; i<nlin; i++)
	  {
	      for (j=0; j<ncol; j++)
	          printf("%*d", 4, mat[i*ncol+j]);
	      printf("\n");
	  }
	  printf("\n");
	 */

	// work 4

	/*
	unsigned int NP = 2;  // Nº pontos
	  unsigned int NC = 4;  // Nº circunferências
	  int ID[] = {-1, -1};
	  //Exemplo 1: VP1 e VC1
	  float VP1[] = {-1.0, 0.0, 2.7, 1.15};
	  double VC1[]= {-4.0, -1.0, 1.0, -3.89, 5.4, 0.51, 2.0, 1.0, 1.0, 3.0, 1.21, 0.9};
	  //Exemplo 2: VP2 e VC2
	  float VP2[] = {-3.0, 1.0, -3.0, -1.5};
	  double VC2[]= {0.0, -6.0, 6.0, -10.0, 0.0, 10.75, 0.0, 0.0, 5.0};
	  int i;

	  closestCircle(NP, VP1, NC, VC1, ID);
	  printf("Exemplo 1: ID = ");
	  for (i=0; i<NP; i++)
	    {printf("%d ", ID[i]); ID[i]=-1;}
	  printf("\n");
	  closestCircle(NP, VP2, 3, VC2, ID);
	  printf("Exemplo 2: ID = ");
	  for (i=0; i<NP; i++)
	    printf("%d ", ID[i]);
	  printf("\n");
	*/

	// ex5 ficha 6

	/*
	float a[] = {1.5, 2.5};
	float b[] = {0.0,1.0};
	double res = prodint(a,b,2);
	printf("Retorno = %f\n", res);
	*/

	// ex6 ficha 6

	/*
	float V[] ={2.5,2.3,3.4,6,2.6};
	long int res = conta_intervalo(V ,5, 2.5, 3.4);
	printf("Retorno = %d\n", res);
	*/

	// work5

/*
	unsigned char H[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  float res;
  int i;
  unsigned char C1[] = {20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20,
		  20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20,
		  20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20,
		  20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,
		  20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20,
		  20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,
		  20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,
		  20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20};
  unsigned char C2[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,1};

	//Exemplo 1
  res = histo(240, C1, H);
  printf("Exemplo 1:\n");
  for (i=0; i<21; i++)
	{printf("%d ---> %d\n", i, H[i]); H[i]=0;}
  printf("Média = %f\n\n", res);
	//Exemplo 2
  res = histo(32, C2, H);
  printf("Exemplo 2:\n");
  for (i=0; i<21; i++)
	printf("%d ---> %d\n", i, H[i]);
  printf("Média = %f\n\n", res);
*/

	// ex 3

	/*
	char VFSIMDFEX3[] = "frasedeteste21sd";
	long int NFSIMDFEX3 = 16;
	char VALFSIMDFEX3 = 'd';
	long int RESFSIMDFEX3 = 0;
	RESFSIMDFEX3 = conta_ocorr(VFSIMDFEX3, NFSIMDFEX3,VALFSIMDFEX3);
	printf("Elementos encontrados = %d\n", RESFSIMDFEX3);
    return EXIT_SUCCESS;*/

	// ex 6

	/*
	double ptVFSIMDFEX6[] = { 3.4, 5.3, -1.0, -2.1};
	 long int NFSIMDFEX6 = 4;
	 double RFSIMDFEX6 = 0.0;
	 RFSIMDFEX6 = normV(ptVFSIMDFEX6,NFSIMDFEX6);
	 printf("Norma do vector = %f\n", RFSIMDFEX6);*/

	// exercise 3 ficha 6

	/*
	float p[101];
	calc_poly_tab(p);

	for (int i=0; i<101; i=i+1) {
		printf("%f\n",p[i]);
	}*/

	// ex 4 ficha 6

	/*
	double a[] = {2.0,-2.0,1.0,5.0, -0.5};
	double res= HORNER(1.0,a,5);
	printf("%f\n",res);
	*/

	// ex 7 ficha 6

	/*
	double r;

	r= rotF(0.0);
	printf("%f\n",r);

	r= rotF(3.0);
	printf("%f\n",r);

	r= rotF(-5.0);
	printf("%f\n",r);
	*/

	// ex 8 ficha 6

	/*
	double r = erfpos(0.1);
	printf("%f\n",r);*/

	// ex 9 ficha 6

	/*
	for (double i=0; i <= 90; i=i+0.5){
		double r = func(i);
		printf("%f -> %f\n",i, r);
	}*/

	// ex 1b) ficha 7

	/*
	float a[] = {1.3,4.5,3.2,5.6};
	altV(a,4,5.0);
	for (int i=0; i<4; i++) {
		printf("%f, ",a[i]);
	}*/








	return EXIT_SUCCESS;
}
