plot1 <- function() {

  data <- read.table("./relevantData.csv", header = TRUE, sep = ";", check.names = FALSE)
  
  png(file = "plot1.png", width = 480, height = 480, bg = NA)
  hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  dev.off()
}
