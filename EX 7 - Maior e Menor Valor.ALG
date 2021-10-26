Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/10/2021
Var
   // Seção de Declarações das variáveis
   X,menor_valor,i,maior_valor:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
menor_valor<-100

   para i de 0 ate 9 faca
      i<-randi(101)

      Se menor_valor > i entao
         menor_valor<-i
      fimse
      Se maior_valor < i entao
         maior_valor<-i
      fimse
      //escreval (i,"   ",menor_valor,"   ",maior_valor)
   fimpara
   escreval("O menor valor é: ",menor_valor)
   escreval ("O maior valor é: ",maior_valor)
Fimalgoritmo