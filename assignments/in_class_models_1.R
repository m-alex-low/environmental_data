require(palmerpenguins)
dat_ade = droplevels(subset(penguins, species == "Adelie"))

hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", xlab = "body mass (g)")

boxplot(dat_ade$body_mass_g~dat_ade$sex, main = "Adelie Body Mass, by sex", 
        xlab = "Sex", ylab = "Body mass (g)")
t.test(dat_ade$body_mass_g[dat_ade$sex == "female"], mu=0)
t.test(dat_ade$body_mass_g[dat_ade$sex == "male"], alternative="greater", mu=4000)

t.test(dat_ade$body_mass_g[dat_ade$sex == "male"], dat_ade$body_mass_g[dat_ade$sex == "female"], alternative = "greater", mu=0)
