Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ivan Paiva
// Data atual  : 19/09/2021
Var
   // Seção de Declarações das variáveis
   cont,id,sex:inteiro
   gen:caracter
   gen_m_id,gen_m_t,gen_f_id,gen_f_t:inteiro
   media_id_m,media_id_f:real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont<-0
   Enquanto cont<20 faca
      id<-randi(29)+17
      sex<- randi(2)
      Se sex=0 entao
         gen<-"Masculino"
         gen_m_id<-gen_m_id+id
         gen_m_t<-gen_m_t+1
      senao
         gen<-"Feminino"
         gen_f_id<-gen_f_id+id
         gen_f_t<-gen_f_t+1
      fimse
      //Escreval (cont:2,"--",gen:10,"--",id)
      cont<-cont+1
   fimenquanto
   media_id_m<-gen_m_id/gen_m_t
   media_id_f<-gen_f_id/gen_f_t
   Escreval ("A medida de idade dos homens é:",(media_id_m):2:2)
   Escreval ("A medida de idade das mulheres é:",(media_id_f):2:2)

Fimalgoritmo