## hcschaef @ 07.11.2014 13:00

## The overall goal of this programm is simply to examine how household energy usage varies over a 2-day period in
## February, 2007. The task is to reconstruct the plots, all of which were constructed using the base plotting system.
## Each plot should:
## - Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
## - Name the plot file as plot2.png
## - Create a separate R code file (plot2.R) that constructs the corresponding plot. The code file should include
##   code for reading the data so that the plot can be fully reproduced. Also included, the code that creates the PNG file.
## - Add the PNG file and R code file to the git repository
plot2 <- function() {
  
  ## Read the source data with a seperate function and create a csv with the relevant data
  ## For the code for reading the data, please look at "read_date.R"
  source("read_data.R")
  ## If the relevantData file was created before, the creation will be skipped.
  ## When sending TRUE to the function, the creation will be forced
  read_data(FALSE) 
  
  ## Read the csv with the relevant data, created before
  data <- read.table("./relevantData.csv", header = TRUE, sep = ";", check.names = FALSE)
  
  ## Convert the Date to real date type, combine realDate and Time and create a dateTime type
  dateTime = strptime(paste(as.Date(data$Date,format = "%d/%m/%Y"),data$Time,sep=' '),"%Y-%m-%d %H:%M:%S")
  
  ## Prepare the plot with the right size, transparent background and png format
  png(file = "plot2.png", width = 480, height = 480, bg = NA)
  ## Create the Plot againt the dateTime with the right color and names based on Global Active Power
  plot(dateTime, data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
}