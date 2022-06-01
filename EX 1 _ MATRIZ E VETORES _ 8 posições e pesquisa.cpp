/*
Programa: Preencher um vetor com números inteiros(8unidades); solicitar um número do teclado.
Pesquisar se esse número existe no vetor. Se existir, imprimir em qual posição do vetor. Se não
existir, imprimir MSG que não existe
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
srand(time(NULL));
bool localizado=false;
int posicao;
int vet[8],numero,i;
printf ("O vetor é:\n");
for (i=0;i<8;i++)
{
	vet[i]=rand()%10;
	printf (" %d ",vet[i]);	
}

printf ("\nPor favor, informe o número a pesquisar: ");
scanf("%d",&numero);

	
for (i=0;i<8;i++)
{
		
	if (numero==vet[i])
	{
		localizado=true;
		posicao=i+1;
	}
}
	if (localizado)
	{
	printf("\nO numero existe no vetor e está na posição: %d",posicao);
	}
	else
	{
		printf("\nO numero não existe no vetor.");
	}
}

//system("pause");
//return 0;

