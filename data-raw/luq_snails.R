## code to prepare `luq_snails` dataset goes here
library(metajam)
library(usethis)
library(tidyverse)
library(dplyr)
library(ggplot2)

# link location
luq_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-luq.107.9996737&entityid=7b9c3b52ea20b841637aba71e870f368"

# download package
luq_download <- download_d1_data(data_url = luq_url, path = tempdir())

# read in data
luq_files <- read_d1_files(luq_download)
luq_snails <- luq_files$data

usethis::use_data(luq_snails, overwrite = TRUE)
