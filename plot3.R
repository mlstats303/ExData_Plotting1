source("getData.R") # Reading data into data frame
par(mfrow=c(1,1))
par(mar=c(5,4,4,2)+0.1)
with(df,{
  idx = which(Date=="2/2/2007" & Time=="00:00:00")  # Which row is 2-2-2007 at 12:00 am
  par(col="black")
  plot(1:nrow(df),Sub_metering_1,xaxt="n",type="l",xlab="",ylab="Energy sub metering") 
  par(col="red")
  lines(1:nrow(df),Sub_metering_2)
  par(col="blue")
  lines(1:nrow(df),Sub_metering_3)
})
par(col="black") # Legend text color to black
axis(side=1,at=c(1,idx,nrow(df)),labels=c("Thu","Fri","Sat")) # Draw x axis marker ticks
legend("topright", pch=NA, col=c("black","red","blue"),lty=1,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       y.intersp=0.7,xpd=NA,inset=c(0.02,0)) # Draw and posing legends on top right
dev.copy(png, file="plot3.png") # Copy plot to a PNG file
dev.off() # Close the PNG device


