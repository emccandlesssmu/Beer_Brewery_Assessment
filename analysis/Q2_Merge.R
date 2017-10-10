Beers <- read.csv("./data/Beers.csv", header=TRUE)
Breweries <- read.csv("./data/Breweries.csv", header=TRUE)
All_Data <- merge(Beers, Breweries, by.x = "Brewery_id", by.y = "Brew_ID", all.x=TRUE)
write.csv(All_Data, "./data/Merged_Data.csv", row.names = FALSE)
