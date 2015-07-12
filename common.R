
## function loads power consumption data for
## two day period from 2007/02/01 to 2007/02/02
## from file to dataframe
loadData <- function(filename) {
    cnames = c("Date",
               "Time",
               "Global_active_power",
               "Global_reactive_power",
               "Voltage",
               "Global_intensity",
               "Sub_metering_1",
               "Sub_metering_2",
               "Sub_metering_3")

    ## magic numbers of rows obtained by filtering
    ## original data file with command:
    ## grep -n "^[1-2]/02/2007" filename
    powerData <- read.table(filename, sep=";",
                            col.names=cnames,
                            na.strings = "?",
                            skip=66638,
                            nrows=69517-66638)

    dateTime <- paste(powerData$Date, powerData$Time)
    colDate <-strptime(dateTime, "%d/%m/%Y %H:%M:%S")
    powerData$Time <- NULL
    powerData$Date <- NULL
    powerData$datetime <- colDate
    powerData
}

## function puts plotting result of the given function to png file
plot2Png <- function(filename, func) {
    png(filename=filename)
    func()
    dev.off()
    
}
