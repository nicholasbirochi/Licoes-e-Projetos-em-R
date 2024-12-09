resumo$quant_Abr <-c(130,300,240)
resumo$capacidade <-c(460,300,200)

#if(condicao){
#  comando
#}
#else{
#  comando
#}
i <-2
if(resumo$quant_Abr[i]<=resumo$capacidade[i])
{
  print("Pedido Aprovado, valor menor que a capacidade!")
}
if(resumo$quant_Abr[i]==resumo$capacidade[i])
{
  print("Pedido Aprovado, valor igual a capacidade!")
}else
{
  print("Pedido Reprovado!")
}

x<-c("GANHOU","PERDEU","GANHOU")
for(i in 1:3)
{
  cat("Jogada",i," -->")
  
  if(x[i]=="GANHOU")
  {
    print("Hum! Ganhei")
  }
  else
  {
    print("Nao deu")
  }
}