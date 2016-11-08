# load data
source('download_data_and_clean.R')

# opening the graphics device
png(filename='plot3.png',width=480,height=480,units='px')

# plotting the data
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(powerconsumed$DateTime,powerconsumed$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(powerconsumed$DateTime,powerconsumed$SubMetering2,col=lncol[2])
lines(powerconsumed$DateTime,powerconsumed$SubMetering3,col=lncol[3])

# adding legend for graph
legend('topright',legend=lbls,col=lncol,lty='solid')

# closing the graphics device
x<-dev.off()