# Test
hist(rexp(n = 40, rate = 0.2))
var(rexp(n = 40, rate = 0.2))

## Number of simulation 
mexps100 = NULL
for (i in 1 : 100) {
    mexps100 = c(mexps100, mean(rexp(n = 40, rate = 0.2)))
}
hist(mexps100)


mexps200 = NULL
for (i in 1 : 200) {
    mexps200 = c(mexps200, mean(rexp(n = 40, rate = 0.2)))
}
hist(mexps200)


mexps500 = NULL
for (i in 1 : 500) {
    mexps500 = c(mexps500, mean(rexp(n = 40, rate = 0.2)))
}
hist(mexps500)


mexps1k = NULL
for (i in 1 : 1000) {
    mexps1k = c(mexps1k, mean(rexp(n = 40, rate = 0.2)))
}
hist(mexps1k)


mexps2k = NULL
for (i in 1 : 2000) {
    mexps2k = c(mexps2k, mean(rexp(n = 40, rate = 0.2)))
}
hist(mexps2k)


mexps5k = NULL
for (i in 1 : 5000) {
    mexps5k = c(mexps5k, mean(rexp(n = 40, rate = 0.2)))
}
hist(mexps5k)

