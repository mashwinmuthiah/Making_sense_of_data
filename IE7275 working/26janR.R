#Question 1
#imporing file
ffire.df <- read.csv("forestfires.csv", header = TRUE)
#1.a
attach(ffire.df)
opar <- par(no.readonly=TRUE)
par(mfrow=c(2,2))
plot(temp,area,main = "area vs. temp")
plot(month,area,main = "area vs. month")
plot(DC,area,main = "area vs. DC")
plot(RH,area,main = "area vs. RH")
par(opar)
detach(ffire.df)
#1.b
hist(ffire.df$wind , freq = FALSE,xlab ="wind",main = "Histogram of Wind")
#1.c
summary(ffire.df$wind)
#1.d
lines(density(ffire.df$wind))
#1.e
library(ggplot2)
geom_density(ffire.df$wind,ffire.df$month)

View((ffire.df))
#1.f
pairs(~temp+RH+DC+DMC, data=ffire.df,
      main="Basic Scatter Plot Matrix")
#1.g
par(mfrow=c(1,3))
boxplot(ffire.df$wind)
boxplot(ffire.df$ISI)
boxplot(ffire.df$DC)
#1.H
par(mfrow=c(1,2))
hist(ffire.df$DMC)
x<-log(ffire.df$DMC)
hist(x)
par(opar)

#question 2
#importing file
twitter.df <- read.csv("M01_quasi_twitter.csv", header = TRUE)
View(twitter.df)
#2.a
hist(twitter.df$friends_count,xlab = "friends count",main = "Histogram of friends count")
#2.b
summary(twitter.df$friends_count)
#2.c

#2.d
library(scatterplot3d)
attach(twitter.df)
scatterplot3d(created_at_year, education, age , main = "3D scatter plot")

#2.e
par(mfrow=c(1, 2)) 
slice<-c(650, 1000,900,300,14900)
labs<-c("UK", "Canada","India", "Australia","US")
pct <- round(slice/sum(slice)*100)
lbls2 <- paste(labs, " ", pct, "%", sep="")
pie(slice, labels=lbls2, col=rainbow(length(lbls2)),radius = 1,main="Pie Chart with Percentages") 
library(plotrix)
pie3D(slice, labels=lbls2,explode=0.5,radius = 1,main="3D Pie Chart ")
par(opar)

#2.f
d <- density(twitter.df$created_at_year)
plot(d, main="Kernel Density of Created year ")

#Question 3
#importing fie
raw.df <- read.csv("raw_data.csv", header = TRUE)
View(raw.df)
#3.a
Ndata<-scale(raw.df)
#3.b
boxplot(raw.df)
#3.c
boxplot(Ndata)
#3.d

#3.e
pairs(~A+B,data = raw.df,
      main="Basic Scatter Plot Matrix")

