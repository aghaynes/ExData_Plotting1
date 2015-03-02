#load data

load(file = "IrvineData.R")

# plot 2

png("plot2.png", width=480, height=480, units="px")
plot(x=dd$dt2, y=dd$Global_active_power, type="l")
dev.off()
