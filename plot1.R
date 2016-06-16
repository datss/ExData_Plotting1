
##Set the working directory where the dataset is located
##Reading Data
power<-read.table("household_power_consumption.txt",sep=';',header=TRUE,stringsAsFactors = FALSE)
dim(power)
str(power)
head(power)
##Creating subset 
subpower<-subset(power,Date=="1/2/2007" | Date=="2/2/2007")
##Writing the subset data
write.table(subpower,'subpower.txt')
##Reading the subset data
subpower=read.table('subpower.txt',sep='',header=TRUE,stringsAsFactors = F)
dim(subpower)
head(subpower)
str(subpower)


png('plot1.png',width = 480,height = 480)

hist(subpower$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power (kilowatts)')

dev.off()
