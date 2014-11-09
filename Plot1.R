#Code for making Plot 1
#Suppose I previously set my directory
data<-"C:/Users/Michel/Desktop/household_power_consumption.txt"
data_last<-read.table(data, skip=66637, header=FALSE, nrow=2880, sep=";", na.strings ="?")
names(data_last) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
GAP <- data_last[["Global_active_power"]]
hist(GAP, col="red", main=paste("Global Active Power"), xlab=paste("Global Active Power (kilowatts)"), ylim =c(0,1200))
# I finally registered my plot image with the appropriate button in Rstudio