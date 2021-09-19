Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/09/2021
Var
   // Seção de Declarações das variáveis
   at,ori,cont,id,cg_t,id_pac_cg,cont_id_pac_sen,or_t:inteiro
   id_pac_part,m_id_pac_part,sum_part,id_pac_ps,m_id_pac_ps,sum_ps:inteiro
   tipo_at,tipo_ori:caracter
   m_cont_id_pac_sen:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0

   Enquanto cont<100 faca
      At<- randi(2)
      Ori<- randi (2)
      Id<- randi (91)

      Se at=0 entao
         tipo_at<-"Clinica Geral"
         cg_t<-cg_t+1
         id_pac_cg<-id
         //Escreval (cont," ",id," ",tipo_at)
         se id_pac_cg>60 entao
            cont_id_pac_sen<-cont_id_pac_sen+1
         fimse
      senao
         tipo_at<-"Ortopedia"
         or_t<-or_t+1
         //Escreval (cont," ",id," ",tipo_at)
      fimse

      se ori=0 entao
         tipo_ori<-"Particular"
         id_pac_part<-id
         M_id_pac_part<-M_id_pac_part+id_pac_part
         sum_part<-sum_part+1
         //Escreval (id," ",tipo_ori)
      senao
         tipo_ori<-"Plano de Saúde"
         id_pac_ps<-id
         M_id_pac_ps<-M_id_pac_ps+id_pac_ps
         sum_ps<-sum_ps+1
         //Escreval (id," ",tipo_ori)

      fimse
      cont<-cont+1
   fimenquanto
   m_cont_id_pac_sen<-(cont_id_pac_sen/cg_t)*100
   //Escreval (tipo_at," total Clinica Geral: ",cg_t," total Orto:",or_t)
   //Escreval (tipo_ori," total Particular: ",sum_part," total Plano de Saúde:",sum_ps)
   //Escreval (" xxx ")
   Escreval ("Percentual de atendimentos da Clinica Geral é:",(cg_t/cont)*100,"%")
   Escreval ("Percentaul de atendimeto da Ortopedia é:",(or_t/cont)*100,"%")
   Escreval ("A media de idade dos pacientes de Origem Particular é de:",(M_id_pac_part/sum_part):2:2," e de Plano de Saúde é de:",(M_id_pac_ps/sum_ps):2:2)
   Escreval ("O percentual de pacientes acima de 60 anos na Clínica Geral é de:",m_cont_id_pac_sen:2:2)

Fimalgoritmo