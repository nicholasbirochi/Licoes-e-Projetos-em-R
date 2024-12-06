##### Reordenando os níveis 
escolaridade<- factor(c("Superior","Fundamental","Fundamental",
                        "Pós-graduado","Ensino_Médio","Superior"))
plot(escolaridade)

a<-fct_relevel(escolaridade,c("Fundamental","Ensino_Médio","Superior","Pós-graduado"))
plot(a)

###### 
#CRITÉRIOS PARA ORDENAR OS NÍVEIS DO FATOR
#- Ordem alfabética    
#- Ordem Racional        Ensino médio < Superior <  Mestrado < Doutorado
#- Ordenar por uma variável externa

faturamento<-c(30,24,12,40,20,30,44,53)
escolaridade<-factor(c("Fundamental","Superior","Mestrado","Doutorado","Doutorado",
                       "Fundamental","Mestrado","Doutorado"))

#fundamental = 30, 30 ---> mean = 30    sum = 60
#Superior = 24  (mean = sum)
#Doutorado = 53, 40 , 20  --> média = 37,7   sum = 113
#mestrado = 12 , 44   mean=28   sum=56


#media:      Superior < Mestrado < Fundamental < Doutorado
#Sum:        Superior < Mestrado < Fundamental < Doutorado 


#Quem tem maior faturamento?  Fundamental, Superior, etc...?

fct_reorder(escolaridade,faturamento,mean)  
fct_reorder(escolaridade,faturamento,sum)  
