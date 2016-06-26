source("makefile.r")
png("plot2.png")
plot(hpc_feb$DTG, hpc_feb$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()