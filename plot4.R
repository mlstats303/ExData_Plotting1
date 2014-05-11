source("getData.R") # Reading data into data frame
par(mfrow=c(2,2))
par(mai=c(0.7,0.88,0.88,0.3))
idx = with(df, which(Date=="2/2/2007" & Time=="00:00:00"))  # Which row is 2-2-2007 at 12:00 am
with(df,{
  plot(1:nrow(df),Global_active_power, xaxt="n",type="l", # Global active power vs Date/Time
       xlab="",ylab="Global Active Power (kilowatts)",cex=0.6) # Suppress x-axis label and line type
  axis(side=1,at=c(1,idx,nrow(df)),labels=c("Thu","Fri","Sat"))
  
  plot(1:nrow(df),Voltage,xaxt="n",type="l",xlab="datetime",cex=0.6) # Plot voltage vs Date_Time
  axis(side=1,at=c(1,idx,nrow(df)),labels=c("Thu","Fri","Sat")) # Draw x axis marker ticks
})

with(df, {
  par(col="black")
  plot(1:nrow(df),Sub_metering_1,xaxt="n",type="l",xlab="",ylab="Energy sub metering",cex=0.8) 
  par(col="red")
  lines(1:nrow(df),Sub_metering_2)
  par(col="blue")
  lines(1:nrow(df),Sub_metering_3)

  par(col="black") 
  legend("topright", pch=NA, bty="n",col=c("black","red","blue"),cex=0.6,lty=1,xjust=1,
    legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
    y.intersp=0.8,inset=c(0.09,0),xpd=NA) # Draw and posing legends on top right
  axis(side=1,at=c(1,idx,nrow(df)),labels=c("Thu","Fri","Sat")) # Draw x axis marker ticks

  par(col="black")
  plot(1:nrow(df),Global_reactive_power,xaxt="n",type="l",xlab="datetime",cex=0.6) # Plot Reactive_power vs Date_Time
  axis(side=1,at=c(1,idx,nrow(df)),labels=c("Thu","Fri","Sat")) # Draw x axis marker ticks
})  

dev.copy(png, file="plot4.png") # Copy plot to a PNG file
dev.off() # Close the PNG device

  

