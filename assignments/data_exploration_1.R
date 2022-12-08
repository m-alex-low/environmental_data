install.packages("palmerpenguins")
install.packages("here")

require(palmerpenguins)
require(here)

penguins = data.frame(penguins)

mean(penguins$body_mass_g, na.rm=TRUE)
summary(penguins)

boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

coplot(body_mass_g ~ bill_depth_mm | species, data = penguins, rows = 1,)

require(here)
png(filename = here("basic_histogram.png"), width = 800, height = 600)
hist(penguins$body_mass_g)
dev.off()

hist(penguins$flipper_length_mm)
coplot(species ~ bill_depth_mm | sex, data= penguins)
