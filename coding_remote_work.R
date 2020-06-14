library(ipumsr)
data_file <- "usa18.dat"
ddi_data <- "DDI.xml"
ddi <- read_ipums_ddi(ddi_data) # metadata here
acs_df <- read_ipums_micro(ddi_data, data_file = data_file)
#####
acs_df = readRDS("acs_df.rds") 

# Collapsing data at the county level ($countyfip)
library(data.table)
acs_df = as.data.table(acs_df)
county_level = setDT(acs_df)[, lapply(.SD, mean), by = .(MULTYEAR, COUNTYFIP)]
