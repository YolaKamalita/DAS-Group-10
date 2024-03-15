install.packages("ggplot2")
library(ggplot2)
data <- read.csv("dataset10.csv")
data <- na.omit(data)
summary(data)
ggplot(data, aes(x = year, y = rating)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Rating vs Year", x = "Year", y = "Rating")
ggplot(data, aes(x = length, y = rating)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Rating vs Length", x = "Length", y = "Rating")
ggplot(data, aes(x = budget, y = rating)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Rating vs Budget", x = "Budget", y = "Rating")
ggplot(data, aes(x = votes, y = rating)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Rating vs Votes", x = "Votes", y = "Rating")

