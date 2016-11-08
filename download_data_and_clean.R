#setting up directory and libraries
setwd("C:/Users/Ashish/Documents/exploratory-data-analysis/ExData_Plotting1-master/")
library(data.table)
library(lubridate)

#loading data for 2 days
varclass<-c(rep('character',2),rep('numeric',7))
powerconsumed<-read.table('household_power_consumption.txt',header=TRUE, sep=';',na.strings='?',colClasses=varclass)
powerconsumed<-powerconsumed[powerconsumed$Date=='1/2/2007' | powerconsumed$Date=='2/2/2007',]

# clean up the variable names and convert date/time fields
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity', 'SubMetering1','SubMetering2','SubMetering3')
colnames(powerconsumed)<-cols
powerconsumed$DateTime<-dmy(powerconsumed$Date)+hms(powerconsumed$Time)
powerconsumed<-powerconsumed[,c(10,3:9)]

# writing a clean dataset to the folder
write.table(powerconsumed,file='power_consumption.txt',sep='|',row.names=FALSE)