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
                             colour=Genre, size=BudgetMillions))

p + geom_point()

p + geom_line() + geom_point()


