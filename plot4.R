
##Reading the subset data created and wrote in plot1.R
subpower=read.table('subpower.txt',sep='',header=TRUE,stringsAsFactors = F)

##Converting the Date and Time variable to Date/Time Class
subpower$datetime <-strptime(paste(subpower$Date, subpower$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png('plot4.png',width = 480,height = 480)

par(mfrow=c(2,2))

plot(subpower$datetime,subpower$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)')

plot(subpower$datetime,subpower$Voltage,type='l',xlab='datetime',ylab='Voltage')

plot(subpower$datetime,subpower$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
lines(subpower$datetime,subpower$Sub_metering_2,type='l',col='red')
lines(subpower$datetime,subpower$Sub_metering_3,type='l',col='blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),bty='n',lty=1,col=c('black','red','blue'))

plot(subpower$datetime,subpower$Global_reactive_power,type='l',xlab='datetime',ylab='Global_reactive_power')

dev.off()
