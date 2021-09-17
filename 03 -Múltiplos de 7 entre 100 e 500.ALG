Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 31/08/2021
Var
   // Seção de Declarações das variáveis
   cont,cont7:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-100
   enquanto cont<500 faca
      cont<-cont+1
      se (cont%7=0) entao
         cont7<-cont7+1
      fimse
   fimenquanto
   Escreval ("Os números múltiplos de 7 entre 100 e 500 são:",cont7)
Fimalgoritmo