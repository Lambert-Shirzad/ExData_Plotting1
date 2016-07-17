### Exploratory Data Analysis
### Course Project 1
### By Navid Lambert-Shirzad

setwd("C:/Users/NS/Desktop/Data_Science_Coursera/4. Exploratory Data Analysis/Week 1/Course Project 1")
# Downloading and extracting files
if (!file.exists("power.zip")){
     url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
     download.file(url,"power.zip")
} 

if (!file.exists("household_power_consumption.txt")) { 
     unzip("power.zip") 
}

# read data of 2007-02-01 and 2007-02-02
data <- read.table("household_power_consumption.txt",skip=66637,nrows=2880,
                   col.names=c("Date","Time","Global_active_power","Global_reactive_power"
                             ,"Voltage","Global_intensity","Sub_metering_1","Sub_metering_2"
                             ,"Sub_metering_3"), sep=";")

#make the plot
png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power, xlab="Global Active Power (Kilowatts)", 
     main="Global Active Power", col="red")
dev.off()
