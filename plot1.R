# loading data
source('download_data_and_clean.R')

# opening graphics device
png(filename='plot1.png',width=480,height=480,units='px')

# plotting the data
hist(powerconsumed$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# closing the graphics device
x<-dev.off()