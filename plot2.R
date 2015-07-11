source("common.R")


plot2 <- function(filename) {
    x <- readElectricPowerConsumptionData(filename)
    plot(x$DateTime, x$Global_active_power, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
}
    
