Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 13/09/2021
Var
   // Seção de Declarações das variáveis
   prod,l1,tprod,lprod,l2,prodl1,prodl2,op:inteiro
   percentl1,percentl2,PercentSuperProd,Supprod,mprod,mprodl1,mprodl2:real
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
      //Escreval (op:2 ,"Produção:",prod," ", linha)
      Se prod>300 entao
         SUPprod<-Supprod+1
      fimse
   fimenquanto
   mprodl1<- prodl1/l1
   mprodl2<- prodl2/l2
   mprod<-tprod/op
   Percentl1<-(l1/op)*100
   Percentl2<-(l2/op)*100
   PercentSuperProd<-(Supprod/op)*100
   Escreval ("A media de produção geral é: ",mprod:5:2,". Da Linha 1 é: ",mprodl1:5:2,". Da Linha 2 é: ",mprodl2:5:2)
   Escreval ("O percentual produzido na Linha 1 é de: ",Percentl1:5:2,"%"," na Linha 2 é de: ",Percentl2:5:2,"%")
   Escreval ("O percentual de operadores que produziram mais de 300 peças foi de: ",PercentSuperProd:5:2,"%")
Fimalgoritmo