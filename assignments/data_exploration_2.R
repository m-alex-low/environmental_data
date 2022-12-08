install.packages("here")
require(here)

dat_bird_sta <- read.csv(here("data","bird.sta.csv"))
dat_hab_sta <- read.csv(here("data","hab.sta.csv"))

pairs(dat_hab_sta[, c("lat", "long","elev","slope")])
hist(dat_bird_sta$HOME, breaks = 0:7 - 0.5, xlab = "Number of birds counted", main = "Histogram of Hooded Merganser Abundance")
