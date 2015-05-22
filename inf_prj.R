### 1000 repetitions of runif
set.seed(123)
hist(runif(n = 1000))

## 1000 averages of 40 averages of runif
mns = NULL
for (i in 1 : 1000) {
      mns = c(mns, mean(runif(40)))
}      
hist(mns)



## Project 
## 1000 of repetitions of exponential distribusion with rate = 0.2 
set.seed(123)
rexp.1000 <- rexp(n = 1000, rate = 0.2)
hist(rexp.1000)

##  
set.seed(123) ## Purpose of this line to make this simulation reproducible. 
mexps <- NULL
for (i in 1 : 1000) {
    mexps <- c(mexps, mean(rexp(n = 40, rate = 0.2)))
}
hist(mexps)