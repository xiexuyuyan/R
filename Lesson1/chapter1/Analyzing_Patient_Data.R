dat <- read.csv(file = "data/inflammation-01.csv", header = FALSE)

class(dat)

dim(dat)

View(dat)

dat$V4

dat[ , 'V4']

# first row, all of the columns
patient_1 <- dat[1, ]
# max inflammation for patient 1
max(patient_1)

# max inflammation for patient 2
max(dat[2, ])

avg_patient_inflammation <- apply(dat, 1, mean)
avg_day_inflammation <- apply(dat, 2, mean)

avg_patient_inflammation
avg_day_inflammation


plot(avg_day_inflammation)

max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)

min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)


whichPatients <- seq(2, 60, 2) # i.e., which rows
whichDays <- seq(1, 5)         # i.e., which columns
dat2 <- dat
# check the size of your subset: returns `30 5`,
# that is 30 [rows=patients] by 5 [columns=days]
dim(dat2[whichPatients, whichDays])
dat2[whichPatients, whichDays] <- dat2[whichPatients, whichDays] / 2
dat2