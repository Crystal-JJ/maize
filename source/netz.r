 b<-read.table("y-mRNA1.txt",sep="\t",header=T)
  b$ptile = rank(b$score) / nrow(b)
  m = min( b$ptile ) / 2.0
  b$ptile  = b$ptile  - m

   b$netz = qnorm(1 - b$ptile,lower.tail=FALSE)

  d = b[order(-b$netz,b$netz),]

write.table(d,"netz-mRNA.txt",sep="\t",quote=F)
