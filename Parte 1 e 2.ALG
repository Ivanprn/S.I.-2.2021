Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 04/10/2021
Var
   // Seção de Declarações das variáveis
  cont,cod_cliente,t_cliente,link,Regiao,consumo_1,consumo_2,consumo_3:inteiro
  tipo_cliente,nome_regiao:caracter
  link_velocidade,total_consumo:inteiro
  media_mensal:real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   cod_cliente<-1000

   Escreval ("Cód.","   ","Link":4,"   ","Região":8,"  ","1º Mês","   ","2º Mês","   ","3º Mês","  ","Total","   ","Mensal")

   Enquanto cont<105 faca
      cod_cliente<-cod_cliente+1
      t_cliente<-randi(3)
      link<-randi(3)
      Regiao<-randi(3)
      consumo_1<-randi(16)+5
      consumo_2<-randi(16)+5
      consumo_3<-randi(16)+5

      se t_cliente=0 entao
         tipo_cliente<-"Residencial"
      senao
         tipo_cliente<-"Comercial"
      fimse
      se t_cliente=2 entao
         tipo_cliente<-"Rural"
      fimse
      se link=0 entao
         link_velocidade<-60
      senao
         link_velocidade<-150
      fimse
      se link = 2 entao
         link_velocidade<-300
      fimse
      se regiao=0 entao
         nome_regiao<-"Sana"
      senao
         nome_regiao<-"Frade"
      fimse
      se regiao = 2 entao
         nome_regiao<-"Glicério"
      fimse
      total_consumo<-consumo_1+consumo_2+consumo_3
      media_mensal<-total_consumo/3
      cont<-cont+1

      Escreval (cod_cliente,"   ",link_velocidade:3,"   ",nome_regiao:8,"     ",consumo_1:2,"       ",consumo_2:2,"      ",consumo_3:2,"     ",total_consumo,"    ",Media_Mensal:5:2)
   fimenquanto

Fimalgoritmo