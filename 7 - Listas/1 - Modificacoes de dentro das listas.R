###Criando lista a partir de objetos:
clientesNomes <-c("Roberta", "Maria", "Marcos", "Felipe")
clientesQntd <-c(12,10,22,12)
IDClientes <-seq(101,104)
novoCliente <-c(TRUE,FALSE,FALSE,TRUE)

balanco <-list(IDClientes, clientesNomes, clientesQntd, novoCliente)
#Implementando dentro de uma matriz com as médias...
balanco <-list(IDClientes, clientesNomes, clientesQntd, novoCliente, matrix(0,4,5), mean)

#########

###Criando listas e inserindo os valores individuamente(vantagem: você inseri um nome para cada elemento):
balanco2 <-list(ID=seq(101,104),nomes=c("Roberta","Maria","Marcos","Felipe"),Quant=c(12,10,22,12),
     Novo_cliente=c(TRUE,FALSE,FALSE,TRUE))

#================================================================================================#
### Nomeando cada elemento da lista:
#Ao ser inserido:
balanco3 <- list(ID=IDClientes, nome=clientesNomes, Quant=clientesQntd, Novo_Cliente=novoCliente)
#Nomeando depois de ser inserido:
balanco4 <-list(IDClientes, clientesNomes, clientesQntd, novoCliente, matrix(0,4,5), mean)
names(balanco4) <-c("ID","Nomes","Quantidade","Novo Cliente?","Histórico","Média Vendida")


#================================================================================================#
### Buscando informações dentro da lista:
#Resumindo: "nomedalista$nomeexatdodoobjeto[indice]" e "nomedalista[[indice]]"
balanco4$Histórico
balanco2$nomes[2]
balanco2$Quant[2]
balanco4$`Média Vendida`#Tem que escrever exatamente como foi registrado: "`Média Vendida`"...

#Mostrando todas as informações vindas de cada elemento:
balanco4[[2]]
balanco4[[2:3]]

historico <-balanco4[[5]]

#================================================================================================#
### Modificando informações dentro das listas:
balanco2$nomes[3] <-"Paulo"
balanco2$nomes[3:4] <-c("Paulo","Pedro")

balanco$Quantidade[c(1,3)]<-c(13,23)

balanco4$`Novo Cliente?`[4] <-FALSE

balanco4$Histórico[1,] <-c(10,13,11,17,19)
balanco4$Histórico[4,3] <-20

#Quinta Coluna:
balanco4$Histórico[,5]
#Atualizando a matriz dentro dele, todas as colunas, menos a quinta coluna(excluindo a quinta coluna):
balanco4$Histórico <- balanco4$Histórico[,-5]

######
### Modificando informações dentro das listas(Implementando dados...):
balanco4$Nomes[5] <- "Camila"

balanco4$Nomes[5:8] <- c("Camila", "Fábio", "Marta", "Patricia")

#Removeu do quinto ao  oitavo:
balanco4$Nomes <- balanco4$Nomes[-(5:8)]

#######
##Dando nomes as colunas e as linhas de dentro de uma lista:
balanco4$Histórico

colnames(balanco4$Histórico) <-c("Jan","Fev","Mar","Abr")
rownames(balanco4$Histórico) <-balanco4$Nomes

##Removendo objetos de uma lista
balanco4 <-balanco4[-6]