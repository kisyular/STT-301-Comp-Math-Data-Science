# Practise in Loading Datasets, Plotting and Using GGPLOT2
# Author: Rellika
# Created on 17th Sep 2018


# 1. Load the built-in dataset LakeHuron.  Make a simple plot showing x = year and y = lake depth. 
data("LakeHuron")
head(LakeHuron)

plot(LakeHuron, type="l", main="Year and Lake Depth", xlab="Year", ylab="Lake Depth", ylim=c(575, 582))

# 2. Load the built-in dataset chickwts. Make a barplot of the average weight per type of feed. 

data("chickwts")
head(chickwts)
unique(chickwts$feed)
horsebean <- mean(chickwts[chickwts$feed == "horsebean",]$weight)
linseed <- mean(chickwts[chickwts$feed == "linseed",]$weight)
soybean <- mean(chickwts[chickwts$feed == "soybean",]$weight)
meatmeal <- mean(chickwts[chickwts$feed == "meatmeal",]$weight)
sunflower <- mean(chickwts[chickwts$feed == "sunflower",]$weight)
casein <- mean(chickwts[chickwts$feed == "casein",]$weight)

average_feed = c( horsebean, linseed, soybean, sunflower, meatmeal,  casein)

barplot(average_feed, main = "Average Weight Per Feed", names.arg = c( "horsebean", "linseed", "soybean", "sunflower", "meatmeal",  "casein"), las=2, ylab = "Weight", xlab = "Feed")
# Sunflower generates the largest birds


# 3. sing the chickwts dataset, make a box-and-whiskers plot with the data split by the different feed types.

boxplot(weight ~ feed, data = chickwts, col="cyan", las=2)
# The casein feed looks like it would be the most reliable for generating large birds

# 4. Load the npk dataset.  Make a ggplot with x = block and y=yield. 

data("npk")
head(npk)

scatter_npk <- ggplot(data=npk) +
  geom_point(mapping =aes(x=block, y=yield, shape=P, color=K, size=N))
scatter_npk
# The most effective chemical is N
