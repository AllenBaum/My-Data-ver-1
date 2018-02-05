# GAM plot.  Be sure to load library(mgcv)
gam <- gam(withdr$Detection ~ s(withdr$WDTime), family = binomial, data = withdr)
print(summary(gam))
plot(gam)