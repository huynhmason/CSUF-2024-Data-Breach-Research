library(tidyverse)
data_breaches_2019 <- read.csv(
  "2019 Data Breaches - Breaches (1).csv", 
  sep = ",", 
  header = TRUE
  )
View(data_breaches_2019)
data_breaches_2019 |> select(Country) |> unique()
data_breach_usa <- data_breaches_2019 |> filter(Country == 'United States of America')
