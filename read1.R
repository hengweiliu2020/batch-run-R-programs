#!/usr/bin/Rscript
library(dplyr)
library(haven)

my_mpg <- read_xpt("/home/hengweiliu/Documents/mpg.xpt")

my_mpg2 <- my_mpg %>%
  mutate(cyl_c=glue::glue('{cyl} cylendars'))

my_mpg2
