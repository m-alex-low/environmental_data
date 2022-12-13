require(here)
require(palmerpenguins)

t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)

boxplot(body_mass_g ~ sex + species, data = penguins,  names = c("Female Adelie", "Male Adelie", "Female Chinstrap",
                                                                 "Male Chinstrap", "Female Gentoo", "Male Gentoo"), main =
          "Body Mass by Sex + Species", xlab = "Sex + Species", ylab = "Body Mass (g)")

fit_species = lm(body_mass_g ~ species, data = penguins)
summary(fit_species)
anova(fit_species)

fit_both <- lm(body_mass_g ~ sex * species, data = penguins)
summary(fit_both)

mean(penguins$body_mass_g[penguins$sex=="female" & penguins$species=="Chinstrap"], na.rm=TRUE)
