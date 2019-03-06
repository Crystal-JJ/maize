
 a <- read.table("netz-gene-order.txt",header=F)
 b <- read.table("netz-mRNA-order.txt",header=F)
 c <- read.table("netz-pearson-order.txt",header=F)
 d <- read.table("netz-STRING-order.txt",header=F)
 e <- read.table("genez-order.txt",header=F)
 f <- read.table("net-name.txt",header=F) 

 a1 <- 1*a
 b1 <- 1*b
 c1 <- 1*c
 d1 <- 1*d
 e1 <- 1*e

 x <- a1+b1+c1+d1+e1

 y <- cbind(f,x)

 write.table(y,"result11111.txt",sep="\t",col.names=F,row.names=F,quote=F)
