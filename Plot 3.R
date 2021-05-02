
## Plot 3: Plot sub_metering_1 and use lines to add plot of sub_metering_2,
## sub_metering_3

  # Load data
  data <- Data()
  
  # Draw plot
  with(data, {plot(Sub_metering_1~Time, type="l",
                 ylab="Global Active Power (kilowatts)", xlab="")
          lines(Sub_metering_2~Time, col='Red')
          lines(Sub_metering_3~Time, col='Blue')})

  # Add legend on topright 
  legend("topright", col = c("black","red","blue"),lty=1, lwd=2, 
       legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"))
  
  # Save plot
  png("plot3.png", width=480, height=480)
  dev.off()