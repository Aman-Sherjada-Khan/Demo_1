######Variables#####
#Variables are containers for storing the data values.
#Variable are used to allocate a memory location to a specific
#value that we want to store.
#A variable must start with a letter.
#It can contain underscore,letters and numbers.
#It cannot contain - and all other special characters,
#like #,@,!,$,%,^,&,*,etc.
#In R we can use both (= and <-) as a assignment operator, but
#mostly <- operator is preffered over =.

a
b

# Data types
# Integer (Discrete) - Whole Number
# Float (Continuous) - Decimal Number
# String/character - Nominal/ Ordinal (Categorical)
# Logical/Boolean - True or False
rm (a)
rm(b)

ten = 10
class(ten) # class() built in func that check the data type of variable
f = 10.2
class(f)

a= 50L # L letter will define integer value
class(a)

city = "PUNE"
class(city)

pincode = '546614'
class(pincode)

bool <- TRUE
class(bool)

bool2 = F
class(bool2)

notbool = "TRUE"
class(notbool)

# multiple value
# Data Structure
# Data Structure acts as containers
# c is concatenate or combine
# Homogeneous DS (Vector)
age = c(25,20,30,25,26)
# index number in r lang starts from 1
# index number in python lang starts from 0

info = c("Aman", 25, 20.11, TRUE)
# Above code will convert every value to string 
# Because every thing can be converted to string
# But string cannot be converted to numbers
info
#Accessing the Vector 
info[2]
info[4]
info[1:3] # Printing 1 , 2, and 3 value
info[c(1,3)] #print 1 and 3 value
info[c(1,3,4)]  #output ("Aman"  "20.11" "TRUE")
# Below Code will throw error 
# info[1,2]
# Vector is 1 dimensional (1D)

#match(value, variable) return the index number
match(25, info) # output = 2

# Assigning or replacing value the vector
# For a single value
info[2] = 35
info

# For multiple Value
info[c(1,4)] = c("Ram", FALSE)
info

# Removing a value
info = info[! info %in% ("Ram")]
info

info1 = c( 25, 20.11, TRUE)
info1
# Above code will convert every value to float 
# Same as above but in here TRUE can be 1.00 but float num cannot be int

info2 = c( 25, TRUE)
info2
# Above code will convert every value to int 
# Same as above but in here TRUE can be 1 

# c is use for showing that the values are homogeneous 


# List Creation
lst <- list("Aman", 20, 165.52, TRUE)
lst

#Accessing and Replacing from list
# Same as vector

lst[2:4]
lst[c(2, 4)]
#Replace
lst[3] = "Pune"
lst

# Data frame creation
# Heterogenous
# 2d 

ID = c(100,101,102,103,104)
Name = c("A","B","C","D", "E")
Age= c(20, 23, 25, 30, 35)
Dept = c("HR", "Accounts","DA", "DS", "Market")
cityy = c("Pune","Mumbai","HYD","Delhi","Chennai")

df =data.frame(ID, Name, Age, Dept, cityy)
View(df)

# Accessing elements from a Data Frame

df[1,5]
df[3,4]
df[4,4]

df[1:2, 4:5]
df[4:5 , 2:3]

df[1,c(1,4)]
df [c(2,5), 5]

df[c(2,5),c(1,5)]

df[c(1,4,5), c(3,4,5)]

df[1, c(1,5)]
# Re[lacing values from data frame

df[3,4] = "Data Anal"
df[4,4] <- "Data Sci"

# Replace Multiple value
# We are using list() because it has different types of data types
df[2, c(1,5)] <- list(201, "Bangaluru")
df[c(1,5), 1] <- c(202,205)

df[3:4, 1] = c(203, 204)
