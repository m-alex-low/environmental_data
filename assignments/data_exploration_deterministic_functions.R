require("here")

dat_habitat = data.frame(read.csv(here("data","hab.sta.csv")))
dat_habitat

#setting up 3x2 plot
par(mfrow=c(2,3))

#hists
hist(dat_habitat$elev, main="Histogram of sampling site elevation", xlab="Site elevation")
hist(dat_habitat$aspect, main="Histogram of sampling site aspect", breaks=16, xlab="Site aspect")
hist(dat_habitat$slope, main="Histogram of sampling site slope", xlab="Site slope")

#scatters
plot(dat_habitat$elev, dat_habitat$ba.tot, xlab = "Site elevation", ylab= "Total Basal Area", main= "Total Basal Area By Elevation", cex=0.8, col='blue')
curve(line_point_slope(x, x1 = 672, y1 = 28, slope = 0.03), add = TRUE, col='orange')
plot(dat_habitat$aspect, dat_habitat$ba.tot, xlab = "Site aspect", ylab= "Total Basal Area", main= "Total Basal Area By Aspect", cex=0.8, col='purple')
curve(line_point_slope(x, x1 = 250, y1 = 14, slope = 0.03), add = TRUE,col='blue')
plot(dat_habitat$slope, dat_habitat$ba.tot, xlab = "Site slope", ylab= "Total Basal Area", main= "Total Basal Area By Slope", cex=0.8, col='brown')
curve(line_point_slope(x, x1 = 43, y1 = 14, slope = 0.01), add = TRUE, col='red')

# Calculates the value of y for a linear function, given the coordinates
# of a known point (x1, y1) and the slope of the line.
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}
line_point_slope(dat_habitat$slope, )