/*
Programa: Preencher um vetor com os n�meros pares do n�mero 2 a 20
Autor: Ivan Paiva
Data da Cria��: 29/05/2022
Data de Modifica��o: 29/05/2022
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
printf ("O vetor �:\n");
while (i<=20)
{
	vet[i]=i;	
	printf (" %d ",vet[i]);	
	i=i+2;
}

}

