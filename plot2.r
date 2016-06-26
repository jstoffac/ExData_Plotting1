source("makefile.r")
png("plot2.png", width=480,height=480,units='px')
plot(hpc_feb$DTG, hpc_feb$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()