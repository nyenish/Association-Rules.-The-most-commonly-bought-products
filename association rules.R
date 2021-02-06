#association rules

install.packages("arules")
install.packages("arulesViz")
install.packages("arulesCBA")
library(ggplot2)
library(readr) 
library(arules)
library(arulesViz)

setwd("D:\\R and R Studio\\Association Rules")
getwd()

data1<-read.csv("dataset.csv")

data<-read.csv("dataset.csv", header=TRUE, sep=";")
names(data)


system("ls ../input")
al<- read.csv('dataset.csv', header=F)
str(al)
al1<-al[,1:6]

alnan<-as(al1, "transactions")
rule<-apriori(alnan, parameter = list(minlen=2, maxlen=4, supp=0.001, conf=0.001))

inspect(alnan[1:3])

inspect(yontem[1:5])

rule<-sort(rules, by="support", decreasing = T)
inspect(rule[1:5])


plot(yontem, measure=c("confidence", "lift"), shading="support")


plot(yontem[1:5], method="matrix", measure="lift")

plot(yontem[1:5], method="matrix3D", measure="lift")

satylan <- head(sort(yontem, by="lift"), 5)
plot(satylan, method="graph")

plot(satylan, method="paracoord")


