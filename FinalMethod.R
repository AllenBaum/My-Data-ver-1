#final method
require(openxlsx)

setwd("C:/Users/jiaquan.zhou/Desktop/StatRpt/weightedMean")

data<-read.xlsx("WM.xlsx", sheet ="Sheet2", startRow = 1, colNames = TRUE,
                rowNames = FALSE, detectDates = FALSE, skipEmptyRows = TRUE,
                rows = NULL, cols = NULL, check.names = FALSE, namedRegion = NULL)

library(doBy)
library(reshape)
#create function to calculate nested means then transpose it into one single column
Nested.means <-  by(data, data$Site, function(data) data$In_Bed_to_Provider_Greet_Avg_Wait*(data$In_Bed_to_Provider_Greet_Patients/(sum(data$In_Bed_to_Provider_Greet_Patients))))
Nested.means3 <- (sapply(Nested.means, I))
#append different cols into one col
melted<-melt( Nested.means3)
#assign nested Weighted means 
data$NestedWM<-melted$value
data$SiteCheck<-melted$L1
##created MONTH_WEIGHTS_In_Bed_to_Provider_Greet_Avg_Wait
data$MONTH_WEIGHTS_In_Bed_to_Provider_Greet_Avg_WaitNew<-data$In_Bed_to_Provider_Greet_Avg_Wait*(data$In_Bed_to_Provider_Greet_Patients/(sum(data$In_Bed_to_Provider_Greet_Patients)))


write.xlsx(data, file = "Final2WM.xlsx", colNames = TRUE, borders = "columns")