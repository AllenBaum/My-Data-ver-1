# Sample_mean_Conf_Intervals_stats.r
# Enter sample statistics and generate 95% confidence interaval

n <- 15         # Assign n
mu <- 1.466       # Assign sample mean
ssd <- 0.3764648     # Assign sample standard deviation
z <- 1.96      # Assign the z-value corresponding to desired alpha level: 90% CI = 1.645; 95% CI = 1.96; 98% CI = 2.326; 99% CI = 2.576
ci <- '95%'     # Assign corresponding conf interval range
hyp <- 1.2      # Assign the hypothesized value in question; will be used to calculate a z-score test statistic. NB: assign a '0' when
              # calculating a paired t-test (the null hypothesis will be that there is no difference in the mean diff)

# z-score test statistic. This z-score, if significant, will fall outside of +/- 1.96 standard deviations (assuming 95% CI)
# Correspondingly, the 'hyp' value will also NOT be included within the CI calculated below if the z-score test stat is larger than our CI.
zscore <- (mu-hyp)/(ssd/(sqrt(n)))
writeLines("")
writeLines("CI% and z-value")
print(ci)
print(z)
writeLines("")
writeLines("Test Statistic z-score")
print(zscore)

# 95% CI's
lower95CI <- mu - z*((ssd)/sqrt(n))
upper95CI <- mu + z*((ssd)/sqrt(n))
writeLines("")
writeLines("Hypothesized Value")
print(hyp)
writeLines("")
writeLines("Confidence Interval")
print(lower95CI)
print(upper95CI)

# P-value
p <- (mu-hyp)/(ssd/sqrt(n))
pvalue <- 2*pnorm(-abs(p))
writeLines("")
writeLines("P-values___")
writeLines("Two-sided")
print(pvalue)
writeLines("One-sided")
print(pvalue/2)