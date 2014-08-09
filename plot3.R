#Coursera week 1, projet

setwd("C:/Users/nico/Documents/coursera/Data exploratory analysis")

data=read.csv("C:/Users/nico/Documents/coursera/Data exploratory analysis/data/household_power_consumption.txt",sep=";",header=TRUE)

#we will be working only on the data from 2007-02-01 to 2007-02-02
#filtering already been done on the source file

#plot 2

#Global active power against datetime
data$DT= strptime(paste(data[,1],data[,2]),format="%d/%m/%Y %H:%M:%S")

with(data,plot(DT,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",col="red"))
with(data,lines(DT,Sub_metering_2,type="l",col="green"))
with(data,lines(DT,Sub_metering_3,type="l",col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("red","green","blue"),lty=1)

dev.copy(png,file="plot3.png")
dev.off()