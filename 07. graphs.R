# graphs

?par()
# pause after each graph
par(ask = TRUE)

attach(mtcars)
plot(wt, mpg)
abline(lm(mpg~wt)) # the best fit line
title('Regression of MPG on Weight')
detach(mtcars)

# Save graph
pdf('mygraph.pdf')
  attach(mtcars)
  plot(wt, mpg)
  abline(lm(mpg~wt)) # the best fit line
  title('Regression of MPG on Weight')
  detach(mtcars)
dev.off()

attach(mtcars)
plot(wt, mpg)
abline(lm(mpg~wt))
title("Regression of MPG on Weight")
detach(mtcars)

?dev.new
# statements to create graph 1
attach(mtcars)
plot(wt, mpg)
dev.new()
# statements to create a graph 2
attach(mtcars)
plot(wt, cyl)

?plot()
par(ask = F)
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
plot(dose, drugA, type = "p")
plot(dose, drugA, type = "l")
plot(dose, drugA, type = "b")
plot(dose, drugA, type = "c")
plot(dose, drugA, type = "o")
plot(dose, drugA, type = "h")
plot(dose, drugA, type = "S")
plot(dose, drugA, type = "s")

# graph parameter
opar <- par(no.readonly = T)
par(lty = 2, pch = 17)
plot(dose, drugA, type = 'b' )
par(opar) # restore settings
plot(dose, drugA, type = "b")

plot(dose, drugA, type="b", lty=2, pch=17)

?hist
?boxplot
n <- 10
mycolors <- rainbow(10)
pie(rep(1,n), labels = mycolors, col = mycolors)
mygrays <- gray(0:n/n)
pie(rep(1,n), labels = mygrays, col = mygrays)

# package:RColorBrewer
install.packages("RColorBrewer")

library(RColorBrewer)
n <- 7
mycolors <- brewer.pal(n, "Set1")
?barplot
barplot(rep(1,n), col=mycolors)

# Text characteristics
par(font.lab=3, cex.lab=1.5, font.main=4, cex.main=2)

# Graph and margin dimensions
par(pin=c(4,3), mai=c(1,.5, 1, .2))
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
plot(dose, drugA, type = "b")
par(opar)     
plot(dose, drugA, type = "b")

par(opar)
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
par(pin = c(2, 3))
par(lwd = 2, cex = 1.5)
par(cex.axis = 0.75, font.axis = 3)
plot(dose, drugA, type = "b", pch = 19, lty = 2, col = "red")
plot(dose, drugB, type = 'b', pch = 23, lty = 6, col = 'blue', bg = 'green')

par(opar)
par(col = "blue")
plot(dose, drugB, type = "b", pch = 23, lty = 6, 
     bg = "green")

# Adding text, customized axes, and legends
par(opar)
plot(dose, drugA, type = 'b', col = 'red', lty = 2, pch = 2, lwd = 2, main = 'Clinical Trials for Drug !'
     , sub = 'This is hypothetical data', xlab = 'Dosage',
     ylab = 'Drug Response', xlim = c(0, 70), ylim = c(0, 70))

# titles
plot(dose, drugA, type = 'b', xlab = '', ylab = '')
title(main = 'main title', sub = 'sub-title', xlab = 'x-axis', ylab = 'y-axis')

# Axes
par(opar)

x <- c(1:10)
y <- x
z <- 10/x
par(mar = c(5, 4, 4, 8) + 0.1)
plot(x, y, type = "b", pch = 21, col = "red", yaxt = "n", 
     lty = 3, ann = FALSE)
lines(x, z, type = "b", pch = 22, col = "blue", lty = 2)

axis(2, at = x, label = x, col.axis = 'red', las = 2)
axis(4, at = z, labels = round(z, digits = 2), col.axis = "blue", 
     las = 2, cex.axis = 0.7, tck = -0.05)
mtext("y=1/x", side = 4, line = 3, cex.lab = 1, las = 2, 
      col = "blue")
title("An Example of Creative Axes", xlab = "X values", 
      ylab = "Y=X")

# Minor tick marks
install.packages("Hmisc")
install.packages("acepack")
library(Hmisc)
minor.tick(nx=2, ny=3, tick.ratio=0.5)

# Reference lines
abline(h = c(1, 5, 7))
abline(v = seq(1, 10, 2), lty = 2, col = 'blue')


# Legend
?legend
par(opar)

dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
par(lwd = 2, cex = 1.5, font.lab = 2)
plot(dose, drugA, type = "b", pch = 15, lty = 1, col = "red", 
     ylim = c(0, 60), main = "Drug A vs. Drug B", xlab = "Drug Dosage", 
     ylab = "Drug Response")
lines(dose, drugB, type = 'b', pch = 17, lty = 2, col = 'blue')
abline(h = c(30), lwd = 1.5, lty = 2, col = 'gray')

library(Hmisc)
minor.tick(nx = 3, ny = 3, tick.ratio = 0.5)
legend(locator(1), inset = 5, title = "Drug Type", c("A", "B"), lty = c(1, 2), pch = c(15, 17), col = c("red", "blue"))
par(opar)

# Text annotations

attach(mtcars)
plot(wt, mpg, main = "Milage vs. Car Weight", xlab = "Weight", 
     ylab = "Mileage", pch = 18, col = "blue")
text(wt, mpg, row.names(mtcars), cex = 0.6, pos = 4, 
     col = "red")
detach(mtcars)

par(opar) 
par(cex = 1.5)
plot(1:7, 1:7, type = "n")
text(3, 3, "Example of default text")
text(4, 4, family = "mono", "Example of mono-spaced text")
text(5, 5, family = "serif", "Example of serif text")

par(opar)
x <- c(1:10)
y <- x
z <- 10/x
par(mar = c(5, 4, 4, 8) + 0.1)
plot(x, y, type = "b", pch = 21, col = "red", yaxt = "n", 
     lty = 3, ann = FALSE)
lines(x, z, type = "b", pch = 22, col = "blue", lty = 2)
axis(2, at = x, labels = x, col.axis = "red", las = 2)
axis(4, at = z, labels = round(z, digits = 2), col.axis = "blue", 
     las = 2, cex.axis = 0.7, tck = -0.01)
title("An Example of Creative Axes", xlab = "X values", 
      ylab = "Y=X")
mtext("y=1/x", side = 4, line = 3, cex.lab = 1, las = 2, 
      col = "blue")

# Math annotations
?plotmath
demo(plotmath)

plot(1:10, 1:10)
text(4, 9, expression(hat(beta) == (X^t * X)^{-1} * X^t * y))
text(7, 9, expression(x!=y))
text(4, 4, expression(x==y),pos=4)
text(4, 4, expression(x==y),pos=1)

# combining graphs
attach(mtcars)
par(opar) 
par(mfrow = c(2, 2))
plot(wt, mpg, main = "Scatterplot of wt vs. mpg")
plot(wt, disp, main = "Scatterplot of wt vs disp")
hist(wt, main = "Histogram of wt")
boxplot(wt, main = "Boxplot of wt")
detach(mtcars)

attach(mtcars)
par(opar) 
par(mfcol = c(2, 2))
plot(wt, mpg, main = "Scatterplot of wt vs. mpg")
plot(wt, disp, main = "Scatterplot of wt vs disp")
hist(wt, main = "Histogram of wt")
boxplot(wt, main = "Boxplot of wt")
detach(mtcars)

par(opar)
attach(mtcars)
par(mfrow = c(3, 1))
hist(wt)
hist(mpg)
hist(disp)
detach(mtcars)

par(opar)
attach(mtcars)
par(mfcol = c(1, 3))
hist(wt,main="")
hist(mpg,main="")
hist(disp,ann=FALSE)
detach(mtcars)

?layout
par(opar)
attach(mtcars)
layout(matrix(c(1, 1, 2, 3), 2, 2, byrow = TRUE))
hist(wt)
hist(mpg)
hist(disp)
detach(mtcars)

par(opar)
attach(mtcars)
layout(matrix(c(1, 1, 2, 3), 2, 2, byrow = TRUE), 
       widths = c(2, 1), heights = c(1, 1))
hist(wt)
hist(mpg)
hist(disp)
detach(mtcars)