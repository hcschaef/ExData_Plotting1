read_data <- function() {
 
  data <- read.table("../household_power_consumption.txt", header = TRUE, sep = ";", check.names = FALSE)
  data <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
  
  write.table(data, "./relevantData.csv", sep=";", row.name=FALSE)
  
}