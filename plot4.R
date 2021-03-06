data = read.table("reqdata.txt",header = TRUE,sep = " ")
grp = gl(2,1440,labels = c("Thursday","Friday"))
data$Dated = strptime(paste(data$Date,data$Time),format = "%d/%m/%Y %H:%M:%S")
data$day = weekdays(data$Dated)
par(mfrow = c(2,2))
plot(data$Dated,data$Global_active_power,type = "l",ylab = "Global Active Power",xlab = "")
plot(data$Dated,data$Voltage,type = "l",xlab = "datetime",ylab = "Voltage")
plot(data$Dated,data$Sub_metering_1,type = "n",ylab = "Energy sub metering",xlab = "")
points(data$Dated,data$Sub_metering_1,type = "l")
points(data$Dated,data$Sub_metering_2,type = "l",col = "red")
points(data$Dated,data$Sub_metering_3,type = "l",col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n",lty = 1,col = c("black","red","blue"))
plot(data$Dated,data$Global_reactive_power,ylab = "Global_reactive_power",xlab = "datetime",type = "l")
dev.copy(png,file = "plot4.png")
dev.off()
