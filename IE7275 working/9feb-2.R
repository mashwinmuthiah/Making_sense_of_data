gi<-Glass_Identification_Data
View(gi)
library(psych)
filter.data <- gi[,c(-1,-11)]
n.factor <- fa.parallel(filter.data,fa="pc")$nfact
pc <- principal(filter.data, nfactors = n.factor, rotate = "none", scores = TRUE)
pc
rc <- principal(filter.data, nfactors = n.factor, rotate = "varimax", scores = TRUE)
rc
pc<-principal(gi[,-1],nfactors = 1,score=TRUE)
head(pc$scores)
factor.plot(pc)



dataset <- read.csv ("Glass Identification Data.csv")
# Deleting ID and Class column
filter.data <- dataset[,c(-1,-11)]
# Determine number of components to extract
n.factor <- fa.parallel(filter.data)$nfact
# Extract components without rotation
pc <- principal(filter.data, nfactors = n.factor, rotate = "none", scores = TRUE)
pc
# Extract components with rotation
rc <- principal(filter.data, nfactors = n.factor, rotate = "varimax", scores = TRUE)
rc
# Compute scores
pc.score <- pc$scores
rc.score <- rc$scores
head(pc.score)
head(rc.score)
#plots
factor.plot(pc)
factor.plot(rc)
