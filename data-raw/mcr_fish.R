## code to prepare `mcr_fish` dataset goes here
library(usethis)
library(metajam)
library(ggplot)

# save link location
mcr_fish_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-mcr.1041.2&entityid=c4e5f3ad43846c474e8a3fd0db8bb623"

# download data package with metajam
mcr_fish_download <- download_d1_data(data_url = mcr_fish_url, path = tempdir())

# read in data
mcr_fish_files <- read_d1_files(mcr_fish_download)
mcr_fish <- mcr_fish_files$data

usethis::use_data(mcr_fish, overwrite = TRUE)
