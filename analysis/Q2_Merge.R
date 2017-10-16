# Read beers and breweries data files from data folder
Beers <- read.csv("./data/Beers.csv", header=TRUE)
Breweries <- read.csv("./data/Breweries.csv", header=TRUE)
# Merge two files by brewery ID, includes all records from beer datafile
# in case there are any missing breweries
All_Data <- merge(Beers, Breweries, by.x = "Brewery_id", by.y = "Brew_ID", all.x=TRUE)
# Export copy of most recent merged data into data directory
write.csv(All_Data, "./data/Merged_Data.csv", row.names = FALSE)
