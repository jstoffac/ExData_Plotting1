source("makefile.r")
png("plot4.png")

par(mfrow = c(2,2))

plot(hpc_feb$DTG, hpc_feb$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(hpc_feb$DTG, hpc_feb$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

with(hpc_feb, plot(DTG, Sub_metering_1, type = "line", xlab = "", ylab = "Energy sub metering"))
with(hpc_feb, lines(DTG, Sub_metering_2, type = "line", col = "red"))
with(hpc_feb, lines(DTG, Sub_metering_3, type = "line", col = "blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))
plot(hpc_feb$DTG, hpc_feb$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()