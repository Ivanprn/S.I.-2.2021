Algoritmo "semnome"
// Disciplina  : [No��es de Programa��o/ITI]
// Professor   : S�rgio Netto
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Ivan Paiva
// Data atual  : 16/11/2021
Var
   // Se��o de Declara��es das vari�veis
   imv_loja,imv_apart,imv_casa,imv_sala,ale,i:inteiro
   cod_imovel,t_imovel,a_cadastro,m_cadastro,est,stat:vetor [0..124] de inteiro
   area,valor:vetor [0..124] de real
   tipo_imovel,estado,status:vetor [0..124] de caracter
   cont_casa,cont_apart,cont_sala,cont_loja:inteiro
   med_area_casa,med_area_apart,med_area_sala,med_area_loja:real
   tot_valor_casa,tot_valor_apart,tot_valor_sala,tot_valor_loja:real
   valor_medio_casas,valor_medio_apart,valor_medio_loja,valor_medio_sala:real
   area_media_casas,area_media_apart,area_media_loja,area_media_sala:real
   percent_naolocados_razoavel:real
   cont_razoavel_naolocado:inteiro
   percent_cont_naolocado_mais2anos:real
   cont_naolocado_mais2anos:inteiro
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Escreval ("C�digo  ","Tipo            ","Data   ","     �rea   ","  Status   ","    Estado   ","   Valor")
   ale<-randi(651)+1250
   para i de 0 ate 124 faca

      cod_imovel[i]<-ale+i
      t_imovel[i]<-randi(4)
      a_cadastro[i]<-randi(6)+2015
      m_cadastro[i]<-randi(12)+1
      est[i]<-randi(3)
      stat[i]<-randi(2)

      se t_imovel[i]=0 entao
         tipo_imovel[i]<-"Casa"
         area[i]<-randi(151)+100
         valor[i]<-area[i]*10+500*est[i]
         cont_casa<-cont_casa+1
         tot_valor_casa<-tot_valor_casa+valor[i]
         med_area_casa<-med_area_casa+area[i]

         Se valor[i] > valor[imv_casa] entao
            imv_casa<-i
         fimse

      fimse

      se t_imovel[i]=1 entao
         tipo_imovel[i]<-"Apartamento"
         area[i]<-randi(221)+30
         valor[i]<-area[i]*12+300*est[i]
         cont_apart<-cont_apart+1
         tot_valor_apart<-tot_valor_apart+valor[i]
         med_area_apart<-med_area_apart+area[i]

         Se valor[i] > valor[imv_apart] entao
            imv_apart<-i
         fimse

      fimse

      se t_imovel[i]=2 entao
         tipo_imovel[i]<-"Sala"
         area[i]<-randi(231)+20
         valor[i]<-area[i]*20+300*est[i]
         cont_sala<-cont_sala+1
         tot_valor_sala<-tot_valor_sala+valor[i]
         med_area_sala<-med_area_sala+area[i]

         Se valor[i] > valor[imv_sala] entao
            imv_sala<-i
         fimse

      fimse

      se t_imovel[i]=3 entao
         tipo_imovel[i]<-"Loja"
         area[i]<-randi(231)+20
         valor[i]<-area[i]*20+300*est[i]
         cont_loja<-cont_loja+1
         tot_valor_loja<-tot_valor_loja+valor[i]
         med_area_loja<-med_area_loja+area[i]

         Se valor[i] > valor[imv_loja] entao
            imv_loja<-i
         fimse

      fimse

      se est[i] = 0 entao
         estado[i]<-"Razo�vel"
      fimse

      se est[i] = 1 entao
         estado[i]<-"Bom"
      fimse

      se est[i] = 2 entao
         estado[i]<-"Excelente"
      fimse

      se stat[i] = 0 entao
         status[i]<-"Locado"
      fimse

      se stat[i] = 1 entao
         status[i]<-"N�o Locado"

      fimse
      //Quest�o 4
      se (stat[i] = 1) e (est[i] = 0) entao
         cont_razoavel_naolocado<-cont_razoavel_naolocado+1
      fimse
      // Quest�o 5
      Se (stat[i] = 1) e ((2021-a_cadastro[i])>2) entao
         cont_naolocado_mais2anos<-cont_naolocado_mais2anos+1
      fimse
      //
      Escreva (cod_imovel[i],"   ",tipo_imovel[i]:11,"  ",m_cadastro[i]:4,"/",a_cadastro[i]:2,"     ",area[i]:4,"m�")
      Escreval ("    ",status[i]:10,"   ",estado[i]:9,"   R$ ",valor[i]:5:2)
   fimpara
   //QUEST�O 2
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   valor_medio_casas<-tot_valor_casa/cont_casa
   area_media_casas<-med_area_casa/cont_casa
   Escreval("O valor m�dio das Casas foi de R$:",valor_medio_casas:5:2," e a �rea foi de: ",area_media_casas:4:2,"m�")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   valor_medio_apart<-tot_valor_apart/cont_apart
   area_media_apart<-med_area_apart/cont_apart
   Escreval("O valor m�dio dos Apartamentos foi de R$:",valor_medio_apart:5:2," e a �rea foi de: ",area_media_casas:4:2,"m�")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   valor_medio_sala<-tot_valor_sala/cont_sala
   area_media_sala<-med_area_sala/cont_sala
   Escreval("O valor m�dio das Salas foi de R$:",valor_medio_sala:5:2," e a �rea foi de: ",area_media_sala:4:2,"m�")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   valor_medio_loja<-tot_valor_loja/cont_loja
   area_media_loja<-med_area_loja/cont_loja
   Escreval("O valor m�dio das Lojas foi de R$:",valor_medio_loja:5:2," e a �rea foi de: ",area_media_loja:4:2,"m�")
   //QUEST�O 3
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval ("O im�vel do tipo Casa com maior valor �:")
   Escreval ("C�digo  ","Tipo            ","Data   ","     �rea   ","  Status   ","    Estado   ","   Valor")
   Escreva (cod_imovel[imv_casa],"   ",tipo_imovel[imv_casa]:11,"  ",m_cadastro[imv_casa]:4,"/",a_cadastro[imv_casa]:2,"     ",area[imv_casa]:4,"m�")
   Escreval ("    ",status[imv_casa]:10,"   ",estado[imv_casa]:9,"   R$ ",valor[imv_casa]:5:2)
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval ("O im�vel do tipo Apartamento com maior valor �:")
   Escreval ("C�digo  ","Tipo            ","Data   ","     �rea   ","  Status   ","    Estado   ","   Valor")
   Escreva (cod_imovel[imv_apart],"   ",tipo_imovel[imv_apart]:11,"  ",m_cadastro[imv_apart]:4,"/",a_cadastro[imv_apart]:2,"     ",area[imv_casa]:4,"m�")
   Escreval ("    ",status[imv_apart]:10,"   ",estado[imv_apart]:9,"   R$ ",valor[imv_apart]:5:2)
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval ("O im�vel do tipo Sala com maior valor �:")
   Escreval ("C�digo  ","Tipo            ","Data   ","     �rea   ","  Status   ","    Estado   ","   Valor")
   Escreva (cod_imovel[imv_sala],"   ",tipo_imovel[imv_sala]:11,"  ",m_cadastro[imv_sala]:4,"/",a_cadastro[imv_sala]:2,"     ",area[imv_sala]:4,"m�")
   Escreval ("    ",status[imv_sala]:10,"   ",estado[imv_sala]:9,"   R$ ",valor[imv_sala]:5:2)
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval ("O im�vel do tipo Loja com maior valor �:")
   Escreval ("C�digo  ","Tipo            ","Data   ","     �rea   ","  Status   ","    Estado   ","   Valor")
   Escreva (cod_imovel[imv_loja],"   ",tipo_imovel[imv_loja]:11,"  ",m_cadastro[imv_loja]:4,"/",a_cadastro[imv_loja]:2,"     ",area[imv_loja]:4,"m�")
   Escreval ("    ",status[imv_loja]:10,"   ",estado[imv_loja]:9,"   R$ ",valor[imv_loja]:5:2)
   //Quest�o 4
   percent_naolocados_razoavel<-cont_razoavel_naolocado/(i+1)*100
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval ("O percentual de im�veis n�o locados com estado Razo�vel � de: ",percent_naolocados_razoavel:3:2,"%")
   // Quest�o 5
   percent_cont_naolocado_mais2anos<-cont_naolocado_mais2anos/(i+1)*100
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval ("O percentual de Im�veis com mais de 2 anos de cadastro e n�o alugados � de: ",percent_cont_naolocado_mais2anos:3:2,"%")
Fimalgoritmo