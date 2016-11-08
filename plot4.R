# load data
source('download_data_and_clean.R')

# opening the graphics device
png(filename='plot4.png',width=480,height=480,units='px')

# graphing four plots
par(mfrow=c(2,2))

# plotting the data on top left (1,1)
plot(powerconsumed$DateTime,powerconsumed$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')

# plotting the data on top right (1,2)
plot(powerconsumed$DateTime,powerconsumed$Voltage,xlab='datetime',ylab='Voltage',type='l')

# plotting the data on bottom left (2,1)
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(powerconsumed$DateTime,powerconsumed$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(powerconsumed$DateTime,powerconsumed$SubMetering2,col=lncol[2])
lines(powerconsumed$DateTime,powerconsumed$SubMetering3,col=lncol[3])

# plotting the data on bottom right (2,2)
plot(powerconsumed$DateTime,powerconsumed$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')

# closing the graphics device
x<-dev.off()