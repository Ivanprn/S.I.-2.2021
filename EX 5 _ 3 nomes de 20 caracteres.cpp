/*
Programa:)Preencher um vetor com 3 nomes com 20 letras no m�ximo cada. Imprimir os Nomes
Autor: Ivan Paiva
Data da Cria��: 30/05/2022
Data de Modifica��o: 30/05/2022
*/
#include<stdio.h>
#include <locale.h>
main()
{
  setlocale(LC_ALL, "portuguese");
  char nome[3][200];
  for (int i=0; i<3; i++)
  {
        printf("Digite o %d� nome: " , i+1);
        fgets(nome[i], sizeof(nome[i]), stdin);
  }
  for (int i =0; i<3; i++)
  {
        printf("\n%s\n", nome[i]);
  }
}
