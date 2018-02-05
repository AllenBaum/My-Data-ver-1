# dpd_volume.r

library(xlsx)
library(readr)

# January consolidation
baptist_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Baptist")
dpd_baptist_0117 <- data.frame(baptist_0117,Year=2017,Period="Jan",Site="Baptist")

jupiter_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter_0117 <- data.frame(jupiter_0117,Year=2017,Period="Jan",Site="Jupiter")

ocala_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Ocala")
dpd_ocala_0117 <- data.frame(ocala_0117,Year=2017,Period="Jan",Site="Ocala")

sanramon_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon_0117 <- data.frame(sanramon_0117,Year=2017,Period="Jan",Site="San Ramon")

summerfield_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield_0117 <- data.frame(summerfield_0117,Year=2017,Period="Jan",Site="Summerfield")

wmarion_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="West Marion")
dpd_wmarion_0117 <- data.frame(wmarion_0117,Year=2017,Period="Jan",Site="West Marion")

westchester_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Westchester")
dpd_westchester_0117 <- data.frame(westchester_0117,Year=2017,Period="Jan",Site="Westchester")

jfk_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="JFK")
dpd_jfk_0117 <- data.frame(jfk_0117,Year=2017,Period="Jan",Site="JFK-Main")

hcreek_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek_0117 <- data.frame(hcreek_0117,Year=2017,Period="Jan",Site="Hunters Creek")

osceola_0117 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Osceola")
dpd_osceola_0117 <- data.frame(osceola_0117,Year=2017,Period="Jan",Site="Osceola")

dpd_vol_0117 <- rbind(dpd_baptist_0117,dpd_jupiter_0117,dpd_ocala_0117,dpd_sanramon_0117,dpd_summerfield_0117,dpd_wmarion_0117,dpd_westchester_0117,dpd_jfk_0117,dpd_hcreek_0117,dpd_osceola_0117)
write.xlsx2(dpd_vol_0117, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0117.xlsx", sheetName="jan", col.names=TRUE, row.names=FALSE, append=FALSE)

# February consolidation
baptist_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="Baptist")
dpd_baptist_0217 <- data.frame(baptist_0217,Year=2017,Period="Feb",Site="Baptist")

jupiter_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter_0217 <- data.frame(jupiter_0217,Year=2017,Period="Feb",Site="Jupiter")

ocala_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="Ocala")
dpd_ocala_0217 <- data.frame(ocala_0217,Year=2017,Period="Feb",Site="Ocala")

sanramon_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon_0217 <- data.frame(sanramon_0217,Year=2017,Period="Feb",Site="San Ramon")

summerfield_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield_0217 <- data.frame(summerfield_0217,Year=2017,Period="Feb",Site="Summerfield")

wmarion_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="West Marion")
dpd_wmarion_0217 <- data.frame(wmarion_0217,Year=2017,Period="Feb",Site="West Marion")

westchester_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="Westchester")
dpd_westchester_0217 <- data.frame(westchester_0217,Year=2017,Period="Feb",Site="Westchester")

jfk_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="JFK")
dpd_jfk_0217 <- data.frame(jfk_0217,Year=2017,Period="Feb",Site="JFK-Main")

hcreek_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek_0217 <- data.frame(hcreek_0217,Year=2017,Period="Feb",Site="Hunters Creek")

osceola_0217 <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Feb_DPD.xlsx",sheetName="Osceola")
dpd_osceola_0217 <- data.frame(osceola_0217,Year=2017,Period="Feb",Site="Osceola")

dpd_vol_0217 <- rbind(dpd_baptist_0217,dpd_jupiter_0217,dpd_ocala_0217,dpd_sanramon_0117,dpd_summerfield_0217,dpd_wmarion_0217,dpd_westchester_0217,dpd_jfk_0217,dpd_hcreek_0217,dpd_osceola_0217)
write.xlsx2(dpd_vol_0217, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0217.xlsx", sheetName="feb", col.names=TRUE, row.names=FALSE, append=FALSE)
