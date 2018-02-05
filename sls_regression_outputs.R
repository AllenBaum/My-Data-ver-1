# source("sls_regression_outputs.r")

data <- StudentSurvey
x <- Lock5Data::StudentSurvey$Height   # ch01pr19$ACT_Score; ch01ta01$Labor_Hours;  used_cars$age
y <- Lock5Data::StudentSurvey$Weight   # ch01pr19$GPA; ch01ta01$Lot_Size; used_cars$price
n <- nrow(data)
df <- n-2
ci <- "CI% used: 98%"
alpha <- .975   #Assign alpha-level: 90% CI=.950; 95% CI=.975; 98% CI=.990; 99% CI=.995
x_val <- 60

# Regression parameters and outputs
regression <- lm(y~x, na.action = na.omit)         # regression function
b1 <- cor(x,y) * sd(y)/sd(x)  # calc b1 by hand
b0 <- mean(y) - (b1*mean(x))  # calc b0 by hand
fits <- b1*x + b0             # fitted values
residuals <- y - fits         # residuals
SSE <- sum(residuals^2)       # SSE
MSE <- SSE/(df)               # MSE
residuals_sd <- sqrt(MSE)     # se of the residuals

se.predicted <- sqrt(MSE*(1+.10 +((x_val-mean(x))^2)/sum((x-mean(x))^2)))
lpt.pred <- x_val*b1+b0 - qt(alpha, df) * se.predicted # 95% CI for predicted value of Y (lower)
rpt.pred <- x_val*b1+b0 + qt(alpha, df) * se.predicted # 95% CI for predicted value of Y (upper)

se.mnresponse <- sqrt(MSE*(.10+((x_val-mean(x))^2)/sum((x-mean(x))^2)))
lpt.mn <-~ x_val*b1+b0 - qt(.975, df) * se.mnresponse  # 95% CI for the mean response in Y (lower)
rpt.mn <- x_val*b1+b0 + qt(.975, df) * se.mnresponse  # 95% CI for the mean response in Y (upper)

sd.b1 <- sqrt(MSE/sum((x-mean(x))^2))   # se of b1
sd.b0 <- sqrt(MSE) * sqrt(1/n + (mean(x) ^2)/sum((x-mean(x))^2))   # se of b0
left.ci.b1 <- b1 - qt(alpha,df)*sd.b1   # lower CI for b1
right.ci.b1 <- b1 + qt(alpha,df)*sd.b1  # upper CI for b1
left.ci.b0 <- b0 - qt(alpha,df)*sd.b0   # lower CI for b0
right.ci.b0 <- b0 + qt(alpha,df)*sd.b0  # upper CI for b0

# Hypothesis tests
#    B1 One-sided test (less/greater than):
hyp_b1_1 <- 3      # Input a value to test the hypothesis of b1. eg, -10 or 0.  One-sided test only:  less than?
ts.beta1_1 <- (b1 - (hyp_b1_1))/sd.b1
pval_ts.beta1_1 <- pt(ts.beta1_1,df)

#    B1 Two-sided test (differs from):
hyp_b1_2 <- 0
ts.beta1_2 <- (b1 - (hyp_b1_2))/sd.b1
pval_ts.beta1_2 <- 2*pt(-abs((b1-hyp_b1_2)/sd.b1),df)

#   B0 Two-sided test (differs from):
hyp_b0 <- 0
pval_ts.beta_0 <- 2*pt(-abs((b0-hyp_b0)/sd.b0),df)

yhat <- b0 + b1*x_val

# Print Outputs:
print(summary(regression))
writeLines("")
print(ci)
writeLines("")
writeLines("CI of b0:")
print(b0)
writeLines("")
print(left.ci.b0)
print(right.ci.b0)
writeLines("")
writeLines("CI of b1:")
print(b1)
writeLines("")
print(left.ci.b1)
print(right.ci.b1)
plot(x,y)
abline(regression, lwd=2, col="orange")

window()
p_conf1 <- predict(regression, interval="confidence", level=.95)
p_pred1 <- predict(regression, interval="prediction", level=.95)
nd <- data.frame(x=seq(0,12,length=51))
p_conf2 <- predict(regression, interval="confidence", newdata=nd, level=.95)
p_pred2 <- predict(regression, interval="prediction", newdata=nd, level=.95)
plot(y~x, data=data, ylim=c(0,5), xlim=c(10,40))
plot(data$x ~ data$y, data=data, ylim=c(0,6), xlim=c(-1,40))
abline(regression)
matlines(nd$x, p_conf2[,c("lwr","upr")], col=4, lty=1, type="b", pch="o")
matlines(nd$x, p_pred2[,c("lwr","upr")], col=3, lty=2, type="b", pch="o")


