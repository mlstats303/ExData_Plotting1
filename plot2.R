source("getData.R") # Reading data into data frame
par(mfrow=c(1,1))
par(mar=c(5,4,4,2)+0.1)
idx = with(df, which(Date=="2/2/2007" & Time=="00:00:00")) # Which row is 2-2-2007 at 12:00 am
plot(1:nrow(df),df$Global_active_power, xaxt="n",type="l",
     xlab="",ylab="Global Active Power (kilowatts)") # Suppress x-axis label and line type
axis(side=1,at=c(1,idx,nrow(df)),labels=c("Thu","Fri","Sat"))
dev.copy(png, file="plot2.png") # Copy plot to a PNG file
dev.off() # Close the PNG device
