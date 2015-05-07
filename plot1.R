###
#Purpose: This program was created to create the plots needed as part of Exploratory Data Analysis HW1  This chunk of code loads the data
setwd("P:/Coursera_files/visualization")
df <- read.csv("P:/Coursera_files/visualization/household_power_consumption.txt", sep=";", na.strings="?")
hw1_data<-subset(df, Date=="2/1/2007"|Date=="2/2/2007")
hw1_data$date_time<-as.POSIXct(paste(hw1$Date, hw1$Time), format="%m/%d/%Y %H:%M:%S")


hist((hw1_data$Global_active_power),col="red",xlab="Global Active Power (kw)",main="Global Active Power")
dev.copy(png,filename="Rplot1.png");
