setwd('/Users/liang/Desktop/Coursera/EDA/Project1')
data = read.csv('household_power_consumption.txt', sep = ';')
paste('size of the data is ', object.size(data)/1000000, ' Mbytes.', sep = '')
data$Date = as.Date(data$Date,'%d/%m/%Y')
setwd('/Users/liang/Desktop/Coursera/EDA/Project1/ExData_Plotting1')

subdata = subset(data, Date == '2007-02-01'|Date == '2007-02-02')

GAP = as.numeric(as.character(subdata$Global_active_power))
png(file = 'plot1.png')
hist(GAP, col='red', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', main = 'Global Active Power')
dev.off()