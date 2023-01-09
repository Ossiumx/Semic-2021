regressao.linear <- function(entradados, dep.var, indep.var, leg.x="Legenda X", leg.y="Legenda Y")
{
  
  theme_set(theme_bw())
  
  ggplot(entradados, aes(x=indep.var,y=dep.var)) + 
    geom_point(col="red",size=2.5,pch= 21, bg="red") + 
    geom_smooth(method = lm, col= "black", se=F) +
    stat_regline_equation(aes(label=paste(..eq.label..,..rr.label..,sep="~~"))) +
    labs( x =leg.x,
          y = leg.y )

}