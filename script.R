library(tidyverse) #data maniplulation, visualization, etc
library(caret) #model creation
library(randomForest) #model creation

train_dat <- read.csv("dat/train.csv")
test_dat <- read.csv("dat/test.csv")

#Taking a look at the data
str(train_dat)

train_dat$Name[sample(1:nrow(train_dat), 100)] %>%
  str_match(., ", (.*)\\.") %>% .[,2]

