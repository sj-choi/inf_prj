## Distribution of 40 random exponentials (with rate = 2)
set.seed(2) # This line is intended to perform a reproducible simulation.
ss40 <- rexp(n = 40, rate = 0.2)
hist(ss40)
mean(ss40)
var(ss40)


## Sample mean vs. Theoretical mean
n <- 1000
set.seed(3)
means <- cumsum(rexp(n, rate = 0.2))/(1:n)
plot(means ~ c(1:n), 
     xlab= "Number of Trials", 
     ylab = "Mean Value", 
     main = "Law of Large Number: LLN",
     type = "l", lwd = 3, col = "red")
abline(h = 5, col = "blue", lwd = 3)



## Alternatively
set.seed(3)
exp <- NULL
mexp <- NULL
vexp <- NULL
for (i in 1 : 1000) {
      exp <- c(exp, rexp(1, rate = 0.2)) 
      mexp <- c(mexp, mean(exp))
      vexp <- c(vexp, var(exp))
}
mean(exps)
var(exps)

## Sample mean vs. Theoretical mean
plot(mexp ~ c(1:n), 
     xlab= "Number of Trials", 
     ylab = "Mean", 
     main = "Law of Large Number: LLN",
     type = "l", lwd = 3, col = "red")
abline(h = 5, col = "blue", lwd = 3)

## Sample variance vs. Theoretical variance
plot(vexp ~ c(1:n), 
     xlab= "Number of Trials", 
     ylab = "Variance", 
     main = "Law of Large Number: LLN",
     type = "l", lwd = 3, col = "red")
abline(h = 25, col = "blue", lwd = 3)



## Law of Large Number
## Distribution of 1000 random exponentials (with rate = 2)
set.seed(3)
ss1000 <- rexp(n = 1000, rate = 0.2) 
hist(ss1000, xlab = "Value", main = "1000 random exponentials")
box()
mean(ss1000)
var(ss1000)



## Central Limit Theorem
## Distribution of 1000 of averages of 40 random exponentials (with rate = 2)
set.seed(2)
mexps <- NULL
for (i in 1 : 1000) {
    mexps <- c(mexps, mean(rexp(n = 40, rate = 0.2))) 
}    
hist(mexps, xlab = "Value", main = "1000 means of 40 random exponentials", prob = TRUE)
box()
mean(mexps)
var(mexps)


## Part 2
d.f <- data.frame(ToothGrowth)
library(dplyr)
d.f %>% group_by(supp)
d.f %>% group_by(dose)
library(ggplot2)
ggplot(d.f, aes(x = supp, y = len, fill = supp)) + geom_boxplot()
d.f.vc <- filter(d.f, supp == "VC")
d.f.oj <- filter(d.f, supp == "OJ")
t.test(d.f.vc$len, d.f.oj$len)
## Not significant. H0 could not be rejected. No difference between delivery methods.

ggplot(d.f, aes(x = as.factor(dose), y = len, fill = as.factor(dose))) + geom_boxplot()
d.f.0_5 <- filter(d.f, dose == 0.5)
d.f.1 <- filter(d.f, dose == 1)
d.f.2 <- filter(d.f, dose == 2)
var(d.f.0_5$len)
var(d.f.1$len)
var(d.f.2$len)
t.test(d.f.2$len, d.f.1$len)
t.test(d.f.1$len, d.f.0_5$len)
t.test(d.f.2$len, d.f.0_5$len)



