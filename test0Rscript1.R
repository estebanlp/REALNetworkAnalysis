## test0 for github
library(McSpatial)
library(CPAR)

data(datacook)
datacook <- datacook[datacook$population>0,]

fit1 <- cparmodel(lndens~dcbd,~dcbd,data=datacook,fn="lm")
plot(datacook$dcbd,datacook$lndens,xlab="Distance from the CBD",
     ylab="Log of Population Density")
o <- order(datacook$dcbd)
lines(datacook$dcbd[o], fit1$xb[o], col="red",lwd=4)
summary(fit1)