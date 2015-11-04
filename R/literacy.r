literacy.data<-read.table(file="H:/R_WD/literacy.txt",header=TRUE)
literacy.data<-literacy.data[,-1]
literacy.summary<-apply(literacy.data, 2, table)
literacy.ans<-scan(file="H:/R_WD/literacy_ans.txt")
literacy.data[1,]==literacy.ans
literacy.data==rep(literacy.ans,each=dim(literacy.data)[1])
#apply(literacy.data==rep(literacy.ans,each=dim(literacy.data)[1]),1,sum,na.rm=TRUE)
#t(t(literacy.data)==literacy.ans)
#apply(t(t(literacy.data)==literacy.ans),1,sum,na.rm=TRUE)
apply(t(literacy.data)==literacy.ans,2,sum,na.rm=TRUE)
t(literacy.data)==literacy.ans
aggregate(t(literacy.data)==literacy.ans,list(as.factor(literacy.type)),sum)
