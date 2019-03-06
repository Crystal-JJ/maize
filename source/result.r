
 a <- read.table("netz-gene-order.txt",header=F)
 b <- read.table("netz-mRNA-order.txt",header=F)
 c <- read.table("netz-pearson-order.txt",header=F)
 d <- read.table("netz-STRING-order.txt",header=F)
 e <- read.table("genez-order.txt",header=F)
 f <- read.table("net-name.txt",header=F) 

 a1 <- 0.3*a
 b1 <- 0.9*b
 c1 <- 0.5*c
 d1 <- 0.4*d
 e1 <- 0.2*e

 x <- a1+b1+c1+d1+e1

 y <- cbind(f,x)

 write.table(y,"result39542.txt",sep="\t",col.names=F,row.names=F,quote=F)

