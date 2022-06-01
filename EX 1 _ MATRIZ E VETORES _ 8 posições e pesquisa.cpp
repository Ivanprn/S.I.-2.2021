/*
Programa: Preencher um vetor com n�meros inteiros(8unidades); solicitar um n�mero do teclado.
Pesquisar se esse n�mero existe no vetor. Se existir, imprimir em qual posi��o do vetor. Se n�o
existir, imprimir MSG que n�o existe
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
srand(time(NULL));
bool localizado=false;
int posicao;
int vet[8],numero,i;
printf ("O vetor �:\n");
for (i=0;i<8;i++)
{
	vet[i]=rand()%10;
	printf (" %d ",vet[i]);	
}

printf ("\nPor favor, informe o n�mero a pesquisar: ");
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
	printf("\nO numero existe no vetor e est� na posi��o: %d",posicao);
	}
	else
	{
		printf("\nO numero n�o existe no vetor.");
	}
}

//system("pause");
//return 0;

