
source("common.R")

plotGapHistogram <- function(epcData) {
    hist(epcData$Global_active_power, main="Global Active Power",
         xlab="Global Active Power (kilowatts)", col="red")
}

plot1 <- function(filename) {
    x <- loadData(filename)
    plotGapHistogram(x)
}

plot1ToPng <- function(dataFile) {
    plot2Png("plot1.png", function() {plot1(dataFile)})
}
