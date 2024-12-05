#Arrays:
#array(Matrizes ou Vetores, dimensão[l,c,m(m= quantidades  de matrizes)], nomesdadimensões)
A <-matrix(1:20,4,5)
array(A, dim = c(4,5,2))
array(A, dim = c(4,5))
array(0, dim = c(3,4,2))
array(c("TV", "Geladeira", "Rack"), dim = c(3,2,3))#são necessárias as repetições para completar a Matriz...


#Criação de Vetores:
vendas <-c(12,24,30)
produtos <-c("TV", "Geladeira", "Cama")
array(c(produtos, vendas), dim = c(3,2,2))
vendasTotais <-array(c(produtos, vendas), dim = c(3,2,3))


#Modificando Nomes e criando um array:
nomesLinhas <-c("Marcos", "Joao", "Maria")
nomesVariaveis <-c("Produtos", "Quantidade")
nomesMatrizes <-c("Janeiro", "Fevereiro", "Março")
vendasTotais <-array(c(produtos,vendas), dim = c(3,2,3), dimnames = list(nomesLinhas, nomesVariaveis, nomesMatrizes))