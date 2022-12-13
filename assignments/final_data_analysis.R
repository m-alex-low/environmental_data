library(here)

#Numerical exploration
delomys <- data.frame(read.csv(here("data","delomys.csv")))
head(delomys)
summary(delomys)

#body mass test for normality
shapiro.test(delomys$body_mass)
#body length test for normality
shapiro.test(delomys$body_length)



#Graphical exploration
#A scatterplot of body mass and body length
plot(delomys$body_mass, delomys$body_length, main="Body Mass vs Body Length", ylab = "Body Length", xlab = "Body Mass")
#A histogram of body mass
hist(delomys$body_mass, xlab="Body Mass", main="Histogram of Body Mass")
#A histogram of body length
hist(delomys$body_length, xlab="Body Length", main="Histogram of Body Length")
#A conditional boxplot of body mass, conditioned on species (column binomial)
boxplot(delomys$body_mass ~ delomys$binomial, xlab="Species", ylab="Body Mass", main = "Body Mass by Species")
#A conditional boxplot of body mass, conditioned on sex (column sex)
boxplot(delomys$body_mass ~ delomys$sex, xlab="Sex", ylab="Body Mass", main = "Body Mass by Sex")
#A conditional boxplot of body mass, conditioned on both species and sex
boxplot(delomys$body_mass ~ delomys$sex*delomys$binomial, xlab="Species", ylab="Body Mass", main = "Body Mass by Species and Sex",
        names = c("Female Delomys Dorsalis","Male Delomys Dorsalis","Female Delomys Sublineatus", "Male Delomys Sublinaetus"))



#Model Building
fit1 = lm(body_length ~ body_mass, data = delomys)
fit2 = lm(body_mass ~ sex, data = delomys)
fit3 = lm(body_mass ~ binomial, data = delomys)
fit4 = lm(body_mass ~ sex + binomial, data = delomys)
fit5 = lm(body_mass ~ sex * binomial, data = delomys)



#Model Diagnostics
hist(residuals(fit1), main="Fit 1 Residuals")
hist(residuals(fit2), main="Fit 2 Residuals")
hist(residuals(fit3), main="Fit 3 Residuals")
hist(residuals(fit4), main="Fit 4 Residuals")
hist(residuals(fit5), main="Fit 5 Residuals")

shapiro.test(residuals(fit1))
shapiro.test(residuals(fit2))
shapiro.test(residuals(fit3))
shapiro.test(residuals(fit4))
shapiro.test(residuals(fit5))

summary(fit1)
summary(fit2)
summary(fit3)
anova(fit4)
anova(fit5)




#model comparison
AIC(fit2)
AIC(fit3)
AIC(fit4)
AIC(fit5)
