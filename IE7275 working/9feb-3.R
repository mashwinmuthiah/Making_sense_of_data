View(Harman23.cor)
h23<-Harman23.cor
library(psych)
covariances <- h23$cov
correlations<-cov2cor(covariances)
fa.parallel(correlations,fa="both",n.obs =112,main = "scree plot")
fa(r=correlations,nfactors = 2,rotate = "none",fm="pa")
fa.varimax<-fa(correlations,nfactors = 2,rotate = "varimax",fm="pa")
fa.varimax
fa.varimax$weights
factor.plot(fa.varimax)
fa.diagram(fa.varimax,simple = FALSE)

fa.promax <-fa(correlations,nfactors = 2,rotate = "promax",fm="pa")
fa.promax$weights
factor.plot(fa.promax)
fa.diagram(fa.promax,simple = FALSE)
