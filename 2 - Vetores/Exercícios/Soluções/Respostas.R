#Questão1:
clientes <-c("Marcos de Aguiar", "Paula Miranda", "Emilio Santos", "Priscila de Albuquerque")

#Questão2:
clientes[match("Priscila de Albuquerque", clientes)] <-c("Pryscilla de Albuquerque")

#Questão3:
emprestimos <-c(4000, 2500, 1200, 3400)

#Questão4:
emprestimos <-emprestimos - (emprestimos*30/100)