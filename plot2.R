source("common.R")

## function plots global active power for two days period
plotGlobalActivePower <- function(x) {
    plot(x$datetime, x$Global_active_power, type="l",
         ylab="", xlab="")
}

## function loads data and plots global active power
plot2 <- function(filename) {
    x <- loadData(filename)
    plotGlobalActivePower(x)
    title(ylab = "Global Active Power (kilowatts)")
}

## function saves result of plotting to PNG file
plot2ToPng <- function(dataFile) {
    plot2Png("plot2.png", function() {plot2(dataFile)})
}
    
