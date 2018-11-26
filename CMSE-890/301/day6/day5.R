library("nycflights13")
require(tidyverse)
data("flights")

str(flights)


# 1. Find all the flights that flew to Houston (IAH or HOU)
iah_hou <-  filter(flights, dest %in% c("IAH", "HOU"))
iah_hou


# 2. Find all the flights that were operated by United, American, or Delta.
dl_ua_aa <-  filter(flights, carrier %in% c("DL", "UA", "AA"))
dl_ua_aa


# 3. Sort flights to find the most delayed flights.
as_tibble(arrange(flights, dep_delay)) %>% View


# 4. Sort flights to find the fastest flights.
flights$speed = flights$distance/flights$hour
#as_tibble(arrange(flights, speed)) %>% View
as_tibble(flights %>% arrange(desc(speed))) %>% View


# 5. Subset the data so you have just the year, month, day, hour, and minute columns
as_tibble(select(flights, c(year, month, hour, minute))) %>% View()


# 6. Add a new column where you’ve converted the hour column to minutes and added them to the minute column
flights$total_minutes <- (flights$hour *60) + flights$minute
as_tibble(head(flights)) %>% View()


summarize (group_by(flights, carrier), delay=mean(dep_delay, na.rm = TRUE))# 7. Find the average departure delay time groups by carrier

