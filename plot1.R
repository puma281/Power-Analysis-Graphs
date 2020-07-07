data = read.table("reqdata.txt",header = TRUE,sep = " ")
hist(as.numeric(data$Global_active_power),col = "red",main = " Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.copy(png,file = "plot1.png")
dev.off()
