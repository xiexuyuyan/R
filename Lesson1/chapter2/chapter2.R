fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  # return(temp_C)
  temp_C
}

fahrenheit_to_celsius(212)

best_practice <- c("Write", "programs", "for", "people", "not", "computers")
asterisk <- "***"
# R interprets a variable with a single value as a vector with one element.
highlight <- function(content, wrapper){
  tempStr <- c(wrapper, content, wrapper)
  # return(tempStr)
  tempStr
}
highlight(best_practice, asterisk)

# write a function called edges that returns a vector made up of the first and last elements of its input
dry_principle <- c("Don't", "repeat", "yourself", "or", "others")
edges <- function(inputs){
  return(c(inputs[1], inputs[length(inputs)]))
}
edges(dry_principle)

input_1 <- 20
mySum <- function(input_1, input_2 = 10) {
  output <- input_1 + input_2
  return(output)
}
mySum(input_1 = 1, 3)
# also can be 'mySum(1, 3)'


center <- function(data, midpoint) {
  # return a new vector containing the original data centered around the
  # midpoint.
  # Example: center(c(1, 2, 3), 0) => c(-1, 0, 1)
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}
dat <- read.csv(file = "data/inflammation-01.csv", header = FALSE)
centered <- center(dat[, 4], 0)
head(centered)

min(dat[, 4])
mean(dat[, 4])
max(dat[, 4])
mean(centered)
max(centered)

sd(dat[, 4])
sd(centered)

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}
analyze("data/inflammation-02.csv")