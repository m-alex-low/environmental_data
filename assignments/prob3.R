#Prob density graph
# How many points?
n = 1000
# Create a vector of x-values from -4 to 4:
x = seq(from = -6, to = 6, length.out = n)
# Create the corresponding y-values:
y = dnorm(x, mean = 0, sd = 1)
# plot!
plot(y ~ x, type = "l", ylab = "Probability Density")

y_2 = dnorm(x, mean = 0, sd = 2)
points(y_2 ~ x, type = "l", lty  = 2)

y_3 = dnorm(x, mean = -2, sd = 1)
points(y_3 ~ x, type = "l", lty  = 2)

#cumulative density
y_cdf_1 = pnorm(x, mean = 0, sd = 1)
plot(y_cdf_1 ~ x, type = "l", ylab = "cumulative density")

y_cdf_2 = pnorm(x, mean = 0, sd = 2)
plot(y_cdf_1 ~ x, type = "l", ylab = "Cumulative Density")
points(y_cdf_2 ~ x, type = "l", lty = 2)




#binomial mass plot
x_bin = 0:5
y_bin_2 = dbinom(x_bin, size = 5, prob = 0.4)

barplot(
  height = y_bin_2,
  # the names to print with each bar:
  names.arg = x_bin,
  # Tells R to remove space between bars:
  space = 0,
  ylab = "Pr(x)",
  main = "Binomial: n = 5, p = 0.4")

