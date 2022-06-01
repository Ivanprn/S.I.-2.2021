/*
Programa: Armazenar em Vetores, Nomes e Notas PR1 e PR2 de 6 alunos. Calcular a m�dia de cada 
aluno e imprimir aprovado se a m�dia for maior que 5 e reprovado se m�dia for menor ou 
igual a 5. OBS.: 2 vetores para as notas tipo float. 1 vetor para os nomes. 1 vetor para a m�dia. 
1 vetor para situa��o. 
Autor: Ivan Paiva
Data da Cria��: 31/05/2022
Data de Modifica��o: 31/05/2022
*/
#include <stdio.h>
#include <stdlib.h>
#include<time.h>
#include <string.h>
#include<locale.h>
#include<math.h>
main()
{
setlocale(LC_ALL,"portuguese");
int i;
char nome[6][200];
float nota1[6];
float nota2[6];
float media[6],valor;
char situacao[6][20];
printf("\tS . I . N . G . E\n\nBem Vindo Usu�rio. \nPressione enter para come�ar.");
for (i=0; i<6; i++)
{
    getchar();
    printf("\nDigite o nome do %d� aluno: " , i+1);
    fgets(nome[i], sizeof(nome[i]), stdin);
    printf("Digite a 1� nota do aluno %d: ", i+1);
    scanf("%f", &nota1[i]);
    printf("Digite a 2� nota do aluno %d: ", i+1);
    scanf("%f", &nota2[i]);     
}

for (i=0;i<6;i++)
{
	media[i]=(nota1[i]+nota2[i])/2;
	if (media[i]>5)
	strcpy(situacao[i]," Aprovado.\n");
	else
	strcpy(situacao[i]," Reprovado.\n");
}

for (i=0;i<6;i++)  
{
	printf("\nAluno: %s - Nota1: %.2f - Nota2: %.2f -",nome[i], nota1[i], nota2[i]);
	printf("Media: %.2f - Situa��o: %s \n", media[i],situacao[i]);
}

}
