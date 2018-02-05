# Variance_Conf_Intervals_stats.r
# Assign and calculate statistical values for sample statistics

n <- 26                    # Assign value of n
df <- n-1                  # Assign the degress of freedom to 'df' object
sample_sd <- sqrt(36)           # Assign sample standard deviation
sample_var <- sample_sd^2  # Calculate sample variance object
alpha_lower <- .975        # Assign upper alpha level to 'alpha_upper' object
alpha_upper <- .025        # Assign lower alpha level to 'alpha_lower' object

# Calculate sample variance confidence intervals
chisqr_stat_upper <- qchisq(alpha_upper,df)
chisqr_stat_lower <- qchisq(alpha_lower,df)
variance_lower_boundary <- (df*sample_var)/chisqr_stat_lower
variance_upper_boundary <- (df*sample_var)/chisqr_stat_upper
writeLines("")
writeLines("Confidence Interval:")
print(variance_lower_boundary)
print(variance_upper_boundary)