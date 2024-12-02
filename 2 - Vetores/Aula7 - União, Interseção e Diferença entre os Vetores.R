# União, Interseção e Diferenças entre vetores
vendedor1<-c("Nike","Adidas","Olympikus")

vendedor2<-c("Adidas","Mizuno","Topper")

###Operações entre os vetores:
##Na união não há repetição de valores:
union(vendedor1,vendedor2)

##Diz quais são valores que se repetem:
intersect(vendedor1,vendedor2)

##Diz quais são valores que não se repetem:
#Quais são as marcas que somente o "vendedor2" conseguiu vender...
setdiff(vendedor2,vendedor1)
#Quais são as marcas que somente o "vendedor1" conseguiu vender...
setdiff(vendedor1,vendedor2)