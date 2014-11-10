#Code for making Plot 1
#Suppose I previously set my directory
#In order to run correctly the code of every Plots, just change the directory of the first line for the directory where you downloaded the dataset file "household_power_consumption.txt"
data<-"C:/Users/Michel/Desktop/household_power_consumption.txt"
data_last<-read.table(data, skip=66637, header=FALSE, nrow=2880, sep=";", na.strings ="?")
names(data_last) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
GAP <- data_last[["Global_active_power"]]
hist(GAP, col="red", main=paste("Global Active Power"), xlab=paste("Global Active Power (kilowatts)"), ylim =c(0,1200))
# I finally registered my plot image with the appropriate button in Rstudio and set the image height and width manually with this option

#code for making plot 2
#Starting from the code employed for plot 1 - see above for details
#EXTRA NOTE: Consider that my Rstudio is in french, so on the X absciss, jeu. stand for Thur, vend. for Fri and sam. for Sat
daten<-data_last[["Date"]]
datef<-as.Date(daten, format="%d/%m/%Y")
time<-data_last[["Time"]]
paste_date_time<-paste(datef,time)
datattime<-as.POSIXct(paste_date_time)
plot(datattime, GAP, type="l", ylab="Global Active Power (kilowatts)", xlab="")
# I finally registered my plot image with the appropriate button in Rstudio and set the image height and width manually with this option


#code for making plot 3
#Starting from the code employed for plots 1 and 2 - see above for details
#EXTRA NOTE: Consider that my Rstudio is in french, so on the X absciss, jeu. stand for Thur, vend. for Fri and sam. for Sat
subm1<-data_last[["Sub_metering_1"]]
subm2<-data_last[["Sub_metering_2"]]
subm3<-data_last[["Sub_metering_3"]]
plot(datattime,subm1, type="l", xlab="",ylab="Energy sub metering")
with(lines(datattime,subm2, col="red", xlab=""))
with(lines(datattime,subm3, col="blue", xlab=""))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1.5, cex=0.9,y.intersp=0.8, col=c("black","red","blue"), lty=c(1,1,1))
# I finally registered my plot image with the appropriate button in Rstudio and set the image height and width manually with this option
