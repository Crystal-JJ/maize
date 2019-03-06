 a <- read.table("GSE27004_series_matrix_new2.txt",sep="\t",header=T)

 a1<-as.matrix(a)

 a2 <- a1[,1]

 a3 <- a[,-1]

 b <- scale(a3)

 c <- cbind(a2,b)

 write.table(c,"GSE27004_series_matrix_new3.txt",sep="\t",quote=F,row.names=F)



