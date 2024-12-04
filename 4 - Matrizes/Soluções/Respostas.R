#1.Fazendo a Tabela:
nomeCliente <- c("Marcos de Aguiar", "Paula Miranda", "Emilio Santos", "Pryscilla de Albuquerque")
salario <- c("4000", "2500", "1200", "3400")
idade <- c(44, 56, 76, 40)


Emprestimos <-cbind(nomeCliente, salario, idade)

#2.Modificando um salário:
Emprestimos[2,2] <- c("5500.33")

#3.Salário nruto para líquido:
Emprestimos[,2] <-as.numeric(Emprestimos[,2])-as.numeric(Emprestimos[,2])*0.3

#4.Média salarial:
mean(as.numeric(Emprestimos[,2]))

#5.Modificar todos os nomes:
colnames(Emprestimos) <- c("NomeCliente", "SalarioLiquido", "Idade")
