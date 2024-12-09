####FOR:
#for (i in 1:10){
#  comando
#}

resumo$quant_Abr <-c(200,150,430)

#Revisão de cada pedido:
for (i in 1:nrow(resumo))
{
  cat("Você pediu",resumo$quant_Abr[i],"unidades ao fornecedor:", resumo$fornecedores[i],".\n")
}

####WHILE:
#while(condition){
#  comando
#}
i <-1
while (i<=nrow(resumo))#enquanto...
{
  cat("Você pediu",resumo$quant_Abr[i],"unidades ao fornecedor:", resumo$fornecedores[i],".\n")
  i <-i+1
}

k <-0
while (k==0)
{
  print("Deseja inserir mais algum aluno: Sim(0) Não(qualquer outro valor)")
  k <-scan()
}