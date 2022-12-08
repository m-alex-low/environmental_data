critical_values <- qt(c(.025, .975), df = 49) 

#sample standard error= SSD / sqrt(n), and SSD is given as 3.14 while n is given as 50
SSE <- (3.14 / sqrt(50))
SSE

CI_Radius <- SSE * critical_values[2]
CI_Radius

#The mean, 10, is given
CI_Interval <- c((10-CI_Radius),(10+CI_Radius))
CI_Interval
