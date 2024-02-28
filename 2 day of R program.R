# comment we can write in #
# from system import the csv file
df= read.csv('C:/Users/Alka Aswar/Downloads/sample data.csv',header = TRUE,sep=",")


head(df2,4)


# import dataset from R studio software
airquality=datasets::airquality


# Top 10 rows and last 10 rows
head(airquality,10) 
tail(airquality,10)

# columns 
# all rows and 2 columns
airquality[,1:3]

# Display all the rows and  Ozone,Temp,Day columns only
airquality[,c(1,4,6)]

# Display 1,4,10 rows  and  Ozone and Day columns only
airquality[c(1,4,10),c(1,6)]

# Exclude 6th column
df<-airquality[,-6]
df
airquality$Wind
airquality[,1]



# describe function in python
summary(airquality[,1]) # give the summary of column 1

summary(airquality$Wind)

summary(airquality)

## Plot ##
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)

# points and lines
plot(airquality$Wind,type = "l") # p : points , l: lines
plot(airquality$Wind,xlab = "Ozone Concentration",
     ylab = "No of Instances",main="Ozone Levels in NY city"
     ,col='blue')

# Horizontal bar plot
barplot(airquality$Ozone,xlab = "Ozone Concentration",
     ylab = "No of Instances",main="Ozone Levels in NY city"
     ,col='blue',horiz=T,axes = T)

# Histogram 
hist(airquality$Temp)

hist(airquality$Ozone,ylab = "solar Radiation values in air",
     xlab = "solar rad",main="Ozone Levels in NY city"
     ,col='Yellow')

# Single box plot
boxplot(airquality$Wind,main="Boxplot")

boxplot.stats(airquality$Wind)$out

# Multiple box plots
boxplot(airquality[,1:6],main='Multiple Boxplot')

#Margin of the grid(mar),
#no of rows and columns(mrow),
#whether a border is to be included(bty)
# and position of the
# label(las:1 for horizontal,las:0 for vertical)
#bty - box around the plot


par(mfrow=c(3,3),mar=c(5,5,2,1),las=0)

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)

plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type="l")
plot(airquality$Ozone,type="l")
plot(airquality$Ozone,type="l")

barplot(airquality$Ozone,xlab = "Ozone Concentration",
     ylab = "No of Instances",main="Ozone Levels in NY city"
     ,col='green')






x<-1:10; y=x*x
plot(x, y, type="b") # Both points and lines
plot(x, y, type="h") # Histogram lines
plot(x,y, type="s") # Stair plots
