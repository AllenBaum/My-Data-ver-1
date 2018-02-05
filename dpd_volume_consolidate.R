# dpd_volume_consolidate.r

library(xlsx)
library(readr)

# January consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Jan",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Jan",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Jan",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Jan",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Jan",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Jan",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Jan",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Jan",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Jan",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Jan",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/1_Jan_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Jan",Site="Osceola")

dpd_vol_0117 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0117, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0117.xlsx", sheetName="jan", col.names=TRUE, row.names=FALSE, append=FALSE)

# February consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Feb",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Feb",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Feb",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Feb",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Feb",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Feb",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Feb",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Feb",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Feb",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Feb",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/2_Feb_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Feb",Site="Osceola")

dpd_vol_0217 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0217, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0217.xlsx", sheetName="feb", col.names=TRUE, row.names=FALSE, append=FALSE)

# March consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Mar",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Mar",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Mar",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Mar",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Mar",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Mar",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Mar",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Mar",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Mar",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Mar",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/3_Mar_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Mar",Site="Osceola")

dpd_vol_0317 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0317, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0317.xlsx", sheetName="Mar", col.names=TRUE, row.names=FALSE, append=FALSE)

# April consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Apr",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Apr",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Apr",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Apr",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Apr",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Apr",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Apr",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Apr",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Apr",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Apr",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/4_Apr_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Apr",Site="Osceola")

dpd_vol_0417 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0417, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0417.xlsx", sheetName="apr", col.names=TRUE, row.names=FALSE, append=FALSE)

# May consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="May",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="May",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="May",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="May",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="May",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="May",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="May",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="May",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="May",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="May",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/5_May_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="May",Site="Osceola")

dpd_vol_0517 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0517, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0517.xlsx", sheetName="may", col.names=TRUE, row.names=FALSE, append=FALSE)

# June consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Jun",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Jun",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Jun",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Jun",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Jun",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Jun",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Jun",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Jun",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Jun",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Jun",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/6_Jun_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Jun",Site="Osceola")

dpd_vol_0617 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0617, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0617.xlsx", sheetName="jun", col.names=TRUE, row.names=FALSE, append=FALSE)

# July consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Jul",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Jul",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Jul",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Jul",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Jul",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Jul",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Jul",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Jul",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Jul",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Jul",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/7_Jul_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Jul",Site="Osceola")

dpd_vol_0717 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0717, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0717.xlsx", sheetName="jul", col.names=TRUE, row.names=FALSE, append=FALSE)

# August consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Aug",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Aug",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Aug",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Aug",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Aug",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Aug",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Aug",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Aug",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Aug",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Aug",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/8_Aug_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Aug",Site="Osceola")

dpd_vol_0817 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0817, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0817.xlsx", sheetName="aug", col.names=TRUE, row.names=FALSE, append=FALSE)

# September consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Sep",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Sep",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Sep",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Sep",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Sep",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Sep",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Sep",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Sep",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Sep",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Sep",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/9_Sep_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Sep",Site="Osceola")

dpd_vol_0917 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_0917, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_0917.xlsx", sheetName="sep", col.names=TRUE, row.names=FALSE, append=FALSE)

# October consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Oct",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Oct",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Oct",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Oct",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Oct",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Oct",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Oct",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Oct",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Oct",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Oct",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/10_Oct_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Oct",Site="Osceola")

dpd_vol_1017 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_1017, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_1017.xlsx", sheetName="oct", col.names=TRUE, row.names=FALSE, append=FALSE)

# November consolidation
baptist <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="Baptist")
dpd_baptist <- data.frame(baptist,Year=2017,Period="Nov",Site="Baptist")

jupiter <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="Jupiter")
dpd_jupiter <- data.frame(jupiter,Year=2017,Period="Nov",Site="Jupiter")

kendall <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="Kendall")
dpd_kendall <- data.frame(kendall,Year=2017,Period="Nov",Site="Kendall")

ocala <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="Ocala")
dpd_ocala <- data.frame(ocala,Year=2017,Period="Nov",Site="Ocala")

sanramon <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="San Ramon")
dpd_sanramon <- data.frame(sanramon,Year=2017,Period="Nov",Site="San Ramon")

summerfield <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="Summerfield")
dpd_summerfield <- data.frame(summerfield,Year=2017,Period="Nov",Site="Summerfield")

wmarion <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="West Marion")
dpd_wmarion <- data.frame(wmarion,Year=2017,Period="Nov",Site="West Marion")

westchester <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="Westchester")
dpd_westchester <- data.frame(westchester,Year=2017,Period="Nov",Site="Westchester")

jfk <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="JFK")
dpd_jfk <- data.frame(jfk,Year=2017,Period="Nov",Site="JFK-Main")

hcreek <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="Hunters Creek")
dpd_hcreek <- data.frame(hcreek,Year=2017,Period="Nov",Site="Hunters Creek")

osceola <- read.xlsx("q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/11_Nov_DPD.xlsx",sheetName="Osceola")
dpd_osceola <- data.frame(osceola,Year=2017,Period="Nov",Site="Osceola")

dpd_vol_1117 <- rbind(dpd_baptist,dpd_jupiter,dpd_kendall,dpd_ocala,dpd_sanramon,dpd_summerfield,dpd_wmarion,dpd_westchester,dpd_jfk,dpd_hcreek,dpd_osceola)
write.xlsx2(dpd_vol_1117, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_1117.xlsx", sheetName="nov", col.names=TRUE, row.names=FALSE, append=FALSE)


dpd_vol_2017 <- rbind(dpd_vol_0117,dpd_vol_0217,dpd_vol_0317,dpd_vol_0417,dpd_vol_0517,dpd_vol_0617,dpd_vol_0717,dpd_vol_0817,dpd_vol_0917,dpd_vol_1017,dpd_vol_1117)
write.xlsx2(dpd_vol_2017, "q:/Anesthesia/_DropOff/ED_Reports/Site_Data_Capture/DPD_Volume/dpd_vol_2017.xlsx", sheetName="data", col.names=TRUE, row.names=FALSE, append=FALSE)




