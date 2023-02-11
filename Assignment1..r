#S030-01-1925
#S030-01-1873
#Q1
x<-4
class(x) #class(x)is numeric 

#Q2
x<-c(4,TRUE)
class(x) #class(x)is numeric

#Q3
x<-c(1,3,5)
y<-c(3,2,10)
cbind(x,y)
#Q4
#elements of vectors all must be of the same data type 
#Q5
x<-list(2,"a","b",TRUE)
x[[1]]

#Q6
x<-1:4
y<-2
x+y

#Q7
x<-c(17,14,4,5,13,12,10)
x[x>10]<-4;x

#Q8
x<-c(3,6,8);x
x/2
x^2
sqrt(x)
x[2]
x[c(1,3)]
x[-3]
y<-c(2,5,1);y
x-y
x*y
x[y>1.5]
y[x==6]
4:10
seq(2,3,by=0.1)
rep(x,each=4)

#Q9
seq(1,21,by=2)      #9(a)
seq(50,11,by=-3)    #9(b)
x<-seq(0,1024,by=2) #9(c)
x[1]<-1;x
1:20
seq(20,1,by=-1)
x<-c(1:20,19:1);x
matrix(c(1:16),nrow=4,ncol=4,byrow=T) #9(d)

#Q10
my.num<-1:6;my.num
#Q11
my.num*4
#Q12
my.char<-c("a","b","4","d","e");my.char
#Q13
both<-c(my.num,my.char);both
#Q14
length(both)
#Q15
class(both)
#Q16
#both/3 #an error message is displayed

#Q17
x<-c(1:6);x
#Q18
y<-c(10,20,30,40,50);y
#Q19
x+y #recycling process will occur-program will run but a warning message is displayed
#Q20
y<-c(10,20,30,40,50,60);y
#Q21
x+y
#Q22
x*y