Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 14/09/2021
Var
   // Seção de Declarações das variáveis
   cont,OS,Dias_entrega,Dias_gastos,tip_serv,serv_m,serv_r:inteiro
   dias_atra,m_at,atrasados_m,atrasados_t,atrasados_r,OS_Atr:inteiro
   percent_atrasado_m,percent_atrasado_r:real
   servico:caracter
   dias_atra_tm,dias_atra_tr,dias_atra_m,dias_atra_r,media_atraso_r,media_atraso_m,noprazo_m:real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   m_at<-0
   Enquanto cont<250 faca
      OS<-randi(250)+1354
      Dias_entrega<-randi(11)+5
      Dias_gastos<-randi(16)+5
      tip_serv<-randi(2)

      Se tip_serv=0 entao
         servico<-"Manutenção"
         serv_m<-serv_m+1
      senao
         servico<-"Reparo"
         serv_r<-serv_r+1
      fimse
      Se (dias_entrega<dias_gastos) entao
         dias_atra<-dias_entrega-dias_gastos
         atrasados_t<-atrasados_t+1
         Se (tip_serv=0) entao
            atrasados_m<-atrasados_m+1
            dias_atra_m<- dias_gastos-dias_entrega
            dias_atra_tm<-dias_atra_tm+dias_atra_m
            //Escreval (OS:4," ",servico:10," ","Dias Atrasados:",dias_atra_m:3)
            //Escreval ("Dias para Entrega / Dias gastos:",dias_entrega,"/",dias_gastos)
            //Escreval (" ")
         senao
            atrasados_r<-atrasados_r+1
            dias_atra_r<-dias_gastos-dias_entrega
            dias_atra_tr<-dias_atra_tr+dias_atra_r
            //Escreval (OS:4," ",servico:10," ","Dias Atrasados:",dias_atra_r)
            //Escreval ("Dias para Entrega / Dias gastos:",dias_entrega,"/",dias_gastos)
            //Escreval (" ")
         fimse

         Se m_at>dias_atra entao
            m_at<-dias_atra
            OS_Atr<-OS
         fimse
      Senao
         noprazo_m<-noprazo_m+1
      fimse

      cont<-cont+1
      //Escreval (OS:4," ",servico:10," Manutenção: ",atrasados_m,"/",serv_m," Entrega em Dias:",dias_gastos," Prazo desejado em Dias:",dias_entrega," e Reparo:",atrasados_r,"/",serv_r)
   fimenquanto
   media_atraso_m <- dias_atra_tm/atrasados_m
   media_atraso_r<- dias_atra_tr/atrasados_r
   percent_atrasado_m<-(atrasados_m/serv_m)*100
   percent_atrasado_r<-(atrasados_r/serv_r)*100
   //Escreval ("Manutenção Total:",serv_m," ","Reparo Total:",serv_r)
   Escreval ("O percentual de OS's atrasadas de Manutenção é:",percent_atrasado_m:2:2,"% ","e de Reparo é:",percent_atrasado_r:2:2,"%")
   Escreval ("A OS com maior atraso foi:",OS_Atr)
   Escreval ("A média de dias de atraso de Manutenção foi de:",media_atraso_m:2:2," e de Reparo foi:",media_atraso_r:2:2)
   Escreval ("O percentual de OS's dentro do prazo foi de:",(noprazo_m/cont)*100,"%")
Fimalgoritmo