# server.R
library(dplyr)
library(plotly)

# Read in data
setwd("~/Documents/a8-building-apps-ryukiri")
df <- read.table('data/cereal.tsv', stringsAsFactors = FALSE)

