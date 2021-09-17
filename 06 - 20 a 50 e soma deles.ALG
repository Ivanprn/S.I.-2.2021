Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2021
Var
   // Seção de Declarações das variáveis
   a,suma,i,cont:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   Enquanto cont<10 faca
      a<-randi(31)+20
      Escreval (a)
      suma<-suma+a
      cont<-cont+1
   fimenquanto
   Escreval("O valor total da soma é",suma)

Fimalgoritmo