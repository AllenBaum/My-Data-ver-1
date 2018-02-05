# Variance_Conf_Intervals.r
# Assign and calculate statistical values for dataset

data <- c(59,54,53,52,51,39,49,46,49,48)          # Assign dataset to 'data' object
n <- 10                 # Assign value of n
df <- n-1               # Assign the degress of freedom to 'df' object
sample_var <- var(data) # Calculate sample variance object
pop_var <- 28.2222           # Assign population (or target) variance
alpha_lower <- .90     # Assign upper alpha level to 'alpha_upper' object
alpha_upper <- .10     # Assign lower alpha level to 'alpha_lower' object

# Calculate Chi-sqr rejection region statistic
chisq_rej_reg <- (df*sample_var)/pop_var
writeLines("")
writeLines("Chi Square Rejection Region:")
print(chisq_rej_reg)
writeLines("")

# Calculate sample variance confidence intervals
chisqr_stat_upper <- qchisq(alpha_upper,df)
chisqr_stat_lower <- qchisq(alpha_lower,df)
variance_upper_boundary <- sqrt((df*(sd(data)^2))/chisqr_stat_upper)
variance_lower_boundary <- sqrt((df*(sd(data)^2))/chisqr_stat_lower)
writeLines("Confidence Interval:")
print(variance_lower_boundary)
print(variance_upper_boundary)
