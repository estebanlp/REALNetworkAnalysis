## REAL Network Analysis
rm(list=ls())
#install.packages("sna")
#install.packages("network")
#install.packages("igraph")
library(sna)
library(foreign)
library(network)
library(igraph)

academicNet<-read.csv("AcademicNet.csv")[,2:117]
rownames(academicNet)<-colnames(academicNet)
academicNet<-ifelse(is.na(academicNet[,]=="TRUE"),0,1)
acaNet<-network(academicNet,directed=TRUE,matrix.type="adjacency")
plot(acaNet)

acaNet2<-graph.adjacency(academicNet,mode="directed")
acaEdge<-get.edgelist(acaNet2)
write.csv(acaEdge,"acaEdge.csv")
plot(acaNet2)
