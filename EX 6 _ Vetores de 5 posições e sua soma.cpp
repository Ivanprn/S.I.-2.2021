/*
Programa: Neste exercício temos dois vetores com 5 posições (0 a 4). Em cada vetor entraremos com
cinco números. Mostrar os números e depois somar números que pertençam a mesma posição
ou seja: [0]+[0],[1]+[1]

Autor: Ivan Paiva
Data da Criaçã: 30/05/2022
Data de Modificação: 30/05/2022
*/
#include<stdio.h>
#include <locale.h>
main()
{
setlocale(LC_ALL,"portuguese");
int vetor1[5],vetor2[5],i;
int vetorsoma[5],num;
for (i=0;i<5;i++)
	{
	printf("Digite o %dº valor para o primeiro vetor: ",i+1);
	scanf("%d",&num);
	vetor1[i]=num;
	}
printf("\n*\n");
for (i=0;i<5;i++)
	{
	printf("Digite o %dº valor para o segundo vetor: ",i+1);
	scanf("%d",&num);
	vetor2[i]=num;
	}
printf("\nO primeiro vetor é:");
	for (i=0;i<5;i++)
	{
		printf(" %d ",vetor1[i]);
	}
printf("\nO segundo vetor é:");
	for (i=0;i<5;i++)
	{
		printf(" %d ",vetor2[i]);
	}
printf("\nO soma destes vetores é:");
	for (i=0;i<5;i++)
	{
		printf(" %d ",vetor1[i]+vetor2[i]);
	}
}

