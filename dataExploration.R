# A script to explore the data
library(tidyr)
library(dplyr)
library(lubridate)



# Reading in the data.
injuryRep <- read.csv("Data/InjuryRecord.csv")
playersTrack <- read.csv("https://www.kaggle.com/c/nfl-playing-surface-analytics/data?select=InjuryRecord.csv")
playList <- read.csv("Data/PlayList.csv")


# Creating simple code books for the different dataframes:

# Creating a player code book
players <- playList %>% 
    group_by(PlayerKey) %>% 
    summarize(PlayerKey = PlayerKey, Position = Position) %>% 
    distinct() %>% 
    filter(Position != "Missing Data") 






