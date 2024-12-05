vendas <-c(12,24,30)
produtos <-c("TV", "Geladeira", "Cama")

#Nomeando as Dimensões:
nomesLinhas <-c("Marcos", "Joao", "Maria")
nomesVariaveis <-c("Produtos", "Quantidade")
nomesMatrizes <-c("Janeiro", "Fevereiro", "Março")
vendasTotais <-array(c(produtos,vendas), dim = c(3,2,3), dimnames = list(nomesLinhas, nomesVariaveis, nomesMatrizes))


vendasTotais[1,2,1] <-14
vendasTotais[2,,2] <-c("Freezer", 10)
vendasTotais[2:3,2,3] <-c(34,80)
vendasTotais[c(1,3),2,3] <-c(20,40)

vendasTotais[,2,]
sum(as.numeric(vendasTotais[,2,])) #soma das unidades vendidas...
max(as.numeric(vendasTotais[,2,1])) #o máx das unidades vendidas(o maior número)...