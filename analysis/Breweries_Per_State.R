# Code to read Breweries csv from data directory
Breweries <- read.csv("./data/Breweries.csv", header = TRUE)
# Use table function to get unique count of breweries per state
State_Counts <- table(Breweries$State)
