/*
Programa:
Preencher um vetor com 3 nomes e mostrar quantas letras A e E tem nos 3 nome.
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
char nome[3][30],contA=0, contE=0, tam=0;
for(i=0;i<3;i++)
{
printf("\nDigite um nome: ");
gets(nome[i]);
}
for(i=0;i<3;i++)
{
tam=strlen(nome[i]);
for(j=0;j<tam;j++)
	{
	if(nome[i][j]=='A'||nome[i][j]=='a')
	contA++;
	if(nome[i][j]=='E' || nome[i][j]=='e')
	contE++;
}}
printf("\nHá %d letra(s) A nos nomes digite e %d letra(s) E.",contA,contE);
}

