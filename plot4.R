
source("common.R")
source("plot2.R")
source("plot3.R")


## function plots voltage data
plotVoltage <- function(x) {
    with(x, plot(datetime, Voltage, type="l"))
}

## function plots global reactive data
plotGlobalReactivePower <- function(x) {
    with(x, plot(datetime, Global_reactive_power, type="l"))
}


## function loads power consumption data and produces four plots:
## for global active power, for energy sub metering, for voltage and
## global reactive power
## plotting is done on screen device
plot4 <- function(filename) {
    x <- loadData(filename)

    par(mfcol = c(2,2))
    plotGlobalActivePower(x)
    title(ylab = "Global Active Power")

    plotEnergySubMetering(x)
    addLegend(bty="n")

    plotVoltage(x)

    plotGlobalReactivePower(x)
}

## function saves results of plot4() to PNG file
plot4ToPng <- function(dataFile) {
    plot2Png("plot4.png", function() {plot4(dataFile)})
}
