Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 14/09/2021
Var
   // Seção de Declarações das variáveis
   cont,OS,Dias_entrega,Dias_gastos,tip_serv,serv_m,serv_r:inteiro
   Dias_atraso,atrasados_m,atrasados_t,atrasados_r,OS_Atr:inteiro
   m_at,percent_atrasado_m,percent_atrasado_r:real
   servico:caracter
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   m_at<-0
   Enquanto cont<250 faca
      OS<-randi(250)+1354
      Dias_entrega<-randi(21)
      Dias_gastos<-randi(21)
      tip_serv<-randi(2)

      Se tip_serv=0 entao
         servico<-"Manutenção"
         serv_m<-serv_m+1
      senao
         servico<-"Reparo"
         serv_r<-serv_r+1
      fimse

      Se (dias_entrega<dias_gastos) entao
         atrasados_t<-atrasados_t+1
         Dias_atraso<-dias_gastos-dias_entrega
         Se(tip_serv=0) entao
            atrasados_m<-atrasados_m+1
            //Escreval (OS:4," ",servico:10," Qtd Atrsados: ",atrasados_m,"/",serv_m," Entrega em Dias x Prazo desejado:",dias_gastos-dias_entrega)
         senao
            atrasados_r<-atrasados_r+1
            //Escreval (OS:4," ",servico:10," Qtd Atrsados: ",atrasados_r,"/",serv_r," Entrega em Dias x Prazo desejado:",dias_gastos-dias_entrega)
         fimse
         Se dias_atraso>m_at entao
            m_at<-dias_atraso
            OS_Atr<-OS
         fimse
      fimse
      cont<-cont+1
   fimenquanto
   percent_atrasado_m<-(atrasados_m/serv_m)*100
   percent_atrasado_r<-(atrasados_r/serv_r)*100
   //Escreval ("Manutenção Total:",serv_m," ","Reparo Total:",serv_r)
   Escreval ("O percentual de OS's atrasadas de Manutenção é:",percent_atrasado_m:2:2,"% ","e de Reparo é:",percent_atrasado_r:2:2,"%")
   Escreval ("A OS com maior atraso foi:",OS_Atr)
Fimalgoritmo