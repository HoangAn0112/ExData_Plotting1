
## Plot 2: Global Active Power by Time

  # Load data
  data <- Data()

  # Draw plot
  with(data, plot(Time, Global_active_power, type="l", xlab = "", 
                ylab = "Global Active Power (kilowatts)"))
  # Save plot
  dev.copy(png, file="plot2.png", height=480, width=480)
  dev.off()