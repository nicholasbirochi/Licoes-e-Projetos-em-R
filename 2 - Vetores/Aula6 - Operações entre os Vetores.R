##Operações com Vetores
vendas<-c(12,15,3,5)

##Tamanho do vetor:
length(vendas)

##Fazendo a mesma operação para cada valor de dentro do vetor:
vendas + 2
vendas * 2
vendas / 2
vendas - 2
vendas ^ 2

#Operações mais complexas:
log(vendas)
mean(vendas)#média
max(vendas)#máximo
min(vendas)#mínimo
sqrt(vendas)#raiz
sort(vendas)#ordenação crescente...
sort(vendas,decreasing=T)#ordenação decrescente...

##Fazendo operações dentro do vetor e atualizando o vetor:
vendas <- vendas + vendas*2

vendas_v1 <- vendas
vendas_v2 <- c(15,30,40,23,34,31,80)

#Operações de cada valor de cada vendedor, qual vendeu mais em qual mês...
vendas_v1 + vendas_v2
vendas_v1 - vendas_v2
vendas_v1 - vendas_v2 + vendas*4

#Retirando o primeiro valor de dentro do Vetor:
vendas_v1[-1]

#Porém ao pedir para mostrar o vetor novamente ...
#vendas_v1 = 36 45  9 15
#... Você verá que o vetor não sofreu mudanças.  Isto acontece porque esta remoção
#é apenas na impressão do vendas_v1[-1]. Então para efetuar a remoção de forma
#definitiva você precisaria ATUALIZAR o vetor:
vendas_v1 <- vendas_v1[-1]

vendas_v1 + vendas_2  #erro porque eles tem tamanhos diferentes!!!