# Curiosidades em Matrizes (parte 2):
2 X = 10

solve(2,10)

---
  3X + 2Y = 8
1X + 1Y = 2

linha1<-c(3,2,8)
linha2<-c(1,1,2)
A<-rbind(linha1,linha2)
solve(A[,1:2],A[,3])#matriz inversa

det(A[,-3])#determinante

t(A)# matriz transposta