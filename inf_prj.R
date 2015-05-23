### 1000 collections of runifs
mn <- NULL
mn <- mean((runif(n = 1000)))
hist(runif(n = 1000))

## 1000 collections of averages of 40 runifs
mns = NULL
for (i in 1 : 1000) {
      mns = c(mns, mean(runif(40)))
}      
hist(mns)



## Project ################################################################################
## 1000 collections of random exponentials (with rate = 2)
hist(rexp(n = 1000, rate = 0.2))

## 1000 collections of averages of 40 exponentials 
mexps <- NULL
for (i in 1 : 1000) {
    mexps <- c(mexps, mean(rexp(n = 40, rate = 0.2))) 
}    
hist(mexps)
