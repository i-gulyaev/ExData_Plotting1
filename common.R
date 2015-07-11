
readElectricPowerConsumptionData <- function(filename) {
    cnames = c("Date",
               "Time",
               "Global_active_power",
               "Global_reactive_power",
               "Voltage",
               "Global_intensity",
               "Sub_metering_1",
               "Sub_metering_2",
               "Sub_metering_3")
    powerData <- read.table(filename, sep=";",
                            col.names=cnames,
                            na.strings = "?",
                            skip=66638,
                            nrows=69517-66638)

    dateTime <- paste(powerData$Date, powerData$Time)
    colDate <-strptime(dateTime, "%d/%m/%Y %H:%M:%S")
    powerData$Time <- NULL
    powerData$Date <- NULL
    powerData$DateTime <- colDate
    powerData
}
