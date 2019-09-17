rm(list=ls())


# for test function
func <- function(argc){
  argc <- (argc * 5)
  return (argc)
}

#Date and Time
# as.Date("yyyy-mm-dd")
today <- as.Date("2019-09-17")
weekdays(today)
months(today)
quarters(today)

myBirDay <- as.Date("1998-09-21")
#> Time difference of 7666 days
as.numeric (today - myBirDay)

# POSIXct POSIXlt
timeNow <- Sys.time()
# class(timeNow)
time_lt <- as.POSIXlt(timeNow)
# class(temp)
names(unclass(time_lt))
# time_lt$sec


# as.Date("2019-09-17")
someDay <- "Jan 01, 2015 01:01"
strptime(someDay, "%B %d, %Y %H:%M")





