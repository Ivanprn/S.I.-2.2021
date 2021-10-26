Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/10/2021
Var
   // Seção de Declarações das variáveis
   cont,cod_cliente,tipo_cliente,vel_link,nome_regiao,consumo_internet_movel_Mes1,consumo_internet_movel_Mes2,consumo_internet_movel_Mes3,consumo_total:inteiro
   cliente,link,regiao:caracter
   media_consumo:real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   cod_cliente<-1000
 Escreval ("Cod. Tipo        Link    Região  1ºMês  2ºMês  3ºMês  Total      Mensal")
   Enquanto cont<10 faca
      cod_cliente<-cod_cliente+1
      tipo_cliente<-randi(3)+1
      vel_link<-randi(3)+1
      nome_regiao<-randi(3)+1
      consumo_internet_movel_Mes1<- randi(16)+5
      consumo_internet_movel_Mes2<- randi(16)+5
      consumo_internet_movel_Mes3<- randi(16)+5
      consumo_total<-consumo_internet_movel_Mes1+consumo_internet_movel_Mes2+consumo_internet_movel_Mes3
      media_consumo<-consumo_total/3
      // ([X-y]+1)+X
      // sendo X o menor valor e Y o maior valor
      se tipo_cliente = 1 entao
         cliente<-"Residencial"
      fimse
      se tipo_cliente=2 entao
         cliente<-"Comercial"
      fimse
      se tipo_cliente=3 entao
         cliente<-"Rural"
      fimse

      se vel_link = 1 entao
         link<-"60mb"
      fimse
      se vel_link = 2 entao
         link<-"150mb"
      fimse
      se vel_link=3 entao
         link<-"300mb"
      fimse

      se nome_regiao = 1 entao
         regiao<-"Sana"
      fimse
      se nome_regiao= 2 entao
         regiao<-"Frade"
      fimse
      se nome_regiao = 3 entao
         regiao<-"Glicério"
      fimse

      Escreval(cod_cliente:4," ",cliente:11," ",link:5,"   ",regiao:8,"   ",consumo_internet_movel_Mes1:2,"     ",consumo_internet_movel_Mes2:2,"     ",consumo_internet_movel_Mes3:2,"    ",consumo_total:2,"      ",media_consumo:4:2)

      cont<-cont+1
   fimenquanto

Fimalgoritmo