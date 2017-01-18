#Notes from software carpentry workshop
#Date January 17-18,2017
#Author Nadine Kotlarz
#Purpose this file runs an analysison the gapminder data

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
#Read in data file
gapminder <- read.csv("gapminder-FiveYearData.csv")
head(gapminder)
tail(gapminder)
colnames(gapminder)
#create plot with year vs life expectancy
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=continent)) + geom_point() + facet_grid(.~continent) #shows a panel for each continent (can do this for each mycobacterium culture)

#save plot, defaults to save the last plot made
ggsave(filename="year_vs_lifexp_percont.png", width = 5, height = 4, units= "in")

