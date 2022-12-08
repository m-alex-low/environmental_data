install.packages("here")
require(here)

dat_catrate <- read.csv(here("data","catrate.csv"))
dat_delomys <- read.csv(here("data","delomys.csv"))
dat_rope <- read.csv(here("data","rope.csv"))

plot(dat_catrate$pond, dat_catrate$cat.rate, main = "Alex Low's catrate Scatterplot", xlab = "Pond Number", ylab= "Cat Rate", axes=FALSE, col="#bb82bd")
axis(1, at = c(0:14))
axis(2)
box()
