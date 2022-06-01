/*
Programa:
 Informar 3 nomes. Mostrar quantas letras "A" e "E", possuem
Autor: Ivan Paiva
Data da Criaçã: 30/05/2022
Data de Modificação: 30/05/2022
*/
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>
#include<locale.h>
main()
{
setlocale(LC_ALL,"portuguese");
int i, j;
char nome[3][30],contA[], contE=0, tam=0;
//char contA3=0, contE3=0,contA2=0, contE2=0;

for(i=0;i<3;i++)
{
printf("\nDigite um nome: ");
gets(nome[i]);
tam=strlen(nome[i]);
	for(j=0;j<tam;j++)
	{
	if(nome[i][j]=='A'||nome[i][j]=='a')
	cont[j];
	if(nome[i][j]=='E' || nome[i][j]=='e')
	contE++;
	}
	
	
	}
printf("\nNo nome %s Há %d letra(s) A nos nomes digite e %d letra(s) E.",nome[i],contA,contE);
}
}

