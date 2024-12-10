## -------------- PROJETO -------------- ##
cadastroAlunos <-function(z)
{
  Nome <-as.character()
  Prova1 <-as.numeric()
  Prova2 <-as.numeric()
  Prova3  <-as.numeric()
  Media <-as.numeric()
  Bool <-as.character()
  
  alunos <-data.frame(Nome, Prova1, Prova2, Prova3, Media, Bool)
  alunos$Nome <-as.character(alunos$Nome)
  alunos$Bool <-as.character(alunos$Bool)
  
  #Menu para organização e visualização do usuário:
  print("Esta função Realiza as seguintes Atividades:")
  print("1 - cadastra alunos")
  print("2 - Recebe suas notas")
  print("3 - Mostra sua média e diz se foi aprovado")
  
  #Recebe notas do aluno i nos 3 exercícios
  print("Cadastro de Alunos --> Digite 1:")
  x <-scan(n=1)
  i <-1
  while(x==1)
  {
    print("Nome: ")
    nome <-scan(what=character(),nmax=1)
    
    print("Nota 1:")
    Prova1 <-scan(n=1)
    
    print("Nota 2:")
    Prova2 <-scan(n=1)
    
    print("Nota 3:")
    Prova3 <-scan(n=1)
    
    cat("\nAluno:",nome)
    notas <-c(Prova1,Prova2,Prova3)
    cat("\nNota1:",Prova1,"\nNota2:",Prova2,"\nNota3:",Prova3)
    
    Media <-mean(notas)
    cat("\nMédia:", Media)
    
    if(Media>10)
    {
      cat("\nMédia acima de 10... alguma nota está incorreta!")
      break
    }
    if(Media>=7)
    {
      cat("\nAluno Aprovado!")
      Bool <-"Aprovado"
    }else
    {
      cat("\nAluno Reprovado!")
      Bool <-"Reprovado"
    }
    
    alunos[i,] <-c(nome,Prova1,Prova2,Prova3,Media,Bool)
    
    cat("\nCadastrar outro aluno?   Sim(1)    Não(0)")
    x <-scan(n=1)
    
    i <-i+1
  } #Fim do While
cat("\nObrigado!")
cat("\nBanco de Dados:\n")
alunos_df <-as.data.frame(alunos)
View(alunos_df)


return(alunos_df)
}#fim da função

cadastroAlunos()