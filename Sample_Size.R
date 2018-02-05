# Sample_Size.r
# Sample size calculations

alpa_level <- 1.96     # Assign alpha level. 90% CI = 1.645; 95% CI = 1.96; 98% CI = 2.326; 99% CI = 2.576
margin_of_error <- 0.01  # Assign margin of error.  NB: this is half the RANGE within which our mean would fall. Alternatively, we could say that
                        # a MofE of 8 would = "+/- 4 of the mean."  The Margin of Error = half the Width of the Conf Interval.
ssd <- .32              # Assign sample standard dev

nss <- (alpa_level * (ssd/margin_of_error))^2
writeLines("")
writeLines("Calculation results:")
print(nss)
writeLines("")
writeLines("Sample size necessary (rounded up to nearest integer):")
print(ceiling(nss))

# Can also estimate the sd based on a range of values if necessary, e.g., costs range from $250 to $750, diff divided by 4:
ssd_est <- (750-250)/4