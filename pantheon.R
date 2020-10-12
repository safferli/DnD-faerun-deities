library(tidyverse)
library(rvest)

## url of the patheon table
#url <- "https://www.dndbeyond.com/sources/scag/welcome-to-the-realms"
## need to download page, as SCAG is paywalled -- I forgot! 
file <- "Welcome to the Realms - Sword Coast Adventurer's Guide - Sources - D&D Beyond.html"

## read the page into R
gods.page <- read_html(file)

gods.table <- gods.page %>% 
  html_nodes("table.faerun-deities-table") %>% 
  html_table() %>% 
  # flatten list into a df
  flatten_df()













