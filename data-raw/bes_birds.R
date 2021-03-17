# attach packages
library(usethis)
library(metajam)

# link location
bes_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-bes.3170.150&entityid=55f798e0e45f2ccd6f2d043c7ca36623"

# download data
bes_download <- download_d1_data(data_url = bes_url, path = tempdir())

# read in data
bes_files <- read_d1_files(bes_download)
bes_birds <- bes_files$data

usethis::use_data(bes_birds, overwrite = TRUE)
