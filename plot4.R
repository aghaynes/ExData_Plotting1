#load data

load(file = "IrvineData.R")

# plot 4

png("plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2))
plot(x=dd$dt2, y=dd$Global_active_power, type="l", ylab="Global Active Power",
     xlab="")

plot(Voltage ~ dt2, dd, type="l", xlab="datetime")

plot(Sub_metering_1 ~ dt2, dd, type="l", xlab="", ylab="Energy sub metering")
lines(Sub_metering_2 ~ dt2, dd, col="red")
lines(Sub_metering_3 ~ dt2, dd, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))

plot(x=dd$dt2, y=dd$Global_reactive_power, type="l", xlab="")
dev.off()
