library (openxlsx)

require ("gdata")

library ("ggplot2")

require ("ggpubr")

require ("ggpmisc")

require ("gridExtra")

biomassa<- read.xlsx("Quantificação de Biomassa.xlsx", sheet = 1, colNames = T)

folhas<- read.xlsx("FolhaS.xlsx", sheet = 1, colNames= T)

attach(biomassa)

ggplot(biomassa, aes(y=Fuste,x= Tratamento)) +
  geom_point(size=2.5,pch=21,col="red", bg="red") +
  geom_smooth(method = "lm", formula = y~poly(x,2,raw=T), se = F, color="black") +
  stat_poly_eq(formula = y ~ poly(x,2[],raw=T), label.y= 0.9, 
  eq.with.lhs = "italic(hat(Y))~'='~", color = "black", 
  aes(label = paste(..eq.label.., ..rr.label.., sep = "*plain(\",\")~")), parse = T)+
  theme_test() + xlab(expression('Tratamentos'))+
  ylab(expression('Biomassa dos Ramos'~(Kg~árvore^{-1})))

gráfico2<-ggplot(biomassa, aes(y=Galho,x= Tratamento)) +
  geom_point(size=2.5,pch=21,col="red", bg="red") +
  geom_smooth(method = "lm", formula = y~poly(x,2,raw=T), se = F, color="black") +
  stat_poly_eq(formula = y ~ poly(x,2[],raw=T), label.y= 0.9, 
               eq.with.lhs = "italic(hat(Y))~'='~", color = "black", 
               aes(label = paste(..eq.label.., ..rr.label.., sep = "*plain(\",\")~")), parse = T)+
  theme_test() + xlab(expression('Tratamentos'))+
  ylab(expression('Biomassa dos Ramos'~(Kg~árvore^{-1})))

ggpubr::ggarrange(gráfico1,gráfico2, nrow=2, ncol=2)

library(cowplot)
cowplot::plot_grid(gráfico1,gráfico2,
                   nrow = 2, align = "hv")
