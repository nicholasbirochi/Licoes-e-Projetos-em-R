### Operações com Fatores - parte 1
produtos_online<-factor(c("Produto A","Produto C","Produto A","Produto B", "Produto C","Produto B"))
produtos_pres<-factor(c("Produto C","Produto C","Produto D","Produto A", "Produto A"))

library(forcats)

vendas<-fct_c(produtos_online,produtos_pres)

### Alterar o label dos níveis do fator
# opção 1
genero_ft<-factor(c(1,2,2,2,2,3,1,1))
plot(genero_ft)
a<-lvls_revalue(genero_ft,c("Masculino","Feminino","Outros"))
plot(a)

# opção 2
levels(genero_ft)<-c("Masculino","Feminino","Outros")
plot(genero_ft)


#### Modificando níveis do fator
# Opção 3: 
genero_ft<-factor(c(1,1,3,2,3,1,1,2,3))
plot(genero_ft)

a<-fct_recode(genero_ft,Feminino="2", Outros="3",Masculino="1")
plot(a)