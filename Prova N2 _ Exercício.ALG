Algoritmo "semnome"
// Disciplina  : [No��es de Programa��o/ITI]
// Professor   : S�rgio Netto
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Ivan Paiva
// Data atual  : 22/11/2021
Var
   // Se��o de Declara��es das vari�veis
   pesqmc,i: inteiro
   cod_imovel,regiao,tip,moradores,interesse,rede_exist:vetor [0..108] de inteiro
   consumo_boti_mes,consumo_morador: vetor [0..108] de real
   regiao_carac,tip_carac,interesse_carac,rede_exist_carac:vetor [0..108] de caracter
   media_consumo_negativo,consumo_negativo:real
   cont_negativo_com_rede,cont_int_positivo,cont_positivo_sem_rede,cont_int_negativo:inteiro
   percent_negativo_com_rede,percent_positivo_sem_rede:real
   percent_positivo_centro:real
   cont_positivo_centro:inteiro
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   Escreval("C�digo  Regiao   Tipo         Moradores  Interesse    Rede  ConM�s  ConMor")
   para i de 0 ate 108 faca
      cod_imovel[i]<-1001+i
      regiao[i]<-randi(3)
      tip[i]<-randi(2)
      moradores[i]<-randi(6)+1
      interesse[i]<-randi(3)
      rede_exist[i]<-randi(2)
      consumo_boti_mes[i]<-(randi(19)+6)/12
      consumo_morador[i]<-consumo_boti_mes[i]/moradores[i]

      se regiao[i] = 0 entao
         regiao_carac[i]<-"Centro"
      fimse
      se regiao[i] = 1 entao
         regiao_carac[i]<-"Norte"
      fimse
      se regiao[i] = 2 entao
         regiao_carac[i]<-"Sul"
      fimse

      se tip[i] = 0 entao
         tip_carac[i]<-"Casa"
      fimse
      se tip[i] = 1 entao
         tip_carac[i]<-"Apartamento"
      fimse

      se interesse[i] = 0 entao
         interesse_carac[i]<-"Indiferente"
      fimse
      se interesse[i] = 1 entao
         interesse_carac[i]<-"Positivo"
         cont_int_positivo<-cont_int_positivo+1
      fimse
      se interesse[i] = 2 entao
         interesse_carac[i]<-"Negativo"
         cont_int_negativo<-cont_int_negativo+1
         consumo_negativo<-consumo_boti_mes[i]+consumo_negativo
         media_consumo_negativo<-consumo_negativo/cont_int_negativo
      fimse

      se rede_exist[i] = 0 entao
         rede_exist_carac[i]<-"Sim"
      fimse
      se rede_exist[i] = 1 entao
         rede_exist_carac[i]<-"N�o"
      fimse

      se (rede_exist[i] = 0) e (interesse[i] = 2) entao
         cont_negativo_com_rede<-cont_negativo_com_rede+1
      fimse

      se (rede_exist[i] = 1) e (interesse[i] = 1) entao
         cont_positivo_sem_rede<-cont_positivo_sem_rede+1
      fimse

      se (interesse[i] = 1) e (regiao[i] = 0) entao
         cont_positivo_centro<-cont_positivo_centro+1
      fimse

      se consumo_morador[i] < consumo_morador[pesqmc] entao
         pesqmc<-i
      fimse

      Escreval(cod_imovel[i]:4,"    ",regiao_carac[i]:7,"  ",tip_carac[i]:12,"   ",moradores[i]:2,"       ",interesse_carac[i]:12,"  ",rede_exist_carac[i]:3,"   ",consumo_boti_mes[i]:2:2,"     ",consumo_morador[i]:2:2)
   fimpara
   Escreval ("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
//Quest�o 2
   Escreval ("O consumo m�dio dos pesquisados com Interesse Negativo � de: ",media_consumo_negativo:4:2)
   Escreval ("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
//Quest�o 3
   percent_negativo_com_rede<-(cont_negativo_com_rede/cont_int_negativo)*100
   percent_positivo_sem_rede<-(cont_positivo_sem_rede/cont_int_positivo)*100
   Escreva ("O percentual de pesquisados negativos que tem rede instalada � ",percent_negativo_com_rede:4:2,"%")
   Escreval (" e de positivo que n�o tem rede instalada �: ",percent_positivo_sem_rede:4:2,"%")
   Escreval ("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
 //Quest�o 4
   percent_positivo_centro<-(cont_positivo_centro/cont_int_positivo)*100
   Escreval ("Percentual de pesquisados positivos na regi�o Central �: ",percent_positivo_centro:4:2,"%")
   Escreval ("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
//Quest�o 5
   Escreval ("O pesquisado de menor consumo por morador �: ")
   Escreval(cod_imovel[pesqmc]:4,"    ",regiao_carac[pesqmc]:7,"  ",tip_carac[pesqmc]:12,"   ",moradores[pesqmc]:2,"       ",interesse_carac[pesqmc]:12,"  ",rede_exist_carac[pesqmc]:3,"   ",consumo_boti_mes[pesqmc]:2:2,"     ",consumo_morador[pesqmc]:2:2)


Fimalgoritmo