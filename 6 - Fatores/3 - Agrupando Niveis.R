#### Agrupando níveis do fator
como_soube<-factor(c("Internet","INTERNET","net","Google","Pesquisa na Web","amigo","amiga","uma pessoa"))

a<-fct_collapse(como_soube,Internet=c("Internet","INTERNET","net","Google","Pesquisa na Web"),
                Amigo=c("amigo","amiga","uma pessoa") ) 
plot(a)


### Agrupando fatores com maior frequência
estado_civil<-factor(c("solteiro","solteiro","viúvo","divorciado","solteiro","casado","casado",
                       "união estável","viúvo"))

plot(estado_civil)

a<-fct_lump(estado_civil,2,other_level = "Outros")  #2 classes principais + "Outros"
plot(a)

b<-fct_lump(estado_civil,3,other_level = "Outros")  #3 classes principais + "Outros"
plot(b)

