plot3 <- function() {
  
  data <- read.table("./relevantData.csv", header = TRUE, sep = ";", check.names = FALSE)
  
  png(file = "plot3.png", width = 480, height = 480, bg = NA)
  plot(data$Sub_metering_1, col = "black", type="l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
  axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c("Thu", "Fri", "Sat"))
  lines(data$Sub_metering_2, col = "red")
  lines(data$Sub_metering_3, col = "blue")
  legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1),col=c("black","blue","red"), cex = 0.95)
  dev.off()
}