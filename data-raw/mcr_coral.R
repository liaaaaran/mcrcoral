## code to prepare `mcr_coral` dataset goes here

# attach packages
library(usethis)
library(ggplot2)
library(metajam)

# save link location
mcr_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-mcr.7010.2&entityid=eaa8964320aee040e573569057e6c74c"

# download package with metajam
mcr_download <- download_d1_data(data_url = mcr_url, path = tempdir())

# read in data
mcr_files <- read_d1_files(mcr_download)
mcr_coral <- mcr_files$data

# possible data cleaning can go here:

usethis::use_data(mcr_coral, overwrite = TRUE)
