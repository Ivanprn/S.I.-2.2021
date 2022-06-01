/*
Programa: Preencher um vetor de 8 elementos inteiros. Mostrar o vetor e informar quantos números
são maior que 30, Somar estes números.
Somar todos os números
Autor: Ivan Paiva
Data da Criaçã: 30/05/2022
Data de Modificação: 30/05/2022
*/
#include<stdio.h>
#include<time.h>
#include <locale.h>
#include<stdlib.h>
main()
{
setlocale(LC_ALL,"portuguese");
srand(time(NULL));
int vet[8],i,numero,cont=0,soma=0,somatotal=0;
for (i=0;i<8;i++)
{
	numero=rand()%100;
	vet[i]=numero;
	somatotal=somatotal+numero;
	if (numero>30)
	{
		cont++;
		soma=soma+numero;
	}
}
printf("O vetor é:\n");
for (i=0;i<8;i++)
{
	printf(" %d ",vet[i]);
}
printf("\nForam encontrados %d valores acima de 30 e a soma deles é %d.",cont,soma);
printf("\nA soma de todos os números é: %d",somatotal);
}
