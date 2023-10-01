
# set WD to my desktop to access csv file...
setwd("/Users/jakelille/Desktop")

#data <- read.csv("/Users/jakelille/Desktop/table3E2.csv")

#sort data based on column "yield" from CSV file...
#sorted_data <- data[order(data$yield), ]

data <- c(94.1, 93.2, 90.6, 91.4, 88.2, 86.1, 95.1, 90.0, 92.4, 87.3, 86.6, 91.2, 86.1, 90.4, 89.1, 87.3, 84.1, 90.1, 95.2, 86.1, 94.3, 93.2, 86.7, 83.0, 95.3, 94.1, 97.8, 93.1, 86.4, 87.6, 94.1, 92.1, 96.4, 88.2, 86.4, 85.0, 84.9, 87.3, 89.6, 90.3, 93.1, 94.6, 96.3, 94.7, 91.1, 92.4, 90.6, 89.1, 88.8, 86.4, 85.1, 84.0, 93.7, 87.7, 90.6, 89.4, 88.6, 84.1, 82.6, 83.1, 84.6, 83.6, 85.4, 89.7, 87.6, 85.1, 89.6, 90.0, 90.1, 94.3, 97.3, 96.8, 94.4, 96.1, 98.0, 85.4, 86.6, 91.7, 87.5, 84.2, 85.1, 90.5, 95.6, 88.3, 84.1, 83.7, 82.9, 87.3, 86.4, 84.5)

# double check to see if data is properly sorted...
print(sorted_data)

# NORMAL PROBABILITY PLOT

qqnorm(data)
qqline(data)

plot(1, type = "n", xlab = "Theoretical Quantiles", ylab = "Sample Quantiles")
points(qqnorm(data), col = "blue")

# EXPONENTIAL



# need to sort data
sorted_data <- sort(data)

n <- length(sorted_data)
expected_quantiles <- qexp(ppoints(n))
plot(expected_quantiles, sorted_data, pch = 16, xlab = "Theoretical Quantiles", ylab = "Sample Quantiles")
abline(0, 1, col = "red")

