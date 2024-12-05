##### Operações com arrauys - Dica extra
vendas_sem1<-c(12,10,8)
vendas_sem2<-vendas_sem1*2
vendas_sem3<-vendas_sem1*3
vendas_sem4<-vendas_sem3+15

array(c(vendas_sem1,vendas_sem2,vendas_sem3,vendas_sem4),dim=c(3,4,3))

nomes_variaveis<-c("Semana 1","Semana 2","Semana 3","Semana 4")
nomes_linhas<-c("Marcos","João","Maria")
nomes_matrizes<-c("Janeiro","Fevereiro","Março")

vendas_totais<-array(c(vendas_sem1,vendas_sem2,vendas_sem3,vendas_sem4),dim=c(3,4,3),
                     dimnames = list(nomes_linhas,nomes_variaveis,nomes_matrizes))


apply(vendas_totais, 2, sum) #Soma de todas as colunas  
apply(vendas_totais, 1, sum) #Soma de todas as linhas
apply(vendas_totais, 1, mean) #média por linha