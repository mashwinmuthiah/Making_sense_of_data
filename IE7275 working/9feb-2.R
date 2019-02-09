gi<-Glass_Identification_Data
View(gi)
library(psych)
fa.parallel(gi[,-1],fa="pc",n.iter = 100,show.legend = FALSE,main = "scree plot")
pc<-principal(gi[,-1],nfactors = 1)
pc
rc<-principal(r=gi,nfactors = 2,rotate = "varimax")
rc
pc<-principal(gi[,-1],nfactors = 1,score=TRUE)
head(pc$scores)
factor.plot(pc)
