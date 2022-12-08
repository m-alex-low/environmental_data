#Installing and requiring necessary packages for reading the excel file
install.packages("readxl")
install.packages("here")
require(readxl)
require(here)

#Creating a dataframe from excel sheet input
df <- data.frame(read_excel(here("data", "Quantitative_Data_Set.xlsx"), range = "A2:E80"))

#Figure 1: Converting mg/kg readings to ug/kg for data consistency
df$Result[df$Units == "mg/kg"] <- df$Result[df$Units == "mg/kg"] * 1000
df$Units[df$Units == "mg/kg"] <- "ug/kg"


#Histograms generated to view spread of sampling results by year
par(mfrow = c(2, 3))
hist(df$Result[df$Sample.Year == "2015"], main = "Sample Distributions, 2015", 
     xlab = "Sampling Result (ug/kg)")
hist(df$Result[df$Sample.Year == "2016"], main = "Sample Distributions, 2016", 
     xlab = "Sampling Result (ug/kg)")
hist(df$Result[df$Sample.Year == "2017"], main = "Sample Distributions, 2017", 
     xlab = "Sampling Result (ug/kg)")
hist(df$Result[df$Sample.Year == "2018"], main = "Sample Distributions, 2018", 
     xlab = "Sampling Result (ug/kg)")
hist(df$Result[df$Sample.Year == "2019"], main = "Sample Distributions, 2019", 
     xlab = "Sampling Result (ug/kg)")


#Boxplots generated to examine tendencies of data by year and location. plot = FALSE will return the statistics
#on which the boxplots are constructed, which include minimums, maximums, medians, and First/Third Quartiles
par(mfrow = c(1,1))
#Figure 2: By year
boxplot(Result ~ Sample.Year, data = df, ylim = c(0,450), main = "Sampling Result by Year", xlab = "Year Sampled", ylab = "Sampling Result (ug/kg)")
statistics_year <- data.frame(boxplot(Result ~ Sample.Year, data = df, plot = FALSE)$stats, row.names=c("Min","First Quartile","Median","Third Quartile","Maximum"))
colnames(statistics_year) <- c("2015", "2016", "2017", "2018", "2019")

#Figure 3: By location
boxplot(Result ~ Location, data = df, ylim = c(0,450), main = "Sampling Result by Distance", xlab = "Distance From Spill", ylab = "Sampling Result (ug/kg)")
statistics_location <- data.frame(boxplot(Result ~ Location, data = df, plot = FALSE)$stats, row.names=c("Min","First Quartile","Median","Third Quartile","Maximum"))
colnames(statistics_location) <- c("0-0.5 miles", "0.5-1 miles", "1+ miles")


#Visuals of Location(distance) vs Sample Result, by year
par(mfrow = c(2,3))
boxplot(Result[Sample.Year=="2015"] ~ Location[Sample.Year=="2015"], data = df, ylim = c(0,450), main = "Sampling Result by Distance, 2015",
        xlab = "Distance", ylab = "Sampling Result (ug/kg)")
boxplot(Result[Sample.Year=="2016"] ~ Location[Sample.Year=="2016"], data = df, ylim = c(0,450), main = "Sampling Result by Distance, 2016",
        xlab = "Distance", ylab = "Sampling Result (ug/kg)")
boxplot(Result[Sample.Year=="2017"] ~ Location[Sample.Year=="2017"], data = df, ylim = c(0,450), main = "Sampling Result by Distance, 2017",
        xlab = "Distance", ylab = "Sampling Result (ug/kg)")
boxplot(Result[Sample.Year=="2018"] ~ Location[Sample.Year=="2018"], data = df, ylim = c(0,450), main = "Sampling Result by Distance, 2018",
        xlab = "Distance", ylab = "Sampling Result (ug/kg)")
boxplot(Result[Sample.Year=="2019"] ~ Location[Sample.Year=="2019"], data = df, ylim = c(0,450), main = "Sampling Result by Distance, 2019",
        xlab = "Distance", ylab = "Sampling Result (ug/kg)")

