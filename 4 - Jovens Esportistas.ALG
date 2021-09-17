Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 14/09/2021
Var
   // Seção de Declarações das variáveis
   idade,esporte,sexo,t_idade,idade_f,t_fem,idade_m,t_masc,cont,id_basquete,id_futebol,id_volei,t_basquete,t_futebol,t_volei:inteiro
   m_idade_M,m_idade_f,m_id_basquete,m_id_futebol,m_id_volei:real
   t_sexo,esporte_pref:caracter

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   Enquanto cont<75 faca
      Sexo<-randi(2)
      Idade<- randi(6)+12
      Esporte<- randi(3)
      t_idade<-t_idade+idade
      Se sexo=0 entao
         t_sexo<-"Femenino"
         idade_f<-idade_f+idade
         t_fem<-t_fem+1
      senao
         t_sexo<-"Masculino"
         idade_m<-idade_m+idade
         t_masc<-t_masc+1
      fimse
      Se esporte=0 entao
         esporte_pref<-"Basquete"
         id_basquete<-id_basquete+idade
         t_basquete<-t_basquete+1
      fimse
      Se esporte=1 entao
         esporte_pref<-"Futebol"
         id_futebol<-id_futebol+idade
         t_futebol<-t_futebol+1
      fimse
      Se esporte=2 entao
         esporte_pref<-"Vôlei"
         id_volei<-id_volei+idade
         t_Volei<-t_volei+1
      fimse
      cont<-cont+1
      Escreval(cont:2," ",t_sexo:9," ",idade," ",esporte_pref)
   fimenquanto
   m_idade_M<-idade_m/t_masc
   m_idade_F<-idade_f/t_fem
   m_id_basquete<-id_basquete/t_basquete
   m_id_futebol<-id_futebol/t_futebol
   m_id_volei<-id_volei/t_Volei
   Escreval ("A média de idade dos jovens que preferem basquete é:",m_id_basquete:2," ","dos que preferem futebol é:",m_id_futebol:2," ","e dos que preferem volei é:",m_id_volei:2,".")
   Escreval ("A média de idade dos meninos é:",m_idade_M:2," ","e das meninas é:",m_idade_F:2)

Fimalgoritmo