#Operações:
carlos <-c(120,130,400,230)
marcos <-c(20,334,420,130)
maria <-c(22,28,19,10)

vendas_Reais <- cbind(carlos, marcos, maria)
dim(vendas_Reais)#quantidade de linhas e colunas...
nrow(vendas_Reais)#quantidade de linhas...
ncol(vendas_Reais)#quantidade de colunas...
#Observação:
#dim()[1] igual a nrow()
#dim()[2] igual a ncol()

vendas_Reais <-vendas_Reais - 2
vendas_Reais <-vendas_Reais + 5
comissoes <-vendas_Reais*0.10
comissoes/2
comissoes ^ 2
sqrt(comissoes)
log(comissoes)

sum(comissoes[,1])
sum(vendas_Reais[,1])

mean(comissoes)
sum(comissoes)

Jan <-comissoes*2
Fev <-comissoes

Jan + Fev
Jan - Fev
Jan*Fev
#Produto Matricial:
#(Precisa das linhas iguais as colunas...)
Jan %*% Fev
Jan %*% Fev[-3,]
dim(Jan)
dim(Fev[-3,])