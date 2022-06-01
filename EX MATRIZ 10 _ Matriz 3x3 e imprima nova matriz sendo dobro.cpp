/*
Programa: Criar um algoritmo que leia os elementos de uma matriz inteira de 3 x 3 e imprimir outra 
matriz multiplicando cada elemento da primeira matriz por 2. 
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
		printf("\t%d ",matx[i][j]);			
	}
printf("\n\n");
}
printf("\n\n");
printf("\n\nA matriz dobrada é:\n\n ");

for (i=0;i<3;i++)
{
	for (j=0;j<3;j++)
	{
		printf("\t%d ",matx[i][j]*2);
	}
	printf("\n\n");

}
}
