/*
Programa: Ler um vetor vet de 10 elementos e obter um vetor quadrado cujos componentes deste vetor s�o o quadrado dos respectivos componentes de vet.
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
int vet[10],i,vetquadrado[10];
for (i=0;i<10;i++)
{
	//printf("\nInforme o %d� digito do vetor: ",i+1);
	//scanf("%d",&vet[i]);
	vet[i]=rand()%10;
	vetquadrado[i]=vet[i]*vet[i];
	//printf("O cubo deste valor �: %d\n",vetcubo[i]);
}
printf("\n\nO vetor gerado foi: ");
for (i=0;i<10;i++)
{
	printf("\t %d ",vet[i]);
}
printf("\nO vetor quadrado �: ");
for (i=0;i<10;i++)
{
	printf("\t %d ",vetquadrado[i]);
}
}
