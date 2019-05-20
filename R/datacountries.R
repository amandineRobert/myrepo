countries <- readRDS("~/anRpackage/trainingShiny/countries.rds")
head(countries)

library(maps)
library(mapproj)
source("trainingShiny/helpers.R")
counties <- readRDS("trainingShiny/data2/counties.rds")
percent_map(countries$white, "blue", "% White")

source("helpers.R")
counties <- readRDS("data2/counties.rds")
library(maps)
library(mapproj)