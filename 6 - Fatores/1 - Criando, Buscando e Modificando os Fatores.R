install.packages("forcats")

####Fatores - Como criar, dois formatos:
genero <-c("2","2","1","1","2","3")
genero_ft <-as.factor(genero)
str(genero)
str(genero_ft)

a <-factor(c("2","2","1","1","2","3"))
str(a)

#Buscando dentro do fator:
#última posição:
genero_ft[length(genero_ft)]

#Modificando o fator(fator só usa números!):
genero_ft[2] <-3