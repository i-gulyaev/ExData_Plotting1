
source("common.R")

plotGapHistogram <- function(epcData) {
    hist(epcData$Global_active_power, main="Global Active Power",
         xlab="Global Active Power (kilowatts)", col="red")
}

plot1 <- function(filename) {
    x <- readElectricPowerConsumptionData(filename)
    plotGapHistogram(x)
}
