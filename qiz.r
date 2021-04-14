data <-read.csv("quiz.csv")

data[1:2,]
data[152:153,]
data[47,]
Ozone <- data[,1]
bad <- is.na(Ozone)
Ozone[bad]
good <- Ozone[!bad]
mean(good)

OzoneTemp <- data[, c("Ozone", "Solar.R", "Temp")]
SubOzone <- OzoneTemp$Ozone > 31
SubTemp <- OzoneTemp$Temp >90
OzoneTemp



x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

data6 <- subset(data, Month == 6)
mean(data6$Temp)
Ozone31 <- subset(data, Ozone > 31)
OzoneTemp <- subset(Ozone31, Temp > 90)
mean(OzoneTemp$Solar.R)
OzoneMayMax <- subset(data, Month == 5)
bad <- is.na(OzoneMayMax$Ozone)
max(OzoneMayMax$Ozone[!bad])