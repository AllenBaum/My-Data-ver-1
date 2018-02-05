# source("boxcox_transform.r")

library(MASS)
boxcox_data <- sales
boxcox_y <- sales$units
boxcox_x <- sales$years
trans <- boxcox(boxcox_y ~ boxcox_x )
lambda <- trans$x
loglh <- trans$y
boxcox <- cbind(lambda, loglh)
boxcox[order(-loglh),]  # Using log-likelihood to optimize lambda
lambda_value <- 0.50505051   # input the minimizing x value that maximizes y
boxcox_reg_model <- lm(boxcox_y^lambda_value ~ boxcox_x)
pureErrorAnova(boxcox_reg_model)

# plot(boxcox_reg_model)
# log10(5) # calcs the log10 of 5
# 10^0.69897 # converts log10 result back to 5
# 5^.0202
# [1] 1.033045
# 1.033045^(1/.0202)

# Plot residuals vs. fitted values:
# > plot(reg_model$residuals ~ reg_model$fitted.values)
# > qqnorm(reg_model$residuals)
# > qqline(reg_model$residuals)