#---------------------------------
# 0-gpp-tac-comp-download-public-data.R
#
# Download the public datasets to
# a local data repository
#
# Ben Arnold (ben.arnold@ucsf.edu)
#---------------------------------

#---------------------------------
# preamble
#---------------------------------
library(here)
source(here("R","0-config.R"))

#---------------------------------
# read in the public data files
# from the OSF webpage
#---------------------------------

# download the GPP-TAC comparison data, with GPP MFI values
# https://osf.io/qtuw4
dgpp <- osf_retrieve_file("qtuw4") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)

# download the TAC target Ct value dataset
# https://osf.io/c37s5
dtac <- osf_retrieve_file("c37s5") %>%
  osf_download(path=here("data"), conflicts = "overwrite", progress = TRUE)


#---------------------------------
# Session info
#---------------------------------
sessionInfo()

