
# Acessando os elementos do Array

vendas_totais
dim(vendas_totais)

vendas_totais[linha,coluna,matriz]

vendas_totais[,,1]  #vendas Janeiro
vendas_totais[,,2]  #vendas Fevereiro
vendas_totais[,,3]  #vendas Março


vendas_totais[,1,]  # Coluna 1 de cada matriz = Produtos vendidos em cada mês
vendas_totais[,2,]  # Coluna 2 de cada matriz = Quantidades vendidas em cada mês

vendas_totais[1, ,]  # a Linha 1 de cada tabela = produção de Marcos (produtos e quantidades)
vendas_totais[2, ,]   # a Linha 2 de cada tabela = produção de João  (produtos e quantidades)
vendas_totais[3, ,]   # a Linha 3 de cada tabela = produção de Maria  (produtos e quantidades)

# Combinação de Dimensões

vendas_totais[,2,1]  #vendas Janeiro, quantidades
vendas_totais[1,,1]  
vendas_totais[1,2,1]  


vendas_totais[3,2,3]  

vendas_totais[2,1,2]
