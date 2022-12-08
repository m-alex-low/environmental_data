require(here)
require(palmerpenguins)

catrate <- read.csv(here('environmental_data//data', 'catrate.csv'))
head(catrate)
summary(catrate)

hist(catrate$cat.rate, main = 'Histogram of Catastrophe Rates', xlab = 'Catastrophe Rate', ylab = 'Frequency')

shapiro.test(catrate$cat.rate)

t.test(catrate$cat.rate, mu=0.2857143)
t.test(catrate$cat.rate, mu=0.2857143, alternative = 'greater')
t.test(catrate$cat.rate, mu=0.2857143, alternative = 'less')

wilcox.test(catrate$cat.rate, mu = 2/7)

#penguins start
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)

boxplot(flipper_length_mm ~ species, data = penguin_dat,ylab = "Flipper Length (mm)")
shapiro.test(penguin_dat$flipper_length_mm[penguin_dat$species == "Adelie"])
shapiro.test(penguin_dat$flipper_length_mm[penguin_dat$species == "Chinstrap"])
par(mfrow = c(1, 2))
hist(penguin_dat$flipper_length_mm[penguin_dat$species == "Adelie"], main = 'Histogram of Adelie penguin flipper lengths',
     xlab = 'Flipper Length(mm)')
hist(penguin_dat$flipper_length_mm[penguin_dat$species == "Chinstrap"], main = 'Histogram of Chinstrap penguin flipper lengths',
     xlab = 'Flipper Length(mm)')

adelie = subset(penguin_dat, species == "Adelie")
chinstrap = subset(penguin_dat, species == "Chinstrap")
t.test(x= adelie$flipper_length_mm, y= chinstrap$flipper_length_mm)
wilcox.test(x= adelie$flipper_length_mm, y= chinstrap$flipper_length_mm)
