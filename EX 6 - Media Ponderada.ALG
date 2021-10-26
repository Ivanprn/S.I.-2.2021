Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/10/2021
Var
   // Seção de Declarações das variáveis
   valor,i,soma_valor,soma_peso,peso:inteiro
   media_ponderada:real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   para i de 0 ate 4 faca
      i<-randi(11)
      peso<-randi(3)+1
      valor<-i*peso
      soma_valor<-valor+soma_valor
      soma_peso<-peso+soma_peso
      //escreval (i,"   ",peso,"   ",valor,"   ",soma_valor,"   ",soma_peso)
   fimpara
   media_ponderada<-soma_valor/soma_peso
   escreval("A média ponderada é: ",media_ponderada:4:2)
Fimalgoritmo