# This is Course Project 1

getwd()

# Read the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# Manage the data
subdata <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

png("plot1.png", width=480, height=480)

# Drawing Plot1
hist(as.numeric(as.character(subdata$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power(killowatts)")
dev.off()

