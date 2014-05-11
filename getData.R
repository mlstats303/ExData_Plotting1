rm(list=ls()) # Remove any unwanted variables from workspace
household <- read.table("household_power_consumption.txt",sep=";",
                        header=T,stringsAsFactors=F,na.strings="?") # Read data from text file
df <- subset(household,subset=(Date=="1/2/2007" | Date=="2/2/2007")) # Subset data for two days
rm(household)