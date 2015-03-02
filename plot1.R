
#### plot 1
# download data
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "Irvine_machine_learning.zip", mode = "wb")
unzip("Irvine_machine_learning.zip")

dd <- read.table("household_power_consumption.txt", head=TRUE, nrow=70000, sep=";", na.strings = "?")
tail(dd)
dd$dt <- as.Date(dd$Date, format="%d/%m/%Y")

dd <- dd[dd$dt %in% c(as.Date("2007-02-01", format="%Y-%m-%d"), 
                      as.Date("2007-02-02", format="%Y-%m-%d")),]

dd$dt2 <- as.POSIXct(paste(dd$Date, dd$Time), format="%d/%m/%Y %H:%M")
# save data for other files
save("dd", file = "IrvineData.R")

# create plot
png("plot1.png", width=480, height=480, units="px")
plot(hist(dd$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()