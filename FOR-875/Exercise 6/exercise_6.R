
# Load Data ---------------------------------------------------------------
gapminder <- read.delim("http://blue.for.msu.edu/FOR875/data/gapminder.tsv", header = TRUE)
str(gapminder)

# Load ggplot ---------------------------------------------------------------
library(ggplot2)

# Example Plot---------------------------------------------------------------
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()


# Example Plot 2 ----------------------------------------------------------
p <- ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + scale_x_log10() + 
  labs(x = "per capita GDP (log10 scaled)", y = "life expectancy")
p + geom_point()



# TODO Plot 1 ----------------------------------------------------------
p + geom_point(size=2, aes(color=continent)) + labs(title="TODO Plot 1")


# TODO Plot 2 ----------------------------------------------------------
p + geom_point(size=2, aes(color=continent))+ stat_smooth(method = lm, se=FALSE) + labs(title="TODO Plot 2")


# TODO Plot 3 ----------------------------------------------------------
p + geom_point(size=2, aes(color=continent))+ stat_smooth(method = lm, se=FALSE, size = 2, color='green')+ labs(title="TODO Plot 3")


# TODO Plot 4 ----------------------------------------------------------
p + geom_point(size=2, aes(color=continent))+ stat_smooth(method = lm, se=FALSE, size = 2, aes(color=continent))+ labs(title="TODO Plot 4")


# TODO Plot 5 ----------------------------------------------------------
p + geom_point(size=2, aes(color=continent))+ stat_smooth(method = loess, se=FALSE, size = 2, aes(color=continent))+ labs(title="TODO Plot 4")


# TODO Plot 6 ----------------------------------------------------------
rwandaData <- subset(gapminder, country == "Rwanda")
rwandaPlot <- ggplot(data= rwandaData, aes(x = year, y = lifeExp))+ geom_line() + labs( y= 'Life Expectancy in Rwanda', x = 'Time in Years', title='Life Expectancy vs Years in Rwanda')
rwandaPlot


# TODO Plot 7 -------------------------------------------------------------
rwandaPlot + geom_point()


# TODO Plot 8 -------------------------------------------------------------
fiveCountriesData <- subset(gapminder, country %in% c('China', 'Finland', 'Germany', 'Norway', 'United States'))
fiveCountriesData

ggplot(data= fiveCountriesData, aes(x = year, y = lifeExp, color=country))+ geom_line() + labs( y= 'Life Expectancy', x = 'Time in Years', title='Life Expectancy vs Years')+ geom_point()



