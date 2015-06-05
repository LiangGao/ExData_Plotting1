setwd('/Users/liang/Desktop/Coursera/EDA/Project1')
data = read.csv('household_power_consumption.txt', sep = ';')
paste('size of the data is ', object.size(data)/1000000, ' Mbytes.', sep = '')
data$Date = as.Date(data$Date,'%d/%m/%Y')
setwd('/Users/liang/Desktop/Coursera/EDA/Project1/ExData_Plotting1')

subdata = subset(data, Date == '2007-02-01'|Date == '2007-02-02')

DnT = strptime(paste(subdata$Date, subdata$Time), '%Y-%m-%d %H:%M:%S')
GAP = as.numeric(as.character(subdata$Global_active_power))
png(file = 'plot2.png')
plot(DnT, GAP, type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')
dev.off()
