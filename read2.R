#!/usr/bin/Rscript
library(dplyr)
library(haven)

my_mpg <- read_xpt("/home/hengweiliu/Documents/mpg.xpt")

my_mpg2 <- my_mpg %>%
  select(model, cty,  hwy )

my_mpg2
