##Vendo todas as possibilidades possíveis entre esse dois vetores:
arroz_marcas<-c("Camil","Tio João","Prato Fino")
feijão_marcas<-c("Kicaldo","Milano","Urbano")

interaction(arroz_marcas,feijão_marcas)

##Outra maneira de ver todas as possibilidades:
a<-c("Camisa 1","Camisa 2")
b<-c("Calca 1","Calca 2","Calca 3")

expand.grid(a,b)