/*
Programa: )Preencher um vetor com 6 n�meros e mostra-los na tela. 
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
int vet[6],i;
for (i=0;i<6;i++)
{
	vet[i]=rand();
}
printf("O vetor gerado foi: ");
for (i=0;i<6;i++)
{
	printf(" %d ",vet[i]);
}
}

