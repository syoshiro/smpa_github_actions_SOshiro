# This sequence based on R for the Rest of Us:
# https://rfortherestofus.com/2023/05/github-actions


library(tidyverse)
library(googlesheets4)

# The data is publicly available so we don't need to authenticate
gs4_deauth()

survey_data <- read_sheet("https://docs.google.com/spreadsheets/d/16o68CSXpNWzVVk-rvfjQF20He_2UqopOcxshFo74S4U/edit?usp=sharing")

survey_data %>%
  write_csv("survey_data.csv")
