library(ipumsr)
data_file <- "usa18.dat"
ddi_data <- "DDI.xml"
ddi <- read_ipums_ddi(ddi_data) # metadata here
acs_df <- read_ipums_micro(ddi_data, data_file = data_file)
