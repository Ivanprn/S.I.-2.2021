/*
Programa: Preencher um vetor de 8 elementos inteiros. Mostrar o vetor e informar quantos n�meros
s�o maior que 30
Autor: Ivan Paiva
Data da Cria��: 30/05/2022
Data de Modifica��o: 30/05/2022
*/
#include<stdio.h>
#include<time.h>
#include <locale.h>
#include<stdlib.h>
main()
{
setlocale(LC_ALL,"portuguese");
srand(time(NULL));
int vet[8],i,numero,cont=0;
for (i=0;i<8;i++)
{
	numero=rand()%100;
	vet[i]=numero;
	if (numero>30)
	{
		cont++;
	}
}
printf("O vetor �:\n");
for (i=0;i<8;i++)
{
	printf(" %d ",vet[i]);
}
printf("\nForam encontrados %d valores acima de 30.",cont);

}

