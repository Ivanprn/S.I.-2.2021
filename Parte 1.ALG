Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : N1 - Teste
// Autor(a)    : Ivan Paiva
// Data atual  : 19/09/2021
Var
   // Seção de Declarações das variáveis
   cont,codg,cargo,idade,origem,Nota_Con_Espec,Nota_Con_Geral:inteiro
   Nota_total:real
   cargo_pretendido,origem_loc:caracter

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   Escreval ("Código","  ","Cargo","     ","Idade","  ","Origem","    ","CE","  ","CG","   ","Total")
   Enquanto cont<10 faca
      codg<-randi(151)+1001
      cargo<-randi(3)
      idade<-randi(48)+18
      origem<-randi(3)
      Nota_Con_Espec<-randi(37)+24
      Nota_Con_Geral<-randi(25)+16
      Nota_total<-(Nota_Con_Geral+(Nota_Con_Espec*2))/1.6
      Se cargo=0 entao
         cargo_pretendido<-"Analista"
      fimse
      se cargo=1 entao
         cargo_pretendido<-"Auxiliar"
      fimse
      Se cargo=2 entao
         cargo_pretendido<-"Supervisor"
      fimse
      Se origem=0 entao
         origem_loc<-"Macaé"
      fimse
      Se origem=1 entao
         origem_loc<-"RJ"
      fimse
      Se origem=2 entao
         origem_loc<-"Brasil"
      fimse

      Escreval (codg:4,"    ",cargo_pretendido:10,"  ",idade:2,"    ",origem_loc:7,"  ",Nota_Con_Espec:2,"  ",Nota_Con_Geral:2,"    ",Nota_total:2:1)
      cont<-cont+1
   fimenquanto


Fimalgoritmo