#load data

load(file = "IrvineData.R")

# plot 3

png("plot3.png", width=480, height=480, units="px")
plot(Sub_metering_1 ~ dt2, dd, type="l", xlab="", ylab="Energy sub metering")
lines(Sub_metering_2 ~ dt2, dd, col="red")
lines(Sub_metering_3 ~ dt2, dd, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
dev.off()
