######## Construindo uma função
#### 1 - Cadastre pedidos novos (continuar cadastrando até que o usuário interrompa)
#### 2 - Comparar os pedidos de acordo com o estoque de cada fornecedor


#Fazer uma tabela com esses elementos: "Nome, Preço, capacidade":
tabela_f <-resumo[,c(1,6)]
tabela_f$Preço <-c(23,44,20)


novos_pedidos <-function(nome, tabela_fornecedores)
{
  meus_pedidos <-c()
  k <-0
  
  while (k==0)
    {
    print("----------- NOVO PEDIDO ------------\n")
    cat("Temos ",nrow(tabela_fornecedores),"fornecedores cadastrados. \n")
    
    for(i in 1:nrow(tabela_fornecedores))
    {
      cat("Quantas quantidade você deseja pedir a ",tabela_fornecedores$fornecedores[i],"? \n")
      meus_pedidos[i] <-scan(n=1)  #cadastro dos pedidos
      
      # APROVANDO OU NÃO O PEDIDO SOLICITADO:
      # Se a quantidade for muito baixa (abaixo do limite mínimo = 10% da capacidade)
      if(meus_pedidos[i]<0.1*tabela_fornecedores$capacidade[i])
      {
        cat("Pedido Muito baixo. Ele deve ser maior que ",0.1*tabela_fornecedores$capacidade[i],"unidades. \n" )
      }
      else
      {
        # aprovando ou não o pedido solicitado
        if(meus_pedidos[i]<=tabela_fornecedores$capacidade[i])
        {
          print("Pedido Enviado com Sucesso!")
        }
        if(meus_pedidos[i]>tabela_fornecedores$capacidade[i])
        {
          cat("Pedido ACIMA do estoque máximo. O pedido deve ser no máximo", tabela_fornecedores$capacidade[i],"unidades. \n" )
        }
      }
    } #fim do for
    print(" ----- Revise seu pedido ------ \n")
    tabela_fornecedores$Pedidos<-meus_pedidos
    print(tabela_fornecedores)
    
    print("---- DIGITE 0 (Continuar pedidos) ---- 1 (Finalizar pedido)")
    k <-scan(n=1)
  }#fim do while
  return()
} #fim da função

novos_pedidos(nome="Isaias", tabela_fornecedores = tabela_f)