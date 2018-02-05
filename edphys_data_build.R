# edphys_data_build.r
library(readr)
edphys_0117 <- read_csv("edphys0117.csv")
edphys_0217 <- read_csv("edphys0217.csv")
edphys_data_test <- rbind(edphys_0117,edphys_0217)
write.csv(edphys_data_test,"edphys_data_test.csv")