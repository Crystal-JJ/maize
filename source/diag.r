a<-read.table("diag-gene.txt",header=F)
b<-t(a)
class(b)
b1<-as.vector(b)
class(b1)
c<-diag(b1)
dim(c)
write.table(c,"D-gene.txt",sep="\t",row.names=F,col.names=F)

n<-read.table("diag-mRNA.txt",header=F)
m<-t(n)
class(m)
m1<-as.vector(m)
class(m1)
y<-diag(m1)
dim(y)
write.table(y,"D-mRNA.txt",sep="\t",row.names=F,col.names=F)

n<-read.table("diag-STRING.txt",header=F)
m<-t(n)
class(m)
m1<-as.vector(m)
class(m1)
y<-diag(m1)
dim(y)
write.table(y,"D-STRING.txt",sep="\t",row.names=F,col.names=F)

a<-read.table("diag-pearson.txt",header=F)
b<-t(a)
class(b)
b1<-as.vector(b)
class(b1)
c<-diag(b1)
dim(c)
write.table(c,"D-pearson.txt",sep="\t",row.names=F,col.names=F)
