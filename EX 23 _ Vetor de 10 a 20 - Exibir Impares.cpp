/*
Programa: Preencher um vetor com os números 10 a 20, e depois mostrar os elementos ímpares do vetor
Autor: Ivan Paiva
Data da Criaçã: 31/05/2022
Data de Modificação: 31/05/2022
*/
#include<stdio.h>
#include<time.h>
#include <locale.h>
#include<stdlib.h>
#include<math.h>
main()
{
setlocale(LC_ALL,"portuguese");
srand(time(NULL));
int vet[11],i;
for (i=0;i<11;i++)
{
	//printf("\nInforme o %dº digito do vetor: ",i+1);
	//scanf("%d",&vet[i]);
	vet[i]=10+i;
}

printf("\n\nO vetor é: ");
for (i=0;i<11;i++)
{
	printf("\t %d ",vet[i]);
}

printf("\nO vetor ímpar é: ");
for (i=1;i<11;i=i+2)
{
	printf("\t %d ",vet[i]);
}

}
