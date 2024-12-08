#Nessário para a criação:
a <-as.factor(a)  #transforma sua variável "a" em um fator
b <-as.character() #transforma sua variável "b" em um vetor de texto
c <-as.numeric(c)  #transforma sua variável "c" em um vetor de números


#####  Modificando o DataFrame
fornecedores <-c("A","B","E","D","X")
quant_Jan <-c(320,230,100,340,10)
quant_Fev <-c(220,630,60,50,60)
quant_Mar <-c(520,430,100,34,10)

resumo <-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe

str(resumo)  #tipos corretos das variáveis


#Pela outra forma...
resumo_1 <-cbind(fornecedores,quant_Jan,quant_Fev,quant_Mar)
resumo_1 <-as.data.frame(resumo_1)

str(resumo_1)  #...tudo é convertido para fator(sendo necessário uma correção nas variáveis)...

######## uma breve operação:
resumo_1$quant_Fev + 10  #Não é possível porque está como categórica
#para corrigir esta conversão automática(transformando os valores em numéricos)...
resumo_1$quant_Jan <- as.numeric(as.character(resumo_1$quant_Jan))
resumo_1$quant_Fev <- as.numeric(as.character(resumo_1$quant_Fev))
resumo_1$quant_Mar <- as.numeric(as.character(resumo_1$quant_Mar))

str(resumo_1)


#==============================================================================#
#####  Modificando o DataFrame
fornecedores<-c("A","B","E","D","X")
quant_Jan<-c(320,230,100,340,10)
quant_Fev<-c(220,630,60,50,60)
quant_Mar<-c(520,430,100,34,10)

resumo <-data.frame(fornecedores,quant_Jan,quant_Fev,quant_Mar)  ### Adicionei uma forma mais direta de criação de um dataframe
str(resumo)  #tipos corretos das variáveis

resumo$quant_Jan[5] <-100

resumo$quant_Fev[2:4] <-c(640,75,60)

resumo$quant_Mar[c(1,4)] <-c(130,400)

resumo$fornecedores <-c("Camil","Zaeli","Tio João","Danone","Liza")



#==============================================================================#
##Adicionar variáveis ao Dataframe:
resumo$quant_Abril <-c(230,250,140,320,110)

##Remover variáveis do Dataframe:
resumo <-resumo[,-5]


#outra situação...
##Adicionando e removendo casos:
resumo[6,] <-c("Friboi",0,0,55)
resumo <- resumo[-6,]
resumo <-resumo[-(c(1,4)),]