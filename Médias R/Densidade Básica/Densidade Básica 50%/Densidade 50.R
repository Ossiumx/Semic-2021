# Teste de M?dias

# Apagar m?moria R

remove(list=ls())

# Indicar a pasta contendo os dados

setwd("Colocar o endere?o do local onde o arquivo est?")

# Leitura de arquivos xlsx

library(openxlsx)

# Criar um objeto para an?lise estat?stica

densidade<-read.xlsx("Densidade 50.xlsx", sheet=1, colNames = TRUE)

attach(densidade)

# Ativar pacote para an?lise estat?stica

library(ExpDes.pt)

# Analises Teste de Tukey ao n?vel de 5% de probabilidade

# Densidade b?sica

# M?dula

dic(trat = Tratamento, resp = Medula, quali = T, mcomp = "tukey")

tukey(y = Medula, trt = Tratamento, DFerror = 12, SSerror = 0.022205, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Medula, trat = Tratamento, glres = 12, SQres = 0.022205, gltrat = 3, SQtrat = 0.013382)

# Meio

dic(trat = Tratamento, resp = Meio, quali = T, mcomp = "tukey")

tukey(y = Meio, trt = Tratamento, DFerror = 12, SSerror = 0.055580, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Meio, trat = Tratamento, glres = 12, SQres = 0.055580, gltrat = 3, SQtrat = 0.051765)

# Casca

dic(trat = Tratamento, resp = Casca, quali = T, mcomp = "tukey")

tukey(y = Casca, trt = Tratamento, DFerror = 12, SSerror = 0.046067, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Casca, trat = Tratamento, glres = 12, SQres = 0.046067, gltrat = 3, SQtrat = 0.022932)