### Operações para Dataframes
ncol(resumo)
nrow(resumo)
dim(resumo)
dim(resumo)[1] #linhas
dim(resumo)[2] #colunas

length(resumo$quant_Jan)
names(resumo)

View(resumo)

summary(resumo)
str(resumo)

resumo$quant_Jan <- as.numeric(resumo$quant_Jan)
resumo$quant_Fev <- as.numeric(resumo$quant_Fev)
resumo$quant_Mar <- as.numeric(resumo$quant_Mar)
str(resumo)

summary(resumo)

mean(resumo$quant_Jan)
median(resumo$quant_Jan)
sd(resumo$quant_Jan)