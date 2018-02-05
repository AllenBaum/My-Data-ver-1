# Proportion_sample_size.r
pi <- .5
z <- 1.96  # Assign alpha level. 90% CI = 1.645; 95% CI = 1.96; 98% CI = 2.326; 99% CI = 2.576
e <- .02

n <- ((z^2)*(pi*(1-pi)))/(e^2)
writeLines("")
writeLines("Calculation results:")
print(n)
writeLines("")
writeLines("Sample size necessary (rounded up to nearest integer):")
print(ceiling(n))