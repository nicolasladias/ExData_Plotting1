#Coursera week 1, projet

setwd("C:/Users/nico/Documents/coursera/Data exploratory analysis")

data=read.csv("C:/Users/nico/Documents/coursera/Data exploratory analysis/data/household_power_consumption.txt",sep=";",header=TRUE)

#we will be working only on the data from 2007-02-01 to 2007-02-02
#filtering already been done on the source file

#plot 2

#Global active power against datetime
data$DT= strptime(paste(data[,1],data[,2]),format="%d/%m/%Y %H:%M:%S")
with(data,plot(DT,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))

dev.copy(png,file="plot2.png")
dev.off()