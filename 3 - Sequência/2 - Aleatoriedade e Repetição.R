#sequências usando amostras aleatórias  
sample(1:30,10)

sample(1:30,10,replace = T)#Com repetição
sample(1:30,10,replace = F)#Sem repetição

doc_produtos<-100:150

doc_produtos[3]
doc_produtos[3:9]
doc_produtos[c(4,10)]

doc_produtos[3]<-1002