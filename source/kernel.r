
 a1<-read.table("A-gene.txt",header=F)
 b1<-read.table("A-mRNA.txt",header=F)
 c1<-read.table("A-STRING.txt",header=F)
 d1<-read.table("A-pearson.txt",header=F)

 a<-read.table("D-gene.txt",header=F)
 b<-read.table("D-mRNA.txt",header=F)
 c<-read.table("D-STRING.txt",header=F)
 d<-read.table("D-pearson.txt",header=F)

 n <- a-a1
 n1<- 0.1*n

 m <- b-b1
 m1<- 0.1*m

 p <- c-c1
 p1<- 0.1*p

 q <- d-d1
 q1<- 0.1*q

 i<-read.table("I.txt",header=F)

 n2 <- -1*n1
 m2 <- -1*m1
 p2 <- -1*p1
 q2 <- -1*q1

 n3 <- i+n2
 m3 <- i+m2
 p3 <- i+p2
 q3 <- i+q2

 n4 <- solve(n3)
 m4 <- solve(m3)
 p4 <- solve(p3)
 q4 <- solve(q3)

 y<-read.table("y.txt",header=F)
 y0<-as.matrix(y)

 ygene <- n4%*% y0
 ymRNA <- m4%*% y0
 ySTRING <- p4%*% y0
 ypearson <- q4%*% y0

 write.table(ygene,"y-gene.txt",quote=F,row.names=F,col.names=F)
 write.table(ymRNA,"y-mRNA.txt",quote=F,row.names=F,col.names=F)
 write.table(ySTRING,"y-STRING.txt",quote=F,row.names=F,col.names=F)
 write.table(ypearson,"y-pearson.txt",quote=F,row.names=F,col.names=F)
