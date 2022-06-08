#Module 13 Calvin Grimm 2022-06-08

#Short R Script 
x = rnorm(100, mean = 20, sd = 5)
y = x + rnorm(100, mean = 0, sd = 2)

fit = lm(y ~ x)

summary(fit)

#Create plot from Random Numbers.
plot(x,y)
abline(fit, col=2)

#Read and plot from Mauna Loa file
co2 = read.csv("co2_mm_mlo.csv")
plot(co2$decdate, co2$interpolated, type='l', main="Mauna Loa CO2",
     xlab="Time", ylab="ppm")
lines(co2$decdate, co2$trend, col=2, lwd=2)