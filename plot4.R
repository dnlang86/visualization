###
#Purpose: This program was created to create the plots needed as part of Exploratory Data Analysis HW1  This chunk of code loads the data
setwd("P:/Coursera_files/visualization")
df <- read.csv("P:/Coursera_files/visualization/household_power_consumption.txt", sep=";", na.strings="?")
hw1_data<-subset(df, Date=="2/1/2007"|Date=="2/2/2007")
hw1_data$date_time<-as.POSIXct(paste(hw1$Date, hw1$Time), format="%m/%d/%Y %H:%M:%S")
    

par(mfrow=c(2,2))

hist((hw1_data$Global_active_power),col="red",xlab="Global Active Power (kw)",main="Global Active Power")
plot(hw1_data$date_time,hw1_data$Global_active_power,type="l",ylab="Global Active Power(Kilowatts)",xlab="Weekday")
plot(hw1_data$date_time,hw1_data$Sub_metering_1,ylab="Energy Sub Metering",xlab="Weekday",type="l",ylim=c(0,50))
lines(hw1_data$date_time,hw1_data$Sub_metering_2,xlab="Weekday",col="red")     
lines(hw1_data$date_time,hw1_data$Sub_metering_3,xlab="Weekday",col="blue")     
legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=1)
plot(hw1_data$date_time,hw1_data$Global_reactive_power, type="l",xlab="datetime",ylab="Global_reactive_power")
dev.copy(png,filename="Rplot4.png");
dev.off()

