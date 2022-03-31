#!/usr/bin/Rscript
library(ggplot2)
library(haven)
library(dplyr)

mpg2 <- mpg %>%
  filter(manufacturer=='audi')

print(mpg2)

write_xpt(mpg2, "/home/hengweiliu/Documents/mpg.xpt", version = 5)
