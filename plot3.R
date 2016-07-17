### Exploratory Data Analysis
### Course Project 1
### By Navid Lambert-Shirzad

setwd("C:/Users/NS/Desktop/Data_Science_Coursera/4. Exploratory Data Analysis/Week 1/Course Project 1")
# read data of 2007-02-01 and 2007-02-02
data <- read.table("household_power_consumption.txt",skip=66637,nrows=2880,
                   col.names=c("Date","Time","Global_active_power","Global_reactive_power"
                               ,"Voltage","Global_intensity","Sub_metering_1","Sub_metering_2"
                               ,"Sub_metering_3"), sep=";")

#reformat the date and time
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#make the plot
png("plot3.png", width = 480, height = 480)
plot(datetime, data$Sub_metering_1,type="l", xlab=" ",ylab="Energy sub metering")
lines(datetime, data$Sub_metering_2, col = "red")
lines(datetime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("sub metering 1","sub metering 2","sub metering 3"),
       lty=c(1,1,1),col=c("black","red","blue"))
dev.off()
