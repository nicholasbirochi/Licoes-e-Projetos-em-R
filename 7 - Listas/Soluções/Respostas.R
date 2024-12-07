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

#1-)
nomesClientes <- as.vector(Funcionarios[,1,])
salariosClientes <- as.vector(Funcionarios[,2,])
idadesClientes <- as.vector(Funcionarios[,3,])

Marcos <-list(nome=nomesClientes[1],salario=salariosClientes[1],historicoCartao=c(334,356,544),idade=idadesClientes[1])
Paulo <-list(nome=nomesClientes[2],salario=salariosClientes[2],historicoCartao=c(230,280,399),idade=idadesClientes[2])
Joao <-list(nome=nomesClientes[3],salario=salariosClientes[3],historicoCartao=c(120,255,270),idade=idadesClientes[3])

#2-)
mean(Marcos[[3]])
mean(Paulo[[3]])
mean(Joao[[3]])