# Matrizes - Criação:
produtos <-c("TV", "Refrigerador", "Notebook", "Celular")
quantidades <-c(30, 36, 20, 15)

#Dois formatos de organização de dados dentro de uma Matriz:
#"cbind" é o mais aconselhavel!
vendas <-cbind(produtos, quantidades)
vendas <-rbind(produtos, quantidades)
vendas

#matrix(elementos, nrow =(número de linhas),ncol=(número de colunas))
matrix(1:20, nrow=4, ncol=5)
matrix("Brasil", nrow=4, ncol=5)
matrix(0, nrow=4, ncol=5)

matrix(1:20, nrow=4, ncol=5, byrow=T)#por linha
matrix(1:30, nrow=4, ncol=5, byrow=T)
matrix(1:5, nrow=4, ncol=5, byrow=T)
matrix(1:5, nrow=4, ncol=5)#por coluna


#vendas[linha,coluna]
vendas[1,2]
vendas[1,]#A linha completa...
vendas[,2]#A coluna completa(a variável...)
vendas[2:4,]#Começa citando a partir da segunda linha....
vendas[2:4,1]#Especifica a coluna...

vendas[4,2]
vendas[2,1]