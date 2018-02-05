# ANOVA if sample sizes n1 = n2 = n3 = nj are all equal:
# Upload samples. Create more sample numbers if necessary
# NOTE: will work only with equal sample sizes; compute manually if sample n's are unequal

s1 <- c(8,7,7,7,8,8,6,8,8,7,7,8,8)  # input sample set
s2 <- c(7,8,7,7,5,8,5,8,7,6,6,6,6)  # input sample set
s3 <- c(4,9,6,7,9,8,5,8,7,5,4,5,4)  # input sample set
n_s1 <- 13
n_s2 <- 13
n_s3 <- 13
n <- 39
st1 <- (s1 - mean(s1))/sd(s1) # standardized residuals
st2 <- (s1 - mean(s2))/sd(s2) # standardized residuals
st3 <- (s1 - mean(s3))/sd(s3) # standardized residuals
data <- stack(data.frame(cbind(s1,s2,s3))) # stacks and binds in one
data_residuals <- stack(data.frame(cbind(st1,st2,st3))) # stacks residuals and binds in one
s_mean_s1 <- mean(s1)
s_mean_s2 <- mean(s2)
s_mean_s3 <- mean(s3)
s_var1 <- var(s1)
s_var2 <- var(s2)
s_var3 <- var(s3)
grand_mean <- mean(data$values)
ssb <- (n_s1*((s_mean_s1-grand_mean)^2))+(n_s2*((s_mean_s2-grand_mean)^2))+(n_s3*((s_mean_s3-grand_mean)^2))
ssw <- ((n_s1-1)*(s_var1))+((n_s2-1)*(s_var2))+((n_s3-1)*(s_var3))
tss <- ssb + ssw
# data_transformed_log <- log(data$values)

# Diagnostics
library(lattice)
dotplot(data$ind ~ data$values)
boxplot(s1,s2,s3, main = "Title TBD", horizontal=TRUE)
print(bartlett.test(data$values ~ data$ind)) # check for equal variances
print(shapiro.test(s1))
print(shapiro.test(s2))
print(shapiro.test(s3))
dotplot(data_residuals$ind ~ data_residuals$values)
  
# ANOVA
writeLines("Grand Mean:")
print(grand_mean)
writeLines("")
writeLines("Sample Means:")
print(s_mean_s1)
print(s_mean_s2)
print(s_mean_s3)
writeLines("")
writeLines("SSB:")
print(ssb)
writeLines("")
writeLines("SSW:")
print(ssw)
writeLines("")
writeLines("TSS:")
print(tss)
writeLines("")
writeLines("ANOVA Table Results:")
anova <- aov(data$values ~ data$ind)
print(summary(anova))