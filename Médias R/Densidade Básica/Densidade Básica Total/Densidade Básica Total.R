# Teste de Médias

# Apagar mémoria R

remove(list=ls())

# Indicar a pasta contendo os dados

setwd("Colocar o endereço do local onde o arquivo está")

# Leitura de arquivos xlsx

library(openxlsx)

# Criar um objeto para análise estatística

densidade<-read.xlsx("Densidade Básica Total.xlsx", sheet=1, colNames = TRUE)

attach(densidade)

# Ativar pacote para análise estatística

library(ExpDes.pt)

# Analises Teste de Tukey ao nível de 5% de probabilidade

# Densidade básica

a<- dic(trat = Tratamento, resp = Densidade , quali = F, mcomp = "tukey")

tukey(y = Densidade, trt = Tratamento, DFerror = 12, SSerror = 0.53122, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Densidade, trat = Tratamento, glres = 12, SQres = 0.53122, gltrat = 3, SQtrat = 0.89707)

graficos(a, grau = 3)


