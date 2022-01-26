
#include <stdio.h>

int RuotaElementiVettore(int V1[], unsigned int N);

unsigned int RestoDivisione(unsigned int dividendo) {
	return dividendo % 2;
}


void main() {

	int vettore1[] = { 22, 25, 18, 1,0 };
	int vettore1ris[] = { 22,100,18,4,0 };
	unsigned int N1 = 5;
	int i, ris;


	printf("vettore di input ");
	for (i = 0; i < N1; i++) printf("%d ", vettore1[i]);
	printf("\n");

	ris = RuotaElementiVettore(vettore1, N1);

	printf("vettore di output atteso: ");
	for (i = 0; i < N1; i++) printf("%d ", vettore1ris[i]);
	printf("\n");

	printf("vettore di output ");
	for (i = 0; i < N1; i++) printf("%d ", vettore1[i]);
	printf("\n");

	printf("valore di output atteso: 2\n");
	printf("valore di output: %d\n", ris);


}