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
   consumo_t,cont_sana,cont_frade,cont_glic:inteiro
   consumo_t_frade,consumo_t_glic,consumo_t_sana:inteiro
   m_consumo_sana,m_consumo_frade,m_consumo_glic:real
   link_300mb,link_60mb,link_150mb:inteiro
   percent_link60mb,percent_link150mb,percent_link300mb:real
   maior_consumo,cod_maior_consumo:inteiro
   menor_consumo,cod_menor_consumo:inteiro
   percent_link60_sana,percent_link150_sana,percent_link300_sana:real
   link60_sana,link150_sana,link300_sana:inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   cod_cliente<-1000
   maior_consumo<-0
   menor_consumo<-60
   Escreval ("Cód.","   ","Link":4,"   ","Região":8,"  ","1º Mês","   ","2º Mês","   ","3º Mês","  ","Total","   ","Mensal")

   Enquanto cont<105 faca
      cod_cliente<-cod_cliente+1
      t_cliente<-randi(3)
      link<-randi(3)
      Regiao<-randi(3)
      consumo_1<-randi(16)+5
      consumo_2<-randi(16)+5
      consumo_3<-randi(16)+5
      consumo_t<-consumo_1+consumo_2+consumo_3
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
         link_60mb<-link_60mb+1
      fimse
      se link = 1 entao
         link_velocidade<-150
         link_150mb<-link_150mb+1
      fimse
      se link = 2 entao
         link_velocidade<-300
         link_300mb<-link_300mb+1
      fimse
      se regiao=0 entao
         nome_regiao<-"Sana"
         cont_sana<-cont_sana+1
         consumo_t_sana<-consumo_t_sana+consumo_t
         se link = 0 entao
            link60_sana<-link60_sana+1
         fimse
         se link = 1 entao
            link150_sana<-link150_sana+1
         fimse
         se link = 2 entao
            link300_sana<-link300_sana+1
         fimse
      fimse
      Se regiao = 1 entao
         nome_regiao<-"Frade"
         cont_frade<-cont_frade+1
         consumo_t_frade<-consumo_t_frade+consumo_t
      fimse
      se regiao = 2 entao
         nome_regiao<-"Glicério"
         cont_glic<-cont_glic+1
         consumo_t_glic<-consumo_t_glic+consumo_t
      fimse
      total_consumo<-consumo_1+consumo_2+consumo_3
      media_mensal<-total_consumo/3
      cont<-cont+1

      se maior_consumo<total_consumo entao
         maior_consumo<-total_consumo
         cod_maior_consumo<-cod_cliente
      fimse

      se menor_consumo>total_consumo entao
         menor_consumo<-total_consumo
         cod_menor_consumo<-cod_cliente
      fimse


      Escreval (cod_cliente,"   ",link_velocidade:3,"   ",nome_regiao:8,"     ",consumo_1:2,"       ",consumo_2:2,"      ",consumo_3:2,"     ",total_consumo,"    ",Media_Mensal:5:2)
   fimenquanto
   m_consumo_sana<-consumo_t_sana/cont_sana
   m_consumo_frade<-consumo_t_frade/cont_frade
   m_consumo_glic<-consumo_t_glic/cont_glic
   percent_link60mb<-(link_60mb/cont)*100
   percent_link150mb<-(link_150mb/cont)*100
   percent_link300mb<-(link_300mb/cont)*100
   percent_link60_sana<-(link60_sana/cont_sana)*100
   percent_link150_sana<-(link150_sana/cont_sana)*100
   percent_link300_sana<-(link300_sana/cont_sana)*100
   Escreval (" ")
   Escreval("A média de consumo do Sana é de:",m_consumo_sana:4:2)
   Escreval("A média de consumo do Frade é de:",m_consumo_frade:4:2)
   Escreval("A média de consumo do Glicério é de:",m_consumo_glic:4:2)
   Escreval (" ")
   Escreval ("A pocentagem de cliente com Link de 60MB é de:",percent_link60mb:4:2,"%.")
   Escreval ("A pocentagem de cliente com Link de 150MB é de:",percent_link150mb:4:2,"%.")
   Escreval ("A pocentagem de cliente com Link de 300MB é de:",percent_link300mb:4:2,"%.")
   Escreval (" ")
   Escreval ("O Cód do Cliente com maior consumo é:",cod_maior_consumo)
   Escreval ("O Cód do Cliente com menor consumo é:",cod_menor_consumo)
   Escreval (" ")
   Escreval ("A portcentagem de Links de 60 MB no Sana é de:",percent_link60_sana:4:2,"%.")
   Escreval ("A portcentagem de Links de 150 MB no Sana é de:",percent_link150_sana:4:2,"%.")
   Escreval ("A portcentagem de Links de 300 MB no Sana é de:",percent_link300_sana:4:2,"%.")
Fimalgoritmo