## code to prepare `mcr_coral` dataset goes here

# attach packages
library(usethis)
library(ggplot2)
library(metajam)
library(dplyr)
library(tidyverse)

# save link location
mcr_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-mcr.7010.2&entityid=eaa8964320aee040e573569057e6c74c"
mcr_url1 <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-mcr.4.33&entityid=7d9ac9398cb2ae30e7c3f224fb489eff"

# download package with metajam
mcr_download <- download_d1_data(data_url = mcr_url, path = tempdir())
mcr_download1 <- download_d1_data(data_url = mcr_url1, path = tempdir())

# read in data
mcr_files <- read_d1_files(mcr_download)
mcr_coral <- mcr_files$data

mcr_files1 <- read_d1_files(mcr_download1)
mcr_coral1 <- mcr_files1$data
# possible data cleaning can go here:
mcrcoral <- mcr_coral %>%
  select(-c('Notes')) %>%


usethis::use_data(mcr_coral, overwrite = TRUE)
usethis::use_data(mcr_coral1, overwrite = TRUE)
