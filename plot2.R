
##Reading the subset data created and wrote in plot1.R
subpower=read.table('subpower.txt',sep='',header=TRUE,stringsAsFactors = F)

##Converting the Date and Time variable to Date/Time Class
subpower$datetime <-strptime(paste(subpower$Date, subpower$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png('plot2.png',width = 480,height = 480)

plot(subpower$datetime,subpower$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)')

dev.off()
