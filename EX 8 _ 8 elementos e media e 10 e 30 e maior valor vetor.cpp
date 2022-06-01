/*
Programa:Preencher um vetor de 8 elementos inteiros. Mostrar o vetor na horizontal com\t. Calcular a
m�dia do vetor. Mostrar quantos n�meros s�o m�ltiplos de 5. Quantos n�meros s�o maiores
que 10 e menores que 30. Qual o maior n�mero do vetor. 
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
int vet[8],i,numero,cont=0,soma=0,somatotal=0;
int mult5,maior10,maiornum=0;
float mediavetor;
for (i=0;i<8;i++)
{
	numero=rand()%100;
	vet[i]=numero;
	somatotal=somatotal+numero;
	if (numero%5==0)
	{
		mult5++;
	}
	if (numero>10 && numero<30)
	{
		maior10++;
	}
	if (numero>maiornum)
	{
		maiornum=numero;
	}
	
}
printf("O vetor �:\n");
for (i=0;i<8;i++)
{
	printf("\t %d ",vet[i]);
}
mediavetor=somatotal/8;
printf("\nA media do vetor �: %.2f",mediavetor);
printf("\nForam encontrados %d valores multiplos de 5.",mult5);
printf("\nForam encontrados %d valores entre 10 e 30.",maior10);
printf("\nO maior n�mero do vetor �: %d",maiornum);

}
