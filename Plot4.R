
  # Load data
  data <- Data()

  # Devide drawing space into 4 squares
  par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
  
  # Add plots
  with(data, {
    
    ## First plot = plot 2
    plot(Time, Global_active_power, type="l", xlab = "", 
                    ylab = "Global Active Power (kilowatts)")
    ## Second plot Voltage by time
    plot(Time, Voltage, type="l", xlab="", ylab= "Voltage (volt)")
    ## Third plot = plot 3
    plot(Sub_metering_1~Time, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~Time, col='Red')
    lines(Sub_metering_3~Time, col='Blue')
    legend("topright", col = c("black","red","blue"),lty=1, lwd=1, 
           legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"))
    ## Fouth plot Global Reactive Power by time
    plot(Time, Global_reactive_power, type="l", xlab = "", 
         ylab = "Global Reactive Power (kilowatts)")
  })
  # Save plot
  dev.copy(png, file="plot4.png", height=480, width=480)
  dev.off()
  