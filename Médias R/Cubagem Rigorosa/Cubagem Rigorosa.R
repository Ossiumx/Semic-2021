# Teste de M?dias

# Apagar m?moria R

remove(list=ls())

# Indicar a pasta contendo os dados

setwd("C:/Users/Ewerton/Documents/MEGA/Ufersa/Projetos Ufersa/Manejo/Projeto 2021 Bolsa/M?dias R")

# Leitura de arquivos xlsx

library(openxlsx)

# Criar um objeto para an?lise estat?stica

Cubagem<-read.xlsx("Cubagem Rigorosa2.xlsx", sheet=1, colNames = TRUE)

attach(Cubagem)

# Ativar pacote para an?lise estat?stica

library(ExpDes.pt)

# Analises Teste de Tukey ao n?vel de 5% de probabilidade

# M?dia Volume Individual

dic(Tratamento, Volume.Individual, quali = T, mcomp = "tukey")

hist(Volume.Individual)

tukey(Volume.Individual, Tratamento, DFerror = 12, SSerror = 0.00239313, alpha = 0.05, group = T, main = NULL)

reg.poly(Volume.Individual, Tratamento, glres = 12, SQres = 0.00239313, gltrat = 3, SQtrat = 0.00044185)


# M?dia Volume Est?reo

dic(Tratamento, Volume.Estereo, quali = T, mcomp = "tukey")

tukey(Volume.Estereo, Tratamento, DFerror = 12, SSerror = 0.0235968, alpha = 0.05, group = T, main = NULL)

reg.poly(Volume.Individual, Tratamento, glres = 12, SQres = 0.0235968, gltrat = 3, SQtrat = 0.0043643)

# M?dia Volume por Hectare

dic(Tratamento, Volume.H, quali = T,  mcomp = "tukey")

tukey(Volume.H, Tratamento, DFerror = 12, SSerror = 16355.6, alpha = 0.05, group = T, main = NULL)

reg.poly(Volume.H, Tratamento, glres = 12, SQres = 16355.6, gltrat = 3, SQtrat = 6828.6)

# M?dia Volume por Est?reo po Hectare

dic(Tratamento, Volume.St.h, quali = T, mcomp = "tukey")

tukey(Volume.St.h, Tratamento, DFerror = 12, SSerror = 163809, alpha = 0.05, group = T, main = NULL)

reg.poly(Volume.St, Tratamento, glres = 12, SQres = 163809, gltrat = 3, SQtrat = 69110)

# M?dia do Incremento M?dio Anual

dic(Tratamento, IMA, quali = T, mcomp = "tukey")

tukey(IMA, Tratamento, DFerror = 12, SSerror = 96.630, alpha = 0.05, group = T, main = NULL)

reg.poly(IMA, Tratamento, glres = 12, SQres = 96.630, gltrat = 3, SQtrat = 40.369)