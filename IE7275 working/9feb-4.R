View(Harman74.cor)
h74<-Harman74.cor
library(psych)
covariances <- h74$cov
correlations<-cov2cor(covariances)
fa.parallel(correlations,fa="both",n.obs =112,main = "scree plot")
fa(r=correlations,nfactors = 2,rotate = "none",fm="pa")
#orthogonal rotation
fa.varimax<-fa(correlations,nfactors = 4,rotate = "varimax",fm="pa")
fa.varimax
fa.varimax$weights
factor.plot(fa.varimax)
fa.diagram(fa.varimax,simple = FALSE)
#oblique rotation
fa.promax <-fa(correlations,nfactors = 2,rotate = "promax",fm="pa")
fa.promax
fa.promax$weights
factor.plot(fa.promax)
fa.diagram(fa.promax,simple = FALSE)

