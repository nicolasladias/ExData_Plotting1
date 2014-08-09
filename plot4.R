#Coursera week 1, projet

setwd("C:/Users/nico/Documents/coursera/Data exploratory analysis")

data=read.csv("C:/Users/nico/Documents/coursera/Data exploratory analysis/data/household_power_consumption.txt",sep=";",header=TRUE)

#we will be working only on the data from 2007-02-01 to 2007-02-02
#filtering already been done on the source file

#plot 4

# datetime conversion
data$DT= strptime(paste(data[,1],data[,2]),format="%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))

#sub plot 1
with(data,plot(DT,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))

#sub plot 2
with(data,plot(DT,Voltage,xlab="datetime",ylab="Voltage",type="l"))

#sub plot 3
with(data,plot(DT,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",col="red"))
with(data,lines(DT,Sub_metering_2,type="l",col="green"))
with(data,lines(DT,Sub_metering_3,type="l",col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("red","green","blue"),lty=1,bty="n",cex=0.5)

#sub plot 4
with(data,plot(DT,Global_reactive_power,type="l",xlab="datetime"))

dev.copy(png,file="plot4.png")
dev.off()