# Teste de Médias

# Apagar mémoria R

remove(list=ls())

# Indicar a pasta contendo os dados

setwd("C:/Users/Ewerton/Documents/MEGA/Ufersa/Projetos Ufersa/Manejo/Projeto 2021 Bolsa/Médias R/Densidade Básica")

# Leitura de arquivos xlsx

library(openxlsx)

# Criar um objeto para análise estatística

densidade<-read.xlsx("Densidade Básica 0.xlsx", sheet=1, colNames = TRUE)

attach(densidade)

# Ativar pacote para análise estatística

library(ExpDes.pt)

# Analises Teste de Tukey ao nível de 5% de probabilidade

# Densidade básica

# Medula

dic(trat = Tratamento, resp = Medula, quali = T, mcomp = "tukey")

tukey(y = Medula, trt = Tratamento, DFerror = 12, SSerror = 0.059900, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Medula, trat = Tratamento, glres = 12, SQres = 0.059900, gltrat = 3, SQtrat = 0.028781)

# Meio

dic(trat = Tratamento, resp = Meio, quali = T, mcomp = "tukey")

tukey(y = Meio, trt = Tratamento, DFerror = 12, SSerror = 0.042789, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Meio, trat = Tratamento, glres = 12, SQres = 0.042789, gltrat = 3, SQtrat = 0.006646)

# Casca

dic(trat = Tratamento, resp = Casca, quali = T, mcomp = "tukey")

tukey(y = Casca, trt = Tratamento, DFerror = 12, SSerror = 0.034274, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = Casca, trat = Tratamento, glres = 12, SQres = 0.034274, gltrat = 3, SQtrat = 0.005584)