# Matrizes - Criação:
produtos <-c("TV", "Refrigerador", "Notebook", "Celular")
quantidades <-c(30, 36, 20, 15)

#Dois formatos de organização de dados dentro de uma Matriz:
#"cbind" é o mais aconselhavel!
vendas <-cbind(produtos, quantidades)

vendas_Jan <-vendas
vendas_Fev <-vendas_Jan

#Modificando
vendas_Fev[,2] <-as.numeric(vendas_Jan[,2]) + 2
vendas_Fev[1,1] <-c("Televisor")
vendas_Fev[3,] <-c("PC",40)
vendas_Fev[2:4,2] <-c(12,100,30)
vendas_Fev[c(1,4),1] <-c("TV","Smartphone")

#Retirando colunas e linhas temporariamente:
vendas_Fev[,-1]
vendas_Fev[-2,]
vendas_Fev[-1,-2]