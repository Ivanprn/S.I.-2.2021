/*
Programa: Preencher um vetor com os números pares do número 2 a 20
Autor: Ivan Paiva
Data da Criaçã: 29/05/2022
Data de Modificação: 29/05/2022
*/
#include<stdio.h>
#include <locale.h>
#include <time.h>
#include <stdlib.h>
main()
{
setlocale(LC_ALL,"portuguese");
srand (time(NULL));
int vet[10],i=2;
int numero;
printf ("O vetor é:\n");
while (i<=20)
{
	vet[i]=i;	
	printf (" %d ",vet[i]);	
	i=i+2;
}

}

