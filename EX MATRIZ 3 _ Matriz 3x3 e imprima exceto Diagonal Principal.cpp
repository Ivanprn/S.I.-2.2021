/*
Programa: Criar um algoritmo que leia os elementos de uma matriz inteira de 3 x 3 e imprimir todos os 
elementos, exceto os elementos da diagonal principal. 
Autor: Ivan Paiva
Data da Cria��: 31/05/2022
Data de Modifica��o: 31/05/2022
*/
#include<stdio.h>
#include<time.h>
#include <locale.h>
#include<stdlib.h>
main()
{
setlocale(LC_ALL,"portuguese");
srand(time(NULL));
int matx[3][3],i,j;
for (i=0;i<3;i++)
{
 	for (j=0;j<3;j++)
	{
	matx[i][j]=rand()%10;
	}

}

printf("\n\nA matriz gerada foi:\n\n ");

for (i=0;i<3;i++)
{
	for (j=0;j<3;j++)
	{
		if(i!=j)
		printf("\t%d ",matx[i][j]);
		else
		printf("\t0");
	}
	printf("\n\n");

}
}
