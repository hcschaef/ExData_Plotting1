plot2 <- function() {
  
  data <- read.table("./relevantData.csv", header = TRUE, sep = ";", check.names = FALSE)
  
  png(file = "plot2.png", width = 480, height = 480, bg = NA)
  plot(data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n")
  axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c("Thu", "Fri", "Sat"))
  dev.off()
}