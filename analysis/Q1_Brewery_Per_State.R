# Code to read Breweries csv from data directory
Breweries <- read.csv("./data/Breweries.csv", header = TRUE)
# Use table function to get unique count of breweries per state
State_Counts <- as.data.frame(table(Breweries$State))
# Give counts clean names
names(State_Counts) <- c("State", "Breweries")
# Trim whitespace from any state names
State_Counts$State <- trimws(State_Counts$State)

# Might need to install choropleth packages for code to run
#install.packages("choroplethr")
#install.packages("choroplethrMaps")
library(choroplethr)
# Create a copy of our State_Counts to use for mapping
map_data <- State_Counts
# Map state abbreviations to the full state names
names(map_data) <- c("region.abb", "value")
map_data$region <- tolower(state.name[match(map_data$region.abb,state.abb)])
map_data$region[is.na(map_data$region)] <- "district of columbia"