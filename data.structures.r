#vectors
#vector declaration
#c()function
v1<-c(1,3,5,7,9,11,15);v1#combines elements into one element in a vector
#seq()
v2<-seq(1,3,0.2);v2 #creates a vector complex sequence
#colon operator
v3<-(1:10);v3 #creates a vector simple sequence
#rep() 
v4<-rep(2,5);v4 #adds constants conveniently in long vectors
#vector
v0<-vector();v0 #creates empty vectors

#superiority of data types when all are declared in same vector
x<-c('a',2i,2,2L,T,F)#character is superior thus all are forced to characters
x<-c(2i,2,2L,T,F);x #all forced to complex
x<-c(2,2L,T,F);x #all forced to numerics
x<-c(2L,T,F);x #all forced to integers

#accessing elements in vectors
#integer indexing
x<-c(2,4,6,8,10)
x[1]#access element in first position
x[1:5]#access elements from 1st upto 5th position
x[-1]#access all elements except the one specified ie:that in 1st position
x[-3:-4]#access all elements except that in the 3rd and 4th position
x[c(1,5)]#access only elements in position 1 and 5
x[c(-1,-5)]#access all elements except in position 1 and 5

#logical vector indexing
x<-c(0,2,4,6,8,10)
x[c(TRUE,FALSE)]#will only return values that are true
#logical operators are used in logical indexing ie:
x[x>4]#returns values > 4
x[x<4] #returns values<4
x[x>=4]#returns values >=4
x[x>5]#returns values >5

#character vector indexing
x<-c(first=10,second=20,third=40)
x["first"]
x[c("second","third")]

#modifying vectors
x<-seq(-5,5,1);x
x[2]<-0;x #modify element in 2nd index to be 0
x[x<0]<-6;x #modify all elements<0 be=6
x<-x[1:4];x #truncate x up to 1st for elements
#remove elements temporarily
x[-2] #remove element in 2nd index temporarily
#remove permanently
x<-x[-2];x#removes element in 2nd index permanently
#deleting vectors
#deleted by assigning them NULL
x<-seq(-10,10,0.25)
x<-NULL
x[4]

#combining vectors
vect1<-2:10
vect2<-seq(6,18,2)
vect3<-c(vect1,vect2)
length(vect1)
length(vect2)
length(vect3)
vect3[1:5]
vect3[vect3>10]
#manipulation of vectors
#assign names to elements in a vector
vector1<-c(1,4,5,9,10)
names(vector1)<-c('jan','april','may','sep','oct')
names(vector1)
vector1[3]
vector1[2:5]

#numeric manipulation
x<-c(1,2,4)
x+c(5,0,-1)
x-c(5,0,-1)
x*c(5,0,-1)
x/c(5,0,-1)

x<-c(1,2,4)
x+c(5,0,-1) #objects are of the same length thus no warning message
x+2 #applies for add multiply divide and subtract only
a<-c(4,2,6,3,1)
b<-c(2,3,0)
a+b#objects are not of same length thus warning message id displayed and recycling process occurs
a+c(1,4)

#combining vectors
vec1<-2:10
vec2<-seq(6,18,2)
vec1
vec2
vec3<-c(vec1,vec2) #c() is also usedd to combine vectors
vec3

#comparing vectors
a<-2:6
b<-4:10
a%in%b # will return all index of elements in a present in b as true 
b%in%a # returns all index of elements in a as true




#all()&any()-use in logical operations to check whether given condition is satisfied -return true if satisfied otherwise false
x<-1:15
any(x>10)#some elements are>10 thus returns true
any(x>25)#no element >25 thus returns false
all(x>10)# not all elements>10 thus returns false
all(x>0)# all elements>0 thus returns true

#NA-used to skip empty values $ NULL-include empty values in computations
x<-c(81,76,41,28,NA,50);x

x<-c(81,76,41,28,NULL,50);x

#filtering- allows extraction of vectors that meet certain conditions
z<-c(5,2,-3,8)
w<-z[z*z>0] #extracts elements whose squares will be >0
w

#matrix
y<-matrix(c(1,2,3,4),nrow=2,ncol=2);y #by default column-wise matrix -arranged in columns
x<-matrix(1:4,nrow=2,byrow=T);x #set matrix row-wise arranged in rows
#accessing individual elements in a matrix
y
y[1,1] #element in 1st row 1st column
y[1,2] #element in 1st row 2n column
y[2,1] #element in 2nd row 1st column
y[2,2] #element in 2nd row 2nd column
y[-2]  #all elements other than that in the 2nd index
y[2] #only element in 2nd index
y[-2,]  #all elements other than those in the 2nd row
y[,-2] #all elements other than those in the 2nd column
y[2,] #all elements in 2nd row only
y[,2] #all elements in 2nd column only

#accessing rows and columns in matrix
z<-matrix(c(1,2,3,4,1,1,0,0,1,0,1,0),nrow=4);z
z[,2:3] #access all rows and only the 2nd upto the 3rd column
z[1:2,] #access all columns and only the 1st upto 2nd row

#matrix operations
y
x
y%*%y #multiplication
y*2 # scalar multiplication
y+2
y+y
y-2
y-x
y/2
y/x

#assigning values to a matrix-column-wise
y<-matrix(nrow=2,ncol=2)
y[1,1]<-1
y[1,2]<-2
y[2,1]<-3
y[2,2]<-4
y
#row-wise
y<-matrix(nrow=2,ncol=2)
y[1,1]<-1
y[1,2]<-3
y[2,1]<-2
y[2,2]<-4
y

#other matrix operations
t(y)# matrix transpose-reverse from column-row arrangement and vice-versa
y^2 # power of a matrix
diag(y)#diagonal matrix
solve(y)#inverse matrix
det(y) #determinant of matrix

#ARRAYS
#array generated from vectors
v1<-c(5,9,3)
v2<-c(10,11,12,13,14,15)
result<-array(c(v1,v2),dim=c(3,3,2));result
#recycling process occurs in arrays when elements are lesser than specified dimensions
a<-array(c('green','yellow'),dim=c(3,3,2));a
#array generated from a matrices
test1<-matrix(c(46,21,50,50,25,48),ncol=2);test1
test2<-matrix(c(46,41,50,43,35,49),ncol=2);test2
tests<-array(c(test1,test2),dim=c(3,3,2));tests
attributes(tests)
#accessing elements in arrays
tests[3,2,1]#element in 3rd row 2nd column layer1
tests[1,3,2]#element in 1st row 3rd column layer2
#accessing rows and columns
tests[,1:2,1]#access all rows and only the 1st upto 2nd column in layer1

#lists
n<-c(2,3,5);n
s<-c('aa','bb','cc','dd');s
my_list<-list(n,s);my_list

j<-list(name='dave',salary=500000,union=T);j

list_one<-list(c('jan','feb','march','apr'),
               matrix(c(3,9,5,1,-2,8),nrow=2),
               list(c('flowers','choclate')));list_one
#accessing elements in a list
j$name #$ used to access elements in a list
j[[1]] #output is same as above code
j[1] 
list_one[1] #single brackets will return double quotes then normal output
list_one[[1]]#double brackets in code will output normally
list_one[c(1,3)] #access 1st and 3rd layer only
list_one[[c(1,3)]] #access 1st layer and element in 3rd index

#adding elements to a list
z<-list(a='abc',b=12);z
z$c<-'celebrating';z
z[[4]]<-28;z
z[5:7]<-c(T,F,T);z