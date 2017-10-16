# Might need to install dplyr library by uncommenting below line
#install.packages("dplyr")
library(dplyr)
# Read merged dataset from data folder
all_data <- read.csv("./data/Merged_Data.csv")
# Use dplyr pipeline to take grouped medians, exclude NAs from calculation
meds_by_state <- 
  all_data                  %>%
    select(State, ABV, IBU) %>%
    group_by(State)         %>%
    summarize(
      ABV_Medians = median(ABV, na.rm = TRUE),
      IBU_Medians = median(IBU, na.rm = TRUE)
    )

# Take the top 1 record by ABV_Medians column
max_state_abv <- meds_by_state %>%
  top_n(1, ABV_Medians) %>%
  select(-IBU_Medians)

# Take the top 1 record by IBU_Medians column
max_state_ibu <- meds_by_state %>%
  top_n(1, IBU_Medians) %>%
  select(-ABV_Medians)