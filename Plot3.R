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
