data(iris)

fit_species = lm(Sepal.Length ~ Species, data = iris)
summary(fit_species)
boxplot(Sepal.Length ~ Species, data=iris,  ylab = "Sepal Length",
        main = "Sepal Length by Species")
shapiro.test(residuals(fit_species))

fit_petals = lm(Petal.Width ~ Petal.Length, data = iris)
plot(
  Petal.Width ~ Petal.Length,
  data = iris,
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)")
summary(fit_petals)
-0.363076 + 4*(0.415755)
shapiro.test(residuals(fit_petals))
