
 a <- read.table("allNN_nolabel.txt",sep="\t",header=F)
 b <- read.table("label.txt",sep="\t",header=F)
 b1 <- as.factor(b)

 for (i in 1:nrow(a)){

 a1 <- as.numeric(a[i,])

 c <- data.frame(a1,b1)

 score_aov<-aov(a1~b1,data = c)

 x <- anova(score_aov)

 x1 <- x$ 'Pr(>F)'

 x2 <- as.matrix(x1)

 x3 <- x2[1,]

 write.table(x3,"gene_p.txt",sep = "\t", append=T ,quote=F, col.names=F, row.names=F)

}





