# Teste de M?dias

# Apagar m?moria R

remove(list=ls())

# Indicar a pasta contendo os dados

setwd("local do arquivo")

# Leitura de arquivos xlsx

library(openxlsx)

# Criar um objeto para an?lise estat?stica

plantio<-read.xlsx("Dados Plantio.xlsx", sheet=1, colNames = TRUE)

attach(plantio)

# Ativar pacote para an?lise estat?stica

library(ExpDes.pt)

library(clusterSim)
# Analises Teste de Tukey ao n?vel de 5% de probabilidade

# DAP m?dio por Tratamento

dic(trat = Tratamento, resp = DAP, quali = T, mcomp = "tukey", hvar = "levene")

normal<- data.Normalization (DAP,type="n11",normalization="column")

hist(normal)

anscombetukey(DAP,TRATAMENTO, glres = 3, qmres = 36, qmres= 5.2118, sqtrat = 21.021, sqbloco = 
  
tukey(y = DAP, trt = Tratamento, DFerror = 36, SSerror = 187.625, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = DAP, trat = Tratamento, glres = 36, SQres = 187.625, gltrat = 3, SQtrat = 21.021)

# M?dia da Altura Total por Tratamento

dic(trat = Tratamento, resp = HTA, quali = T, mcomp = "tukey", hvar = "levene")

tukey(y = HTA, trt = Tratamento, DFerror = 36, SSerror = 17.224, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = DAP, trat = Tratamento, glres = 36, SQres = 17.224, gltrat = 3, SQtrat = 2.481)

# Altura m?dia dos Fustes por Tratamento

dic(trat = Tratamento, resp = HF, quali = T, mcomp = "tukey")

tukey(y = HF, trt = Tratamento, DFerror = 36, SSerror = 21.1321, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = HF, trat = Tratamento, glres = 36, SQres = 21.1321, gltrat = 3, SQtrat = 5.5871)

# N?mero m?dio de fustes por ?rvore

dic(trat = Tratamento, resp = NFA, quali = T, mcomp = "tukey")

tukey(y = NFA, trt = Tratamento, DFerror = 36, SSerror = 80.100, alpha = 0.05, group = T, main = NULL)

reg.poly(resp = NFA, trat = Tratamento, glres = 36, SQres = 80.100, gltrat = 3, SQtrat = 0.675)

# N?mero m?dio de varas por ?rvore

dic(Tratamento, NMV, quali = T, mcomp = "tukey")

tukey(NMV, Tratamento, DFerror = 36, SSerror = 64.2, alpha = 0.05, group = T, main = NULL)

reg.poly(NMV, Tratamento, glres = 36, SQres = 64.2, gltrat = 3, SQtrat = 4.9)

# N?mero m?dio de varas por ?rvore por hectare

dic(Tratamento, NMVHA, quali = T, mcomp = "tukey")

tukey(NMVHA, Tratamento, DFerror = 36, SSerror = 273600000, alpha = 0.05, group = T, main = NULL)

reg.poly(NMVHA, Tratamento, glres = 36, SQres = 273600000, gltrat = 3, SQtrat = 1442736000)

# N?mero m?dio de estacas por ?rvore

dic(Tratamento, NME, quali = T, mcomp = "tukey")

tukey(NME, Tratamento, DFerror = 36, SSerror = 9.500, alpha = 0.05, group = T, main = NULL)

reg.poly(NME, Tratamento, glres = 36, SQres = 9.500, gltrat = 3, SQtrat = 2.475)

# N?mero m?dio de estacas por ?rvore por hectare

dic(Tratamento, NMEHA, quali = T, mcomp = "tukey")

tukey(NMEHA, Tratamento, DFerror = 36, SSerror = 29840000, alpha = 0.05, group = T, main = NULL)

reg.poly(NMEHA, Tratamento, glres = 36, SQres = 29840000, gltrat = 3, SQtrat = 684000)

