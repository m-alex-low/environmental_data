require(here)
require(palmerpenguins)


birds <- read.csv(here("data","bird.sta.csv"))
habitats <- read.csv(here("data","hab.sta.csv"))

wiwa_counts = c(2, 6)
sum(log(dpois(x = wiwa_counts, lambda = 4)))

hist(birds$WIWR, breaks = 0:(max(birds$WIWR) + 1) - 0.5, main = "Histogram of Winter Wren counts")
sum(log(dpois(x = birds$WIWR, lambda = 1.5)))

sum(log(dbinom(x = birds$WIWR, size = length(birds$WIWR),  prob = 0.01)))

set.seed(1)
vec_rnorm = rnorm(n = 10, mean = 0, sd = 1)
sum(log(dnorm(vec_rnorm, mean=0.13, sd=0.75)))

penguins = data.frame(penguins)
sum(log(dnorm(penguins$flipper_length_mm[!is.na(penguins$flipper_length_mm)],
              mean=200.9, sd=14.1)))
