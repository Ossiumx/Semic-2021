library(openxlsx)

library(ExpDes.pt)

Volume<-read.xlsx("Volume.xlsx", sheet = 1, colNames = T)

attach(Volume)

# Volume Individual em M³

dic(Tratamento, `Volume.Individual.por.M³`, quali = T, mcomp = "tukey", sigT = 0.05, sigF = 0.05)

# Volume Individual St

dic(Tratamento, Volume.Individual.St, quali = T, mcomp = "tukey")

# Volume Individual em M³ por hectare

dic(Tratamento, `Vol..M³.por.ha`, quali = T, mcomp = "tukey")

shapiro.test(modelo$residuals)

bartlett.test(modelo$residuals~Tratamento)

teste<-log10(`Vol..M³.por.ha`)

# Volume Individual St por hectare

dic(Tratamento, Vol.St.por.Ha, quali = T, mcomp = "tukey", hvar="samiuddin", sigT = 0.3, sigF = 0.3 )

with(Volume,dic(Tratamento,log(Vol.St.por.Ha), mcomp="tukey", sigF = 0.05))

# IMA
dic(Tratamento, IMA, quali = T, mcomp = "tukey", hvar="samiuddin", sigT = 0.3, sigF = 0.3)
