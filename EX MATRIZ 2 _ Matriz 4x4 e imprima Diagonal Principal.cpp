/*
Programa: Criar um algoritmo que leia os elementos de uma matriz inteira de 4 x 4 e imprimir os elementos da diagonal principal.
Autor: Ivan Paiva
Data da Criaçã: 31/05/2022
Data de Modificação: 31/05/2022
*/
#include<stdio.h>
#include<time.h>
#include <locale.h>
#include<stdlib.h>
main()
{
setlocale(LC_ALL,"portuguese");
srand(time(NULL));
int matx[4][4],i,j;
for (i=0;i<4;i++)
{
 	for (j=0;j<4;j++)
	{
	matx[i][j]=rand()%10;
	}

}

printf("\n\nA matriz gerada foi:\n\n ");

for (i=0;i<4;i++)
{
	for (j=0;j<4;j++)
	{
		if(i==j)
		printf("\t%d ",matx[i][j]);
		else
		printf("\t0");
	}
	printf("\n\n");

}
}
