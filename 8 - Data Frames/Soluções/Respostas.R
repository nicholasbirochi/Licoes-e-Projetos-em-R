#1 e 2-)
Nome <-0
Salario <-0
Idade <-0
Motivo <-0
Valor.Pedido <-0


nomesLinhas <-c("Cliente 1", "Cliente 2", "Cliente 3", "Cliente 4")
nomesColunas <-c("Nome", "Salário", "Idade", "Motivo do Empréstimo", "Valor Solicitado")
nomesMatrizes <-c("Funcionário 1 - Melissa M", "Funcionário 2 - Carlos P", "Funcionário 3 - Luciana T")
Funcionarios <-array(c(Nome, Salario, Idade, Motivo, Valor.Pedido),
                     dim = c(4,5,3),
                     dimnames = list(nomesLinhas, nomesColunas, nomesMatrizes))

#3-)
Funcionarios[,,1] <-cbind(Nome=c("Marcos","Paulo","João","Kamila"),
                          Salario=c(4000,3000,4500,2300),
                          Idade=c(45,33,36,45),
                          Motivo=c("Compra de Carro","Reforma da Casa","Viagem","Compra de Casa"),
                          Valor.Pedido=c(45000,34000,20000,120000))

Funcionarios[,,2] <-cbind(Nome=c("Marcela","Fábio","Luana","Romero"),
                          Salario=c(3200,4500,2500,1300),
                          Idade=c(34,30,56,54),
                          Motivo=c("Compra de Carro","Viagem","Viagem","Compra de Carro"),
                          Valor.Pedido=c(75000,55000,19000,90000))


Funcionarios[,,3] <-cbind(Nome=c("Gustavo","Bruno","Joana","Vânia"),
                          Salario=c(11000,5600,1580,6300),
                          Idade=c(56,29,44,57),
                          Motivo=c("Compra de Casa","Viagem","Compra de Apartamento","Reforma da Casa"),
                          Valor.Pedido=c(55000,8000,21000,7000))

#Respostas:
#1-)
tabela<-rbind(Funcionarios[,,1],Funcionarios[,,2],Funcionarios[,,3])
tabela<-as.data.frame(tabela) #transformando em Data Frame

#2-)
rownames(tabela) <-seq(1:nrow(tabela)) #simplificando o nome das linhas

#3-)
str(tabela$Salário)
str(tabela$Idade)
str(tabela$`Valor Solicitado`)

tabela$Salário<-as.numeric(tabela$Salário)
tabela$Idade<-as.numeric(tabela$Idade)
tabela$`Valor Solicitado`<-as.numeric(tabela$`Valor Solicitado`)


#4-)
#a-)
Funcionários <-gl(3, 4, labels=c("Melissa M.","Carlos P.","Luciana T."))

#b-)
tabela$Funcionários <-Funcionários

#c-)
tabela[Funcionários=="Melissa M.",1:5]
tabela[Funcionários=="Carlos P.",1:5]
tabela[Funcionários=="Luciana T.",1:5]


#5-)
#a)
table(tabela$`Motivo do Empréstimo`) #contagem dos motivos...

#b)
pie(table(tabela$`Motivo do Empréstimo`)) #gráfico de pizza...

#c)
barplot(table(tabela$`Motivo do Empréstimo`)) #gráfico de barras...