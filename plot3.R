source("common.R")


plot3 <- function(filename) {
    x <- readElectricPowerConsumptionData(filename)
    plot(x$DateTime, x$Sub_metering_1, type="l",
         xlab="", ylab="Energy sub metering")
    lines(x$DateTime, x$Sub_metering_2, col="red")
    lines(x$DateTime, x$Sub_metering_3, col="blue")
    legend("topright", col=c("black", "red", "blue"),
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lwd=1, pch=c(NA,NA))
}
