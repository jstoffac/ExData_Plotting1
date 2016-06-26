#Loads and cleans data for exploratory analysis.

#read in only the portion of file needed for this problem: Data from Feb 1-2, 2007
hpc_feb <- read.table("Data/household_power_consumption.txt", sep=";", skip = 66637, nrows = 2880)
names(hpc_feb) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

#create new column "DTG" (Date Time Group) by combining Date and Time as datetime object
hpc_feb$DTG <- as.POSIXct(paste(hpc_feb$Date, hpc_feb$Time), format = "%d/%m/%Y %H:%M:%S")