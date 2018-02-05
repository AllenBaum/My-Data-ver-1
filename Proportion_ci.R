# Proportion_ci.r
n <-  100    # Assign n
y <- 56      # Assign y successes
pi <- y/n     # Assign pi value (y/n)
z <- 1.96     # Assign the z-value corresponding to desired alpha level: 90% CI = 1.645; 95% CI = 1.96; 98% CI = 2.326; 99% CI = 2.576.  Use qnorm(0.975)
ci <- '95%'   # To print CI %

sigma <- sqrt((pi*(1-pi))/n)
lowerci <- pi - (z*sigma)
upperci <- pi + (z*sigma)
WACmean <- y + (.5*(z^2)) # Wilson-Agresti-Coull adjusted mean
WACn <- n + z^2           # Wilson-Agresti-Coull adjusted n
WACpi <- WACmean/WACn     # Wilson-Agresti-Coull adjusted pi
WAClowerci <- WACpi - z*sqrt((WACpi*(1-WACpi))/WACn)  # Wilson-Agresti-Coull CI
WACupperci <- WACpi + z*sqrt((WACpi*(1-WACpi))/WACn)  # Wilson-Agresti-Coull CI
extreme_pi_adj_O <- (3/8)/(n+(3/4))
extreme_pi_adj_1 <- (n+(3/8))/(n+(3/4))
extreme_pi_ci <- (.05/2)^(1/n)

writeLines("")
writeLines("Stats, z-value, and CI%:")
print(n)
print(pi)
print(z)
print(ci)
print(sigma)
writeLines("")
writeLines("Wald CI")
print(lowerci)
print(upperci)
writeLines("")
writeLines("Wilson-Agresti-Coull CI")
print(WAClowerci)
print(WACupperci)
writeLines("")
writeLines("Calculate extreme pi and CI if necessary(?)")

