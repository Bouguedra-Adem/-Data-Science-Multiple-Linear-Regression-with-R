
#Multiple linear reggresion
library(caTools)
library(ggplot2)
data <- read.csv('Multiple Linear regression/50_Startups.csv')
#Encoding categorical data

data$State=factor(data$State,levels = c('New York','California','Florida')
                  ,labels = c(1,2,3))
#spliting data to training set and testSet
split=sample.split(data$Profit,SplitRatio =2/3)
training_set=subset(x =data,split==TRUE )
test_set=subset(x =data,split==FALSE )
#building the model with backword elimination

regressorMultiple=lm(formula =Profit ~ .,data =training_set)
summary(regressorMultiple)
regressorMultiple=lm(formula =Profit ~ R.D.Spend +Marketing.Spend+Administration,data =training_set)
summary(regressorMultiple)
regressorMultiple=lm(formula =Profit ~ R.D.Spend +Marketing.Spend,data =training_set)
summary(regressorMultiple)
regressorMultiple=lm(formula =Profit ~ R.D.Spend ,data =training_set)
summary(regressorMultiple)
ypred=predict(regressorMultiple,newdata =test_set )
ypred
