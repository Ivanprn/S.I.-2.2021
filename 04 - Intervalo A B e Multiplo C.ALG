Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 31/08/2021
Var
   // Seção de Declarações das variáveis
   a,b,c,cont,contc:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreva ("Digite o valor base da busca: ")
   leia (a)
   Escreva ("Digite o valor máximo da busca: ")
   leia (b)
   Escreva ("Qual será o valor de referência para os múltiplos? ")
   leia (c)
   cont<-a
   enquanto cont < b faca
      cont<-cont+1
      Se (cont%c=0) entao
         contc<-contc+1
      fimse
   fimenquanto
   Escreval ("No invervalo entre",a," e ",b," temos ",contc," multiplos de",c)
Fimalgoritmo