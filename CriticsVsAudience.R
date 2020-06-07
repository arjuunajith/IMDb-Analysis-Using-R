#Reading the Data
movies  <- read.csv("Dataset01.csv")
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)

#Converting year from numerical to factor
factor(movies$Year)
movies$Year <- factor(movies$Year)

summary(movies)

#Aesthetics
library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        colour=Genre, size=BudgetMillions)) + 
  geom_point()

#Plotting with Layers

p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             colour=Genre))

p + geom_point()

p + geom_line() + geom_point()

#Histograms and Density Plots
s <- ggplot(data=movies, aes(x=BudgetMillions))

s + geom_histogram(binwidth=10, aes(fill=Genre))
                   
s + geom_density(aes(fill=Genre), position="stack")

#Facets

s + geom_histogram(binwidth=10, aes(fill=Genre)) + facet_grid(Genre~., scales = "free") 

#Analyzing trends
p + geom_point() + geom_smooth(fill=NA)
p + geom_boxplot(size=1.2) 

p + geom_point() + geom_smooth() + facet_grid(Genre~Year) + coord_cartesian(ylim=c(0,100))


