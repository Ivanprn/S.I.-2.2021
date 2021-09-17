Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 31/08/2021
Var
   // Seção de Declarações das variáveis
   i,prox,num1,num2,N:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreva ("Quantos números que deseja da série de Fibonacci ? ")
   Leia (N)
   num1<-0
   num2<-1
   Escreval (num1,num2)
   i<-3
   Enquanto i<=N faca
      prox<-num1+num2
      Escreval (prox)
      num2<-num1
      num1<-prox
      i<-i+1
   fimenquanto

Fimalgoritmo