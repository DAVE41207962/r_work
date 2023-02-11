#HELP IN R
##HELP WHEN FUNCTION IS KNOWN use blw functionc:
help("typeof")
?typeof
#Help when topic to be helped with is known
help.search("data inputs")

#How to find what package something belongs to 
find("lowess")

#calculations in R
21+-2
sqrt(4)
floor(9)

#how to output more than 7 digits in R
options(width=40)
print(1:20)

#How to use multi-line comments in R
if(FALSE){
  "This is a multi-line comment and it should be
  written inside single or double quotes"
}
my.string<-"Hellow world!"
print(my.string)
cat(my.string)
#view reserved words in R
?reserved

apropos('var')
if(FALSE){
  "apropos() function is used to search and find
  all objects in the current search path that match
  the specified character or regular expression.
  ie apropos(var) reveaals all ojects that contain te word var"
}

#VARAIABLES/IDENTIFIERS
#Boolean variables
a<-TRUE
print(a)
print(class(a))# class() checks data types of variables
#integer variables
b<-15L
print(a)
print(class(b))
#floating points variables
c<-13.4
print(b)
print(class(c))
#character variables
alphabets=("c")
print(alphabets)
print(class(alphabets))
print(typeof(alphabets))
#string variables
mesage<-"hello programiz"
print(mesage)
print(class(mesage))
print((typeof(mesage)))

#assigning variables 
var.1 = c(0,1,2,3)
var.2<-c("learn","R")
c(TRUE,1)->var.3
print(var.1)
cat("var.1 is",var.1,"\n")
cat("var.2 is",var.2,"\n")
cat("var.3 is",var.3,"\n")

#changing variables in R
mesage="Hello world"
print("This is the original message:")
print(mesage)
mesage<-"Welcome programiz"
print("This is the modified message")
print(mesage)

#finding variables/view variables created
print(ls())
objects()
#Deleting individual variables 
rm(a) #the functin deletes variable a
print(a) #an error is displayed as variablea doesnt exist for it is deleted
#delete all variables/clear memory
rm(list=ls())
print(ls())

#constants in R
#Integer constants
x<-15L #L rep a whole number 
print(x)
print(typeof(x))
print(class(x)) 
x<-0x15L #0x indicates a hexadecimal
print(x)
print(typeof(x))
print(class(x))
x<-1e3L
print(x)
print(typeof(x))
print(class(x))

#numeric constants
#double
typeof(5)
class(5)
#integer
typeof(5L)
class(5L)
#complex
typeof(5i)
class(5i)
x<-(3.2e-1i)
if(FALSE){
  "3.2e-1=3.2/10*i
  3.2e+1i=3.2/10*i"
}
x

#logical constants
x<-TRUE
y<-FALSE
print(x)
print(typeof(x))
print(class(x))    
print(y)
print(typeof(y))
print(class(y))  

#character constants
'example'
typeof('5')#any value inside quotes is considered a character
#string constants
mesage<-"Welcome to programiz!"
print(mesage)
#complex conxtants
x<-(3.2e-1i)
+ print(x)


#built in constants
LETTERS
letters
month.abb
month.name
pi


      






