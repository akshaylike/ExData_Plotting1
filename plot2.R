# loading the data
source('download_data_and_clean.R')

# opening the graphics device
png(filename='plot2.png',width=480,height=480,units='px')

# plotting the data data
plot(powerconsumed$DateTime,powerconsumed$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# closing the graphics device
x<-dev.off()