# Import data
dataset <- read.csv("Vertebral Column Data.csv")
library(psych)
# Remove Class column
filter.data <- dataset[,-7]

# Checking Missing values
sum(is.na(filter.data))

# Determine number of components
n.comp <- fa.parallel(filter.data)$nfact
# Multidimensional Scaling
scaled.data <- cmdscale(dist(filter.data))
head(scaled.data)
# Graph
pc <- principal(filter.data, nfactors = n.comp, scores = TRUE)
factor.plot(pc)
