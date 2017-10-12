#install.packages("dplyr")
library(dplyr)
# Read merged dataset
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

max_state_abv <- meds_by_state %>%
  top_n(1, ABV_Medians) %>%
  slice(1)

max_state_ibu <- meds_by_state %>%
  top_n(1, IBU_Medians) %>%
  slice(1)
