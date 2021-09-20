Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : N1 - Teste
// Autor(a)    : Ivan Paiva
// Data atual  : 19/09/2021
Var
   // Seção de Declarações das variáveis
   cont,codg,cargo,idade,origem,Nota_Con_Espec,Nota_Con_Geral:inteiro
   cargo_pretendido,origem_loc:caracter
   media_idade,media_pontos,media_analista,media_auxiliar,media_super:real
   idade_t:inteiro
   cargo_super_nota,cargo_aux_nota,Nota_total,nota_total_t,cargo_analist_nota:real
   cargo_analist,cargo_aux,cargo_super:inteiro
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
      idade_t<-idade_t+idade
      nota_total_t<-nota_total_t+Nota_total
      Se cargo=0 entao
         cargo_pretendido<-"Analista"
         cargo_analist<-cargo_analist+1
         cargo_analist_nota<-cargo_analist_nota+nota_total
      fimse
      se cargo=1 entao
         cargo_pretendido<-"Auxiliar"
         cargo_aux<-cargo_aux+1
         cargo_aux_nota<-cargo_aux_nota+nota_total
      fimse
      Se cargo=2 entao
         cargo_pretendido<-"Supervisor"
         cargo_super<-cargo_super+1
         cargo_super_nota<-cargo_super_nota+nota_total
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
   media_idade<-idade_t/cont
   media_pontos<-nota_total_t/cont
   media_analista<-cargo_analist_nota/cargo_analist
   media_auxiliar<-cargo_aux_nota/cargo_aux
   media_super<-cargo_super_nota/cargo_super

   Escreval ("A média de idade do grupo é de:",media_idade:2)
   Escreval ("A média de pontos do grupo é de:",media_pontos:2:1)
   Escreval ("A média da pontuação dos candidatos a Analista é de:",media_analista:2:1)
   Escreval ("A média da pontuação dos candidatos a Auxiliar é de:",media_auxiliar:2:1)
   Escreval ("A média da pontuação dos candidatos a Supervisor é de:",media_super:2:1)

Fimalgoritmo