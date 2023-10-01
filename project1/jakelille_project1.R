# PROBLEM 1
data <- read.csv("/Users/jakelille/Desktop/table3E2.csv")

sorted_data <- sort(data)

n <- length(sorted_data)

expected_normal <- qnorm(ppoints(n))
expected_exponential <- qexp(ppoints(n), rate = 1/mean(sorted_data))
expected_weibull <- qweibull(ppoints(n), shape = 2, scale = mean(sorted_data))  # Shape parameter assumed to be 2
expected_lognormal <- qlnorm(ppoints(n), meanlog = mean(log(sorted_data)), sdlog = sd(log(sorted_data)))

par(mfrow = c(2, 2)) 

# Normal Probability Plot
qqnorm(sorted_data, main = "Normal Probability Plot")
qqline(sorted_data, col = 2)  
lines(expected_normal, sorted_data, col = 3)

# Exponential Probability Plot
qqplot(expected_exponential, sorted_data, main = "Exponential Probability Plot", xlab = "Theoretical Quantiles", ylab = "Sample Quantiles")
abline(0, 1, col = 2)  

# Weibull Probability Plot
qqplot(expected_weibull, sorted_data, main = "Weibull Probability Plot", xlab = "Theoretical Quantiles", ylab = "Sample Quantiles")
abline(0, 1, col = 2)  

# Lognormal Probability Plot
qqplot(expected_lognormal, sorted_data, main = "Lognormal Probability Plot", xlab = "Theoretical Quantiles", ylab = "Sample Quantiles")
abline(0, 1, col = 2)  

par(mfrow = c(1, 1))

# PROBLEM 2
viscosity <- c(13.3, 14.5, 15.3, 15.3, 14.3, 14.8, 15.2, 14.5, 14.6, 14.1, 14.3, 16.1, 13.1, 15.5, 12.6, 14.6, 14.3, 15.4, 15.2, 16.8, 14.9, 13.7, 15.2, 14.5, 15.3, 15.6, 15.8, 13.3, 14.1, 15.4, 15.2, 15.2, 15.9, 16.5, 14.8, 15.1, 17, 14.9, 14.8, 14, 15.8, 13.7, 15.1, 13.4, 14.1, 14.8, 14.3, 14.3, 16.4, 16.9, 14.2, 16.9, 14.9, 15.2, 14.4, 15.2, 14.6, 16.4, 14.2, 15.7, 16, 14.9, 13.6, 15.3, 14.3, 15.6, 16.1, 13.9, 15.2, 14.4, 14, 14.4, 13.7, 13.8, 15.6, 14.5, 12.8, 16.1, 16.6, 15.6)

stem(viscosity)

hist(viscosity, main = "Viscosity Histogram", xlab = "Viscosity Values", ylab = "Frequency")


boxplot(viscosity, main = "Viscosity Boxplot", ylab = "Viscosity Values")
max(viscosity)

# PROBLEM 3

population_mean <- 60
population_sd <- 4    
sample_size <- 100  

sample_mean_sd <- population_sd / sqrt(sample_size)
sample_mean_sd

x <- 61  
z <- (x - population_mean) / sample_mean_sd


probability_exceeds_61 <- 1 - pnorm(z)


probability_exceeds_61

lower_limit <- 59.2  
upper_limit <- 60.4 


z_lower <- (lower_limit - population_mean) / sample_mean_sd
z_upper <- (upper_limit - population_mean) / sample_mean_sd


probability_between <- pnorm(z_upper) - pnorm(z_lower)


probability_between

# PROBLEM 4

meanlog <- 6
meansd <- 1.2


probability_exceeds_x <- 1-plnorm(300, meanlog, meansd)


probability_exceeds_x



lambda <- 0.001
K <- 2
x <- 30


F <- 1 - exp(-((lambda * x)^K))

F