Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/10/2021
Var
   // Seção de Declarações das variáveis
   soma_i,i,conta:inteiro
   media_i:real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   para i de 0 ate 29 faca
      i<-randi(41)-10
      soma_i<-i+soma_i
      conta<-conta+1
      //escreval (i,"  ",soma_i)
   fimpara
   media_i<-soma_i/conta
   escreval("A média é: ",media_i)
Fimalgoritmo