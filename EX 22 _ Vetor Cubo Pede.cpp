/*
Programa: Preencher um vetor com 5 números inteiros, solicitados no teclado e mostrar outro vetor 
com o cubo dos números do primeiro vetor. 
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
int vet[5],i,vetcubo[5];
for (i=0;i<5;i++)
{
	printf("\nInforme o %dº digito do vetor: ",i+1);
	scanf("%d",&vet[i]);
	//vet[i]=rand()%10;
	vetcubo[i]=vet[i]*vet[i]*vet[i];
}
printf("\n\nO vetor gerado foi: ");
for (i=0;i<5;i++)
{
	printf("\t %d ",vet[i]);
}
printf("\nO vetor cúbico é: ");
for (i=0;i<5;i++)
{
	printf("\t %d ",vetcubo[i]);
}
}

