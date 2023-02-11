#variables
#data types:

#numeric data types
x<-10.5
y<-25
class(x)#class()determines data type of a variable
class(y)

#integer data types
x<-10L # the 'L'defines a number as being an integer
class(x)
#complex data types
y<-3
class(y)

#conversion of numeric data types

x<-2L
y<-2
z<-2i
a<-as.numeric(x)#converts any numeric data type to numeric
b<-as.complex(y)#converts any numeric data type to complex
c<-as.integer(z)#converts any numeric data type to integer
class(a)
class(b)
class(c)

#R-strings/character strings data types
#multi-line string characters
str<-"The following is the first multiline string to 
be asssigned to a variable, check how it works in R"
print(str)
cat(str)

if(FALSE){
  "The print() adds an escape character at the end of each line break
  The cat() inserts a line break at the same position as in the code"
}
#length of string
nchar(str) #nchar() is used to check length of a string

#accessing a character(s)in strings
grepl('following',str)#TRUE is returned is character requested for is in the specified string
grepl("me",str)#FALSE is returned when character requested for isn't in specified string

#combinig atleast 2 strings
str1<-"Hello"
str2<-"world!"
paste(str1,str2)

#escape characters in R:
#double quotes character
str<-"We are the so called\"vikings\" of the North"
print(str)
cat(str)
#single quotes character
str<-'We are the so called\'vikings\' of the North'
print(str)
cat(str)
#tab
str<-"\tWhat is your name.\tAnswer me"
print(str)
cat(str)
#backspace
str<-"My name is who'\b'"
print(str)
cat(str)
#carriage return
str1<-"This is a string with a \r carriage return character"
cat(str1)
#newline
str2<-"This is a string with a \n newline character"
cat(str2)
