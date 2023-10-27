# Descriptive Statistics

#-1 to +1 High Skewness
#-0.5 to +0.5 Moderate Skewness
# 0 no skewness

# Uploading csv file in R-Programming
data = read.csv("C:\\Users\\Sher Mohammed Khan\\OneDrive\\Desktop\\Coding\\Python\\Pandas\\data.csv")

View(data)

#Practice datasets
df <- datasets::airquality
View(df)

#head() and tail()
head(df)
head(df, 10)
tail(df)
tail(df, 10)

# Showing last 20 elements in a table format
View(tail(df, 20))

# Storing first 7 values in a other variable
first7 = head(df,7)
first7

#Extract records from 5 to 25 and from 1 to 5 columns

# df[rows:columns]
df[5:25, 1:5]
df[c(1,5), 1:6]
df[c(18, 10), c(5,1)]

# Extracting data from the csv file using columns name:
df[c(6,9), c("Solar.R","Day","Ozone")]

# $ 
df$Month

# Summary of Data
summary(df)

#Descriptive Stats for Month column
summary(df$Month)

attach(df)
Ozone


#Data Visualization in R
#Scatter Plot

plot(Ozone, Temp, xlab="OZ Level", ylab= "Temperature", main= "Scatter plot", col="purple",pch = 16)

plot(df)

# Line Plot
plot(Temp, type = 'l', col= "purple")

# Horizontal Bar plot 
barplot(table(Month), col ="purple", xlab = "Months", ylab = "Frequency")

# Histogram plot (Go on google and search hex color picker for hex number)
hist(Ozone, col = "#67e094",xlab = "Ozone Level")
hist(Wind)

# Box Plot 
boxplot(Ozone)

# For Statistics ($stats)
boxplot(Ozone)$stats

# For outliers ($out)
boxplot(Ozone)$out

# Multiple Box Plot
boxplot(df, col = c("red","blue","green","purple","pink","orange"))

#Multiple Graph in single canvas
par(mfrow= c(2,2))
plot(Ozone,Temp)
hist(Ozone)
boxplot(Ozone)
plot(Ozone,type = "l")

# Standard Deviation sd
# na.rm is used for removing NA values from the Ozone Columns
sd(Ozone, na.rm = T)
sd(Temp)

# Variance
var(Ozone, na.rm = T)

#skewness
skewness(Temp) # This func is present in moments library/packages

install.packages("moments")

library(moments)
skewness(Temp)
skewness(Ozone, na.rm = T)


detach(df)
