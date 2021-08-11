library(tidyverse)
library(palmerpenguins)

penguin_summary <- penguins %>% group_by(species) %>% summarize(mean_bill_depth = mean(bill_depth_mm, na.rm = TRUE))

penguin_summary

penguin_subset <- penguins %>%  filter(island == "Torgersen") %>% 
  select(species, flipper_length_mm, year)


## Now, a for loops intro practice

animal <- c("cat", "dog", "dog", "cat", "zebra", "elephant")


for(i in seq_along(animal)) {
  if (animal[i] == "dog") {
    print("I love dogs")
  }
  else {
    print("this is a different animal")
  }
}


species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")
age_human <- c(3, 8, 4, 6, 12, 18)
animal_ages <- vector(mode = "numeric", length = length(species))

for (i in seq_along(species)) {
  if (species[i] == "dog") {
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i] * 0.88
  } else if (species[i] == "goat") {
    animal_age <- age_human[i] * 4.7
  }
  animal_ages[i] <- animal_age
}

animal_ages




# calculate the mean value of each column in a data frame

mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for (i in 1:ncol(mtcars)) {
  mean_val <- mean(mtcars[[i]], na.rm = TRUE) 
  mean_mtcars[i] <- mean_val
  }

mean_mtcars




