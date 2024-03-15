#model selection
suppressWarnings(export_summs(model_2, model_3,
                              error_format = "[{conf.low}, {conf.high}]"))
#After doing some investigations, the model without year (model 1) is the one that can 
#give the lowest AIC. Removing votes (model 3) does not make the AIC becoming lower and BIC 
#is also only resulted in a slightly lower. Year and votes will not significantly reduce AIC 
#and improve BIC, meanwhile have low correlation with rating, so they are removed. 
#Hence, model 3 is selected to be the final model.

##Fitting the model_4(rating > 7) and model_5(rating<=7)
df_higher <- df[df$rating_higher_than_7 == 1, ]
df_lower <- df[df$rating_higher_than_7 == 0, ]
library(lmtest)
model_4 <- lm(rating ~ length + budget + genre ,
              data = df_lower
)

model_5 <- lm(rating ~ length + budget +  genre, 
              data = df_higher)
summary(model_4)
summary(model_5)
#In this part, the model4(rating \> 7) and model5(rating \<=7) are fitted separately 
#in order to analyze the effects of variables separately on high-scoring and low-scoring movies.
#In model4, when rating is higher than 7, budget has the biggest impact on score.
#Meanwhile, budget and length are positive so when they gets higher, the rating also get higher. 
#As for model5, the rating gets higher as the budget gets higher, but length is opposite.