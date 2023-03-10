# Teste de M?dias

# Apagar m?moria R

remove(list=ls())

# Indicar a pasta contendo os dados

setwd("Colocar o endere?o do local onde o arquivo est?")

# Leitura de arquivos xlsx

library(openxlsx)

# Criar um objeto para an?lise estat?stica

densidade<-read.xlsx("Densidade B?sica Total.xlsx", sheet=1, colNames = TRUE)

attach(densidade)

# Ativar pacote para an?lise estat?stica

library(ExpDes.pt)

# Analises Teste de Tukey ao n?vel de 5% de probabilidade

# Densidade b?sica

a<- dic(trat = Tratamento, resp = Densidade , quali = F, mcomp = "tukey")

tukey(y = Densidade, trt = Tratamento, DFerror = 12, SSerror = 0.53122, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Densidade, trat = Tratamento, glres = 12, SQres = 0.53122, gltrat = 3, SQtrat = 0.89707)

graficos(a, grau = 3)


