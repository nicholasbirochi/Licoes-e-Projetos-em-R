#Inserindo os valores dentro do DataFrame:
fornecedores <-c("A","B","E","D","X")
quantJan <-c(320,230,100,340,10)
quantFev <-c(220,630,60,50,60)
quantMar <-c(520,430,100,34,10)

resumo <-cbind(fornecedores,quantJan,quantFev,quantMar)

resumo_df <-as.data.frame(resumo)

#Criando o DataFrame e inserindo os valores dentro dele:
data.frame(fornecedores=c("A","B","E","D","X"),
           quantJan=c(320,230,100,340,10),
           quantFev=c(220,630,60,50,60),
           quantMar=c(520,430,100,34,10))


dados <-data.frame(V1=fornecedores,V2=quantJan,V3=quantFev,V4=quantMar)
#==============================================================================#
#Acessando as informações de dentro do DataFrame:
dados[2,]#acessando a segunda linha...
dados[2:4,]#acessando a segunda linha até a quarta linha...
dados[c(1,5),]#acessando valores da primeira e quinta linha...
resumo_df$quantJan#valores da coluna "quantJan"...
resumo_df[,2]#valores da coluna "quantJan"...
#Acessando valor específico:
resumo_df$fornecedores[2]