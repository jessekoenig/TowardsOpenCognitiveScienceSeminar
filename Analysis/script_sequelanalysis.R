#use tidyverse library
library(tidyverse)

#get data from github
movie_data <- read_csv(url("https://raw.githubusercontent.com/jessekoenig/TowardsOpenCognitiveScienceSeminar/master/Data/movie_data.csv"))
pair_data <- read_csv(url("https://raw.githubusercontent.com/jessekoenig/TowardsOpenCognitiveScienceSeminar/master/Data/pair_data.csv"))

full_data <- full_join(movie_data,pair_data)


#function to get differences, not working yet
map(full_data, function(x){
  orig_rating <- filter(full_data,movie_id == .x)$rating
  seq_rating <- filter(full_data,movie_id == sequel_id)
  rating_diff <- orig_rating - seq_rating
}
  return(mean(rating_diff))
)

