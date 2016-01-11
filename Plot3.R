plot3 <- function() {
  plot(df$timestamp,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(df$timestamp,df$Sub_metering_2,col="red")
  lines(df$timestamp,df$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),
         lwd=c(1,1),cex=0.5)
  dev.copy(png, file="plot3.png", width=800, height=600)
  dev.off()
  cat("plot3.png has been saved in", getwd())
}
plot3()