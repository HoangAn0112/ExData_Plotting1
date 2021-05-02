Data <- function(file = "household_power_consumption.txt") 
  
## Load unzip data file into R
  household_power_consumption <- read_delim(file, ";"
                            , escape_double = FALSE, col_types = cols(Date = col_character(), 
                            Time = col_character()), na = "NA", trim_ws = TRUE)

## Prepare data set
  library(dplyr)
  data <- subset(household_power_consumption, Date %in% c("1/2/2007","2/2/2007"))
  data$Date <- as.Date(data$Date, format = "%d/%m/%Y" )
  datetime <- paste(as.Date(data$Date), data$Time)
  data$Time <- as.POSIXct(datetime)
  retun(data)