vendas<-c(12,15,3,5)
meses<-c("Jan","Fev","Mar","Abri")
##Substituindo um valor dentro do vetor:
vendas[3]<- 13
vendas[4]<- 15


##Alterando mais de um valor dentro do Vetor:
#se você quiser substituir duas informações,
#você precisa fornecer duas informações
vendas[c(1,4)] <- c(0,90)
vendas[c(2:4)] <- c(40,35,28)


##Alterando mais de um valor dentro do Vetor String:
meses[3:4] <- c("Março","Abril")

##Tirando o índice 4 do Vetor Vendas:
vendas <- vendas[-4]

#Deixando o valor do índice "4" como NA(vázio...)
vendas[5:7] <- c(23,43,15)