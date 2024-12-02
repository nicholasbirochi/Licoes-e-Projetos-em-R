produtos <-c("TV", "Refrigerador", "Notebook", "Celular")
quantidades <-c(30, 36, 20, 15)

quantidades > 10
quantidades >= 20
quantidades > 10
quantidades <= 20
quantidades == 25
quantidades != 25

quantidades2 <- quantidades*2

quantidades == quantidades2
quantidades != quantidades2
quantidades > quantidades2
quantidades < quantidades2

quantidades[3] == 60

produtos == "TV"
#Ele vai somar cada um dos índices, já que eles recebem valores
#booleanos, então os "FALSOS" = 0 e "VERDADEIRO" = 1
sum(produtos == "TV")