#This dataset comes from https://data.world/mosimi20/data-breaches-in-2019
#The data dictionary for this dataset is available at 
#https://data.world/mosimi20/data-breaches-in-2019/workspace/data-dictionary
library(tidyverse)

#read in csv
data_breaches_2019 <- read.csv(
  "2019 Data Breaches - Breaches (1).csv", 
  sep = ",", 
  header = TRUE
  )
View(data_breaches_2019)

#What countries are in this dataset?
country_unique <- data_breaches_2019 |> select(Country) |> unique()

#Only looking at data breaches in the USA
data_breach_usa <- data_breaches_2019 |> 
  filter(Country == 'United States of America')

View(data_breach_usa)
#What are the different sector that were affected?
sector_unique_usa <- data_breach_usa |> 
  select(Sector) |> unique()

View(sector_unique_usa)

count(sector_unique_usa)

#bar plot that highlights the top 3 most affected sectors
plot_sector <- ggplot(data_breach_usa, aes(y = Sector, fill = Sector)) + 
  geom_bar() + 
  scale_fill_brewer(palette = "Set1") 
plot_sector + scale_fill_manual(values = c("Web" = "blue", "Tech" = "blue", "Healthcare" = "blue"))

