# Creating a new column to categorize ratings higher then 7 or not
library(tidyverse)

df <- df %>% 
  mutate(rating_new = ifelse(rating <= 7, 0,  1))

#remove NA values
df<-na.omit(df)

#percentage of each genre and rating group
library(janitor)
df.rating_new <- df %>%
  select(genre, rating_new)
df %>% 
  tabyl(rating_new, genre) %>% 
  adorn_percentages() %>% 
  adorn_pct_formatting() %>% 
  adorn_ns() # To show original counts

#visualize the distribution
ggplot(df, aes(x= genre,  y = ..prop.., group=rating_new, fill=rating_new)) + 
  geom_bar(position="dodge", stat="count") +
  labs(y = "Proportion")

#logistic regression model 
model <- glm(rating_new ~ length + budget + votes+genre , data = df, family = binomial(link = "logit"))
summary(model)
model1 <- glm(rating_new ~ length + budget +genre , data = df, family = binomial(link = "logit"))
summary(model1)
#the difference between include votes and unclude is very small

library(stats)
library(jtools)
#plot the coefficients of a logistic regression model
plot_model(model1, show.values = TRUE, transform = NULL,
           title = "Log-Odds", show.p = FALSE)

model2 <- glm(rating_new ~ genre , data = df, family = binomial(link = "logit"))
summary(model2)
plot_model(model2,show.values = TRUE, transform = NULL,show.p = FALSE)
#prediction
plot_model(model,type="pred",terms=c("length","budget", "genre"))

#qq plot
par(mfrow=c(2,2))
plot(model)