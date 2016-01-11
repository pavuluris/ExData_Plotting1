plot4 <- function() {
  par(mfrow=c(2,2))
  
  ##PLOT 1
  plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  ##PLOT 2
  plot(df$timestamp,df$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  ##PLOT 3
  plot(df$timestamp,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(df$timestamp,df$Sub_metering_2,col="red")
  lines(df$timestamp,df$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
         lwd=c(1,1),cex=0.4,xjust= 1)
  #PLOT 4
  plot(df$timestamp,df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
  #OUTPUT
  dev.copy(png, file="plot4.png", width=800, height=600)
  dev.off()
  cat("plot4.png has been saved in", getwd())
}
plot4()