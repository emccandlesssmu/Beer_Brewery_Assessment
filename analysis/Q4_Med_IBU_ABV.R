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
