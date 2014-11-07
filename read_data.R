## hcschaef @ 07.11.2014 13:00

## When loading the dataset into R, please consider the following:
## - The dataset has 2,075,259 rows and 9 columns
## - First calculate a rough estimate of how much memory the dataset will require in memory before reading
##   into R.
## - Make sure your computer has enough memory (most modern computers should be fine).
## We will only be using data from the dates 2007-02-01 and 2007-02-02.
## One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.
read_data <- function(x = TRUE) {
 
  ## Check if relevantData was already created?
  ## If x = true then the creation will be forced
  if (file.exists("./relevantData.csv") == TRUE & x == FALSE) {
    message("Using relevantData which was created before") ## if so then print a comment
  } else {
    ## Set the locale to have the weekdays in the right language
    Sys.setlocale(category = "LC_ALL", "C")
    
    ## Read the source data. The household_power_consumption.txt must be one folder above the working directory
    ## This is based on the fact, that I dont wanted to upload it to Github
    data <- read.table("../household_power_consumption.txt", header = TRUE, sep = ";", check.names = FALSE)
    ## Filter on the relevant data of the dates 2007-02-01 and 2007-02-02
    data <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
    
    ## Export a csv with the relevant data, which can be used by the plot programms
    write.table(data, "./relevantData.csv", sep=";", row.name=FALSE)
  }
}