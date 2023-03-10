# Teste de M?dias

# Apagar m?moria R

remove(list=ls())

# Indicar a pasta contendo os dados

setwd("C:/Users/Ewerton/Documents/MEGA/Ufersa/Projetos Ufersa/Manejo/Projeto 2021 Bolsa/M?dias R")

# Leitura de arquivos xlsx

library(openxlsx)

# Criar um objeto para an?lise estat?stica

Quantificar<-read.xlsx("Quantifica??o de Biomassa.xlsx", sheet=1, colNames = TRUE)

attach(Quantificar)

# Ativar pacote para an?lise estat?stica

library(ExpDes.pt)

# Analises Teste de Tukey ao n?vel de 5% de probabilidade

# An?lise Biomassa Verde Total (Kg)

dic(Tratamento, Biomassa.Verde.Total, quali = T, mcomp = "tukey")

tukey(y = Biomassa.Verde.Total, trt = Tratamento, DFerror = 12, SSerror = 3337.8, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Biomassa.Verde.Total, trat = Tratamento, glres = 12, SQres = 3337.8, gltrat = 3, SQtrat = 1867.7)

# An?lise Biomassa (Kg)

dic(trat = Tratamento, resp = B.Total, quali = T, mcomp = "tukey")

tukey(y = B.Total, trt = Tratamento, DFerror = 12, SSerror = 2275.3, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = B.Total, trat = Tratamento, glres = 12, SQres = 2275.3, gltrat = 3, SQtrat = 1450.3)

# An?lise Biomassa Fuste (Kg)

dic(trat = Tratamento, resp = Fuste, quali = T, mcomp = "tukey")

tukey(y = Fuste, trt = Tratamento, DFerror = 12, SSerror = 1204.6, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Fuste, trat = Tratamento, glres = 12, SQres = 1204.6, gltrat = 3, SQtrat = 501.21)

# An?lise Biomassa Folha (Kg)

dic(trat = Tratamento, resp = Folha, quali = T, mcomp = "tukey")

tukey(y = Folha, trt = Tratamento, DFerror = 12, SSerror = 9.2299, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Folha, trat = Tratamento, glres = 12, SQres = 9.2299, gltrat = 3, SQtrat = 4.3916)

# An?lise Biomassa Ramos (Kg)

dic(trat = Tratamento, resp = Galho, quali = T, mcomp = "tukey")

tukey(y = Galho, trt = Tratamento, DFerror = 12, SSerror = 186.28, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Galho, trat = Tratamento, glres = 12, SQres = 186.28, gltrat = 3, SQtrat = 213.42)

# An?lise Biomassa Total por Hectare (T)

dic(trat = Tratamento, resp = B.Total.hectare, quali = T, mcomp = "tukey", sigT = 0.5, sigF = 0.5)

tukey(y = B.Total.hectare, trt = Tratamento, DFerror = 12, SSerror = 1.2373e+10, alpha = 0.05, group = T, main = NULL)

# An?lise Biomassa Fuste por hectare (Kg)

dic(trat = Tratamento, resp = B.Fuste.hectare, quali = T, mcomp = "tukey", sigT = 0.5, sigF = 0.5)

tukey(y = Fuste, trt = Tratamento, DFerror = 12, SSerror = 1204.6, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Fuste, trat = Tratamento, glres = 12, SQres = 1204.6, gltrat = 3, SQtrat = 501.21)

# An?lise Biomassa Folha por hectare (Kg)

dic(trat = Tratamento, resp = B.Folha.hectare, quali = T, mcomp = "tukey", sigT = 0.5, sigF = 0.5)

# An?lise Biomassa galho por hectare (Kg)

dic(trat = Tratamento, resp = B.Galho.hectare, quali = T, mcomp = "tukey", sigT = 0.5, sigF = 0.5)

# An?lise Biomassa Verde Total (Kg)

dic(Tratamento, B.Verde.Total.Hectare, quali = T, mcomp = "tukey", sigT = 0.5, sigF = 0.5)




