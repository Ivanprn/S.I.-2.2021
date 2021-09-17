Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 13/09/2021
Var
   // Seção de Declarações das variáveis
   prod,l1,tprod,lprod,l2,prodl1,prodl2,op:inteiro
   mprod,mprodl1,mprodl2:real
   linha:caracter
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   op<-0
   Enquanto op<50 faca
      op<-op+1
      prod<-randi(231)+120
      tprod<-tprod+prod
      lprod<-randi (2)
      Se lprod=0 entao
         linha<- "Linha 1"
         l1<-l1+1
         prodl1<-prodl1+prod
      Senao
      linha<-"Linha 2"
         l2<-l2+1
         prodl2<-prodl2+prod
      fimse
      Escreval (op:2 ,"Produção:",prod," ", linha)
   fimenquanto
   mprodl1<- prodl1/l1
   mprodl2<- prodl2/l2
   mprod<-tprod/op
   Escreval ("A media de produção geral é: ",mprod:5:2,". Da Linha 1 é:",mprodl1:5:2,". Da Linha 2 é:",mprodl2:5:2)
Fimalgoritmo