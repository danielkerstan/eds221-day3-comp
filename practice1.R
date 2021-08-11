# Required packages

library(tidyverse)


# Practicing conditionals and loops ----

# Refresh our memory on boolean operators
pinyon_pine <- 14

lodgepole_pine <- 46

pinyon_pine == 10

pinyon_pine == lodgepole_pine

pinyon_pine > lodgepole_pine

pinyon_pine < lodgepole_pine

pinyon_pine != 25

pinyon_pine < lodgepole_pine | pinyon_pine> lodgepole_pine

# create basic if statements ----

burrito <- 2.4

if (burrito > 2) {
  print("I love burritos")
}

# gray whale, blue whale, whale ----

sbc_observations <- c("blue whale", "gray whale", "whale", "gray wale", "dolphin", "sea lion","blue whale")

str_detect(sbc_observations, pattern = "whale")

# An example of str_detect in a conditional statement

phrase <- "I really love data"

if (phrase == str_detect(phrase, "data") & phrase != str_detect(phrase, "not")) {
  print("Cool me too.")
}

# If-else statements ----

pika <- 45

if (pika > 60) {
  print("Large pika")
} else {
  print("small pika")
}



# Create a string food <- "I love enchiladas!" write an if-else statement that prints "yay burritos" if the string "burritos" is detected in 'food', or prints "What about burritos?" otherwise

phrase <- "I love burritos!"

if (str_detect(phrase, pattern = "burritos")) {
  print("Yay, burritos!")
} else {print("What about burritos?")}

# Create a new stored object called marmot with a value of 2.8

marmot <- 2.8

if(marmot < 0.5) {print("small marmot")
} else if(marmot >= 0.5 & marmot < 3) {print("medium marmot")
} else if(marmot >= 3) {print("large marmot")}


species <- "lion"

switch(species, 
      "cat" = print("meow"),
      "lion" = print("roar"),
      "owl" = print("screech"),
      "fox" = print("obnoxious"),
      print("something else"))


bats <- c(0, -1, 2, 1000, 500, 6)

tigers <- c(29, 34, 82)
lions <- c(2, 18,6)

big_cats <- vector(mode = "numeric", length = length(tigers))

for(i in seq_along(tigers)) {
  large_cats <- tigers[i] + lions[i]
  big_cats[i] <- large_cats
}

big_cats


monsters <- c("vampire", "ghost", "alien")

scary <- vector(mode = "character", length = length(monsters))

for (i in seq_along(monsters)) {if (monsters[i] == "ghost") {scary[i] <- "scary"} else {scary[i] <- "fine"}}
scary

monsters_data <- data.frame(monsters, scary)

scary_data <- data_frame(monsters_data$scary)

scary_data

class(scary_data)

class(monsters_data)





