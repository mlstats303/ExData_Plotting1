source("getData.R") # Reading data into data frame
par(mfrow=c(1,1))
par(mar=c(5,4,4,2)+0.1)
hist(df$Global_active_power,col="red", # Creating plot
     main="Global Active Power",xlab="Global Active Power(kilowatts)")  
dev.copy(png, file="plot1.png") # Copy plot to a PNG file
dev.off() # Close the PNG device
