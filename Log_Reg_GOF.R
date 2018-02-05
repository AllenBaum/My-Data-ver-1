# For Logistic Regressions: run GOF and standardized residuals

# Put current model name into object
current_model <- logit_withdrgt8agegrp  #Be sure this points to the current glm; also check down around lines 90 and 96
current_data <- withdr       #Be sure this points to the corrent source dataset

# Print summary of results and coefficients
print(summary(current_model))
writeLines("Coefficients Exponentiated:")
print(exp(coef(current_model)))
writeLines("")
writeLines("")
writeLines("95% CI's (Wald):")
print(confint.default(current_model))
writeLines("")
writeLines("")
writeLines("95% CI's (Wald) Exponentiated:")
print(exp(confint.default(current_model)))
writeLines("")
writeLines("")
writeLines("95% CI's (Profile):")
print(confint(current_model))
writeLines("")
writeLines("")
writeLines("95% CI's (Profile) Exponentiated:")
print(exp(confint(current_model)))
writeLines("")
writeLines("")

# Runs a Pearson GOF test.  If p>.05 then model is probably well-fitted though check for overdispersion, AIC, etc.
pr <- sum(residuals(current_model, type = "pearson")^2)
df <- current_model$df.residual
p_value <- pchisq(pr, current_model$df.residual, lower=F)
print(matrix(c("Pearson Chi GOF", "Chi2", "df", "p-value", "Parameters", round(pr,4),df,round(p_value,4)), ncol=2))
writeLines("")
writeLines("")

# Print standardized residuals (full model)
mu <- current_model$fitted.value
dr <- resid(current_model, type = "deviance")
hat <- hatvalues(current_model)
stdr <- dr/sqrt(1-hat)
plot(mu, stdr^2)
abline(h = 4, col = "red")

# Predicted values (odds) of y given a continuous predictor
predict <- predict(current_model)
fit <- current_model$fitted.values

# Calculate standard errors of the linear predictor
lpred <- predict(current_model, newdata = current_data, type = "link", se.fit = TRUE)
up <- lpred$fit + (qnorm(.975) * lpred$se.fit)
low <- lpred$fit - (qnorm(.975) * lpred$se.fit)
eta <- lpred$fit
upci <- current_model$family$linkinv(up)
mu <- current_model$family$linkinv(eta)
loci <- current_model$family$linkinv(low)
writeLines("Lower CI:")
print(summary(loci))
writeLines("")
writeLines("Mean CI:")
print(summary(mu))
writeLines("")
writeLines("Upper CI:")
print(summary(upci))
writeLines("")

# Bayseian Information Criterion
library(COUNT)
writeLines("AIC and BIC Statistics:")
print(modelfit(current_model))

# Graph of probabilities of continuous predictor.  Remove #s and > and write in continuous variable name to the right of $s:
# > layout(1)
# > plot(current_data$BMI, mu, col = 1)
# > lines(current_data$BMI, loci, col = 2, type = 'p')
# > lines(current_data$BMI, upci, col = 3, type = 'p')

# To check for overdispersion in the model:  scaled and robust/sandwhich se's:
coef <- current_model$coefficients
se <- sqrt(diag(vcov(current_model)))
coefse <- data.frame(coef, se)
writeLines("")
pr <- resid(current_model, type = "pearson")
pchi2 <- sum(residuals(current_model, type = "pearson")^2)
disp <- pchi2/current_model$df.residual
scse <- se*sqrt(disp)
library(sandwich)
rmodel <- glm(current_data$Detection ~ current_data$WDTime_GT_8_Min + withdr$Age_Grp_in_5yrs, family = binomial, data = current_data) #Update variables!!
rse <- sqrt(diag(vcovHC(rmodel, type = "HC0")))
newcoefse <- data.frame( coef, se, scse, rse)
print(newcoefse)

# Quasibinomial model:  check that coefficients are identical or nearly so.  If so, then good fit:
quasibinomialmod <- glm(current_data$Detection ~ current_data$WDTime_GT_8_Min + withdr$Age_Grp_in_5yrs, family = quasibinomial, data = current_data) #Update variables!!
writeLines("")
writeLines("")
writeLines("Quasibinomial model:")
print(summary(quasibinomialmod))

# Hosmer-Lemeshow Test
# source("HLTest.r")
# HLChi10 <- HLTest(obj = current_model, g = 10)
# print(HLChi10)
# writeLines("")
# print(cbind(HLChi10$observed, round(HLChi10$expect, digits = 10)))

# Predicted probabilities against a constinuous variable.  Run source code first, then update variables below and run separately:
# layout(1)
# plot(adr$Age, mu, col=1)
# lines(adr$Age, loci, col=2, type='p')
# lines(adr$Age, upci, col=3, type='p')


