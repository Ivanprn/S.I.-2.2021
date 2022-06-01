/*
Programa: Preencher um vetor com os números pares do número 2 a 20.
Preencher um vetor com os números de 10 a 19. Somar os vetores acima
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
srand (time(NULL));
int vet[10],i,n=0;
int vet2[10];
int vetsoma[10];

for(i=0;i<10;i++){
vet[i]=n+2;
n=n+2;	
}
for (i=0;i<10;i++){	
vet2[i]=i+10;	
}
for(i=0;i<10;i++){
vetsoma[i]=vet[i]+vet2[i];
}
printf("O primeiro vetor é:\n");
for(i=0;i<10;i++){
printf(" %d ",vet[i]);
}
printf("\nO segundo vetor é:\n");
for(i=0;i<10;i++){
printf(" %d ",vet2[i]);
}
printf("\nA somar dos vetores é:\n");
for(i=0;i<10;i++){
printf(" %d ",vetsoma[i]);
}
}

