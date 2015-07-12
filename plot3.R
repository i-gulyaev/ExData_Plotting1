source("common.R")


## function plots energy sub metering
## for 3 variables from given data.frame x
plotEnergySubMetering <- function(x) {
    plot(x$datetime, x$Sub_metering_1, type="l",
         xlab="", ylab="Energy sub metering")
    lines(x$datetime, x$Sub_metering_2, col="red")
    lines(x$datetime, x$Sub_metering_3, col="blue")
}

# function add legent to the sub metering plot
# created by plotEnergySubMetering()
# bty - type of border in legend
addLegend <- function(bty = "o") {
    legend("topright", col=c("black", "red", "blue"),
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lwd=1, pch=c(NA,NA), bty=bty)
}

## function plots energy sub metering
## from the given data file.
## Plotting is performed on screen device 
plot3 <- function(filename) {
    x <- loadData(filename)
    plotEnergySubMetering(x)
    addLegend()
}


## function plots plot3() on png device
plot3ToPng <- function(dataFile) {
    plot2Png("plot3.png", function() {plot3(dataFile)})
}
