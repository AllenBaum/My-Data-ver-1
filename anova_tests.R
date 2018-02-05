# anova_tests.r
# Use 'data' object from ANOVA script

# Bonferroni adjustment
pairwise.t.test(data$values, data$ind, p.adj = "bonferroni")

# Kruskal-Wallis test


# Bartlett's test to check for homogeneity of variances
library(pastecs)
bartlett.test(data$values ~ data$ind)