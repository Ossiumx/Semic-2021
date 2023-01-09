# Teste de Médias

# Apagar mémoria R

remove(list=ls())

# Indicar a pasta contendo os dados

setwd("Colocar o endereço do local onde o arquivo está")

# Leitura de arquivos xlsx

library(openxlsx)

# Criar um objeto para análise estatística

densidade<-read.xlsx("Densidade 100.xlsx", sheet=1, colNames = TRUE)

attach(densidade)

# Ativar pacote para análise estatística

library(ExpDes.pt)

# Analises Teste de Tukey ao nível de 5% de probabilidade

# Densidade básica

# Médula

dic(trat = Tratamento, resp = Medula, quali = T, mcomp = "tukey")

tukey(y = Medula, trt = Tratamento, DFerror = 12, SSerror = 0.035266, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Medula, trat = Tratamento, glres = 12, SQres = 0.035266, gltrat = 3, SQtrat = 0.025637)

# Meio

dic(trat = Tratamento, resp = Meio, quali = T, mcomp = "tukey")

tukey(y = Meio, trt = Tratamento, DFerror = 12, SSerror = 0.049538, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Meio, trat = Tratamento, glres = 12, SQres = 0.049538, gltrat = 3, SQtrat = 0.005268)

# Casca

dic(trat = Tratamento, resp = Casca, quali = T, mcomp = "tukey")

tukey(y = Casca, trt = Tratamento, DFerror = 12, SSerror = 0.043403, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Casca, trat = Tratamento, glres = 12, SQres = 0.043403, gltrat = 3, SQtrat = 0.022764)
