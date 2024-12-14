#For creating any File:
    file.create("Name.R")
#For Print Any value or Text:
    print("Hello!This is practice of R")
#Take input from user:
    name<-readline("Enter your name")
# Now print this value which is input my user:
    print(name)
#Concatenate two String:
#Stractue: paste("Strin1,",String2)
    print(paste("My name is :,",name)) 
#We normally use Four major Datatype:
#-------1.Character
#-------2.Double
#-------3.Integer
#-------4.String
#We have to always remind that R languages all time take input as a string-
#So when we operate any mathematical operation then we have to do typecast
#For Type casting:
#------1.Take as a intger= as.integer(variable);
#-------2.Take as a character=as.character(variable)
#--------3.Take as a double= as.double(Variable)
 #Type casting process one:
    num1 <-readline("Enter 1st nuber:")
    num2<-readline("Enter 2nd number:")
    num1<-as.integer(num1)
    num2<-as.integer(num2) #---------Type casting
    print(paste("Result is,",num1+num1))
  
#Type casting process two: Take input and cast at a time
  num1<- as.integer(readline("Enter 1st number:"))
  num2<- as.integer(readline("Enter 2nd number:"))
  print(paste("Result is,",num1+num1))
#Arithmatic Operator:
# + ----------->sum
# - ------------>subtract
# * ------------->multripication
# / ------------->div
# Sortcut For sum:   sum(a,b,c)
    result<- sum(10,10,10)
    print(result)
#Show all created variable:   ls()
    ls()
#Remove all Variable : rm(list=ls())
    rm(list=ls())
#ls()
# Read CSV File: 
    var<- read.csv("mat.csv",sep=",",header = TRUE)
# Show or print csv File:
    print(var)
#Print nth colom: var[,n]
    var[,1]
#print nth rows: var[n,]
    var[1,]
#print (r,c) value:
    var[2,3] #---2 is row number and 3 is colom number
#Alternative away to print any colom: var$ colom_name
    var$id


