Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/10/2021
Var
   // Seção de Declarações das variáveis
   N,Numero,i:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Numero<-randi(101)
   Se Numero%2=0 entao
      N<-Numero
   fimse
   //escreva ("O numéro é: ",N)

   para i de 0 ate N faca
      se i%2=0 entao
      escreval (" ")
         escreval (i)
      fimse

   fimpara

Fimalgoritmo