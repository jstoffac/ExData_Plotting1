source("makefile.r")
png("plot1.png")
hist(hpc_feb$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col="red")
dev.off()