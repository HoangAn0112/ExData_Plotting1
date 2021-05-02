
## Plot 1: Histagrame
 
  ## load prepared data 
  data <- Data()

  ## draw Hist

  hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
  
  ## save plot
  png("plot1.png", width=480, height=480)
  dev.off()