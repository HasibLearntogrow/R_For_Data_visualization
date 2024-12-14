                        #Topic -1:For Loop in R:
#-----> Stracture: 

#------for(va in sequencce)

#-------{ print("Somethin")    }

#Create number of sequence: initialvalue:finalvalue
sequence<- 1:5

for(i in sequence)
{
  
  print("Hello!This is practice of For loop in R")
  
}
                        #Topic-2:List
#Example of For loop in List

# create a list: Listname<-list{v1,v2,v3------}

mylist<- list("Hasib","rafi","Nayem","Rafiz","Hasi","Likhon") #---List creation

for (v in mylist) {
  
  print(v)
  
}
                     #Topic -3:  vector
# create a vector: vector_name <- c(element1, element2, element3, ...)

# Firstvector<- c{v1,v2,v3.....}

# secondvector2<-c{v1,v2,v3.....}

#sum of vector------sum_of_vecot<- Firstvecor+secondvector

#Example of sum:

v1<-c(1,2,3,4)

v2<-c(5,6,7,8)

sum<- v1+v2

print(paste("Sum of two vector,",sum))

#multipication----- multi<Firstvector*secondvector

#Example of multipication:

v1<-c(1,2,3,4)

v2<-c(5,6,7,8)

mul<- v1*v2

print(paste("Multipication of two vector,",mul))

#Example of For loop in Vector:

my_vector<- c("Hasib","rafi","Nayem","Rafiz","Hasi","Limon")

for (v in my_vector) {
  
  print(v)
  
}
                       #Topic -4: While loop

#While loop:   while(condition)

#              {  code.....increment or decrement 

#                         }
num<-0
while (num<5) {
  print("This is While loop")
  num=num+1
  
}


