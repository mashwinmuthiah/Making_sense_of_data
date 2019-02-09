#view the .dat file 
USJudgeRatings
#chanign the file name for east access
uj <- USJudgeRatings
View(uj)
#installing packages
install.packages("psych",dependencies=TRUE) 
install.packages(c("psych","GPArotation"),dependencies=TRUE)
library(psych)
fa.parallel(uj[,-1],fa="pc",n.iter = 100,show.legend = FALSE,main = "scree plot")
pc<-principal(uj[,-1],nfactors = 1)
pc
rc<-principal(r=uj,nfactors = 2,rotate = "varimax")
rc
pc<-principal(uj[,-1],nfactors = 1,score=TRUE)
head(pc$scores)
factor.plot(pc)
