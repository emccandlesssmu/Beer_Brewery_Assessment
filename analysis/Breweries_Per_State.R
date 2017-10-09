# Code to read Breweries csv from data directory
Breweries <- read.csv("./data/Breweries.csv", header = TRUE)
# Use table function to get unique count of breweries per state
State_Counts <- as.data.frame(table(Breweries$State))
names(State_Counts) <- c("State", "Breweries")
State_Counts$State <- trimws(State_Counts$State)
