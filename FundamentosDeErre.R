
vintedois = 22
vintedois
class(vintedois)
vinteum = 21L
vinteum
class(vinteum)

vinteum = 21i
vinteum
class(vinteum)

rm(vintedois)
vintedois
  
date()
Sys.Date()

data = Sys.Date()
data
data = as.character(data)
class(data)
data =  unlist(strsplit(data, "-"))
data
class(data)
data
rev(data)
paste(data, collapse='/')

data = Sys.Date()
data
format(data, format="%d/%m/%Y")
format(data, format="%A, %d de %B de %Y")

today <- date()
today
format(today, format="%B %d %Y %m")


tm <- as.POSIXlt(Sys.time(), "UTC", "%Y-%m-%dT%H:%M:%S")
tm
strftime(tm , "%Y-%m-%dT%H:%M:%S%z")


tm <- as.POSIXct(Sys.time(), "GMT", "%Y-%m-%dT%H:%M:%S")
tm
strftime(tm , "%Y-%m-%dT%H:%M:%S%z")


a = 1

#a = a + 2
a = a+1
a       


#datasets
data()
datasets::euro
euro
summary(euro)

datasets::USArrests
assaltos = USArrests
summary(assaltos)


#para saber quais são meus pacotes
data(package = .packages(all.available=TRUE))
library(cluster)
agriculture
help("agriculture")
summary(agriculture)
agriculture$y > 5
agriculture$y[agriculture$y > 10]
agriculture + 6
agriculture$y[agriculture$y > 10]
agriculture$y = agriculture$y + 6
agriculture
agriculture$y[agriculture$y > 10]
#primeira linha
agriculture[1,]
#primeiras tres linhas
agriculture[1:3,]
#primeira coluna
agriculture[,1]

USPersonalExpenditure
USPersonalExpenditure['Personal Care', 1]
USPersonalExpenditure['Personal Care', 2]

sort(agriculture$y)
sort(agriculture$y, decreasing = TRUE)
#os vetores em erre são listas c(1, 2, 3 4) c=combine

var = c(1, 2, 3, 4, 5)
var
var_tres = c(1, 2, 3)
var_tres
length(var_tres) <- length(var) # o vetor de duas possições passou a ter 5 posição com NA not available
var_tres
var_tres[4] = var[5]
var_tres[5] = var[4]
var
var_tres[c(2:3)] = 1
var_tres
var_tres[c(1,3,5)] = 3
var_tres

#Há linguagens com iniciam os vetores em 0 ou 1 como no link:
# https://en.wikipedia.org/wiki/Comparison_of_programming_languages_%28array%29#Array_system_cross-reference_list
  


matrix(c(1:6), nrow = 2)
matris = matrix(c(1:6), nrow = 2, byrow = F)
matris
dimnames(matris) = list(c('linha um', 'linha dois'), c('A', 'B', 'C'))
matris
matris["linha um", "B"]
matris["linha dois", "C"]

matris["linha dois", "C"] = 99
matris


# LISTAS #
lista = ability.cov
lista
lista$center[3]
class(lista$center)
class(lista$cov) # sendo uma matriz pode possuir elementos de distintos tipos
lista$cov[1,3]
lista[[1]][1,3]
lista$cov[1:6,3]
length(lista$cov[1,])
lista$cov[1:length(lista$cov[1,]),3]
tamanho = length(lista$cov[1,])
lista$cov[1:tamanho,3]
lista$cov[1:tamanho,1]


lista_dois = list(USPersonalExpenditure, lista$center, c(1,2,3,4,5,6), "Algum Texto")
lista_dois
lista_dois[[1]]
lista_dois[[3]]


# Dataframe
# o DATAFRAME PERMITE DIFERENTES TIPOS DE DADOS EM UMA MESMA COLUNA
# A MATRIZ PERMITE DIFERENTES COLUNAS COM DIFERENTES TIPOS DE DADOS, MAS UMA MESMA 
#COLUNA PODERÁ CONTER APENAS UM TIPO DE DADO

animals
animals["ant",]
animals[1,]
animals["ant",]
animals[,"fly"]
animals[,2]
animals$fly
animals$fly[2:5]
animals$fly[1:5]


head(DNase)
class(DNase$Run)
class(DNase$conc)
class(DNase$density)



indice = c(1:3)
nome = c('Fagner', 'Marcos', 'Ana')
masculino = c(T, T, F)
dados = data.frame(indice, nome, masculino)
dados
class(dados)
summary(dados)
class(dados$nome)

dados = edit(DNase)
head(dados)



fix(DNase)
head(DNase)


mst = ts(c(1:48), start = c(2010,1), end = c(2013,12), frequency = 12)
mst


# FATORES
#Variáveis categóricas ordinais, podem ser texto ou numero, não mais eficientes que texto

dias = factor(c(1:7), labels = c('Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'), ordered=TRUE)
dias



#
attach(cars)
mean(speed)
detach(cars)
mean(speed)

with(cars, mean(speed))
with(cars, mean(dist))
with(cars, mean(c(dist, speed)))


lista_de_dez = c(1:10)
lista_de_dez
lista_de_dez = seq(from=5, to=50, by=10)
lista_de_dez
lista_de_dez = seq(from=1, to=10, by=0.5)
lista_de_dez
lista_de_dez = seq(from=1, to=10,length.out= 5)
lista_de_dez
lista_de_dez = seq(from=1, to=10,length.out= 30)
lista_de_dez



teste = c(5,10,15,20)
teste
teste_dois = c(5,10,15,20, 30)
teste_dois
length(teste)
length(teste_dois)
length(teste) = length(teste_dois)
teste
length(teste)


vetor = lista_de_dez = seq(from=1, to=10,length.out= 10)
vetor
#digitar os dados numericos  do vetor
vetor_novo = scan()
vetor_novo

vetor_novo = scan(what = "character")
vetor_novo

dados = read.csv(file.choose(), sep = ",")


####################
carros = cars
save(carros, file = "carros.rdata")  
list.files()
rm(carros)
carros
load('carros.rdata')
carros


#####################
AirPassengers
cumsum(AirPassengers)
cummax(AirPassengers)
cumprod(AirPassengers)
cummin(AirPassengers)


#####################
#apply

apply(USPersonalExpenditure, 1, median)
apply(USPersonalExpenditure, 2, median)
apply(USPersonalExpenditure, 2, mean)
apply(USPersonalExpenditure, 2, max)
apply(USPersonalExpenditure, 2, min)


#####################
## TABELAS DE CONTINGENCIA
head(infert)
table(infert$education, infert$induced)

#####################
## NUMEROS ALEATORIOS
sample(8)
sample(1:1000, size = 5, replace = TRUE)
sample(1:10, size = 10, replace = FALSE)
