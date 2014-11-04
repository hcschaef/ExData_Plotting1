plot4 <- function() {
  
  data <- read.table("./relevantData.csv", header = TRUE, sep = ";", check.names = FALSE)
  
  png(file = "plot4.png", width = 480, height = 480, bg = NA)
  par(mfrow = c(2, 2))
  plot(data$Global_active_power, col = "black", type="l", xlab = "", ylab = "Global Active Power", xaxt = "n")
  axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c("Thu", "Fri", "Sat"))
  plot(data$Voltage, col = "black", type="l", xlab = "datetime", ylab = "Voltage", xaxt = "n")
  axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c("Thu", "Fri", "Sat"))
  plot(data$Sub_metering_1, col = "black", type="l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
  axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c("Thu", "Fri", "Sat"))
  lines(data$Sub_metering_2, col = "red")
  lines(data$Sub_metering_3, col = "blue")
  legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1),col=c("black","blue","red"), cex = 0.95, bty = "n")
  plot(data$Global_reactive_power, col = "black", type="l", xlab = "datetime", ylab = "Global_rective_power", xaxt = "n")
  axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c("Thu", "Fri", "Sat"))
  dev.off()
}