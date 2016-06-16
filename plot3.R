

##Reading the subset data created and wrote in plot1.R
subpower=read.table('subpower.txt',sep='',header=TRUE,stringsAsFactors = F)

#Converting the Date and Time variable to Date/Time Class
subpower$datetime <-strptime(paste(subpower$Date, subpower$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png('plot3.png',width = 480,height = 480)
plot(subpower$datetime,subpower$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
lines(subpower$datetime,subpower$Sub_metering_2,type='l',col='red')
lines(subpower$datetime,subpower$Sub_metering_3,type='l',col='blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,col=c('black','red','blue'))

dev.off()