# Normal distribution simulation
i <- 1
sims <- matrix(NA, 10000,2)                                 # Will run 10,000 confidence intervals
while(i <= 10000){
sims[i,1] <- mean(rnorm(25, mean = 266, sd = 16))           # Sample Means
sims[i,2] <- 2*pt(-abs((sims[i,1]-30)/(5/sqrt(25))),24)   # p-values
i <- i+1
}
sims
sort(sims[,2])                                              # Sorts the rows of "sims" by the p-values