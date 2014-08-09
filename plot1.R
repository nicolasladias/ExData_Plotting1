#Coursera week 1, projet

setwd("C:/Users/nico/Documents/coursera/Data exploratory analysis")

data=read.csv("C:/Users/nico/Documents/coursera/Data exploratory analysis/data/household_power_consumption.txt",sep=";",header=TRUE)

#we will be working only on the data from 2007-02-01 to 2007-02-02
#filtering already been done on the source file

#plot 1


hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global_Active_Power")
dev.copy(png,file="plot1.png")
dev.off()