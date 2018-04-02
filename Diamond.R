# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

library(tidyverse)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(caret)
library(randomForest)
library(e1071)
Diamond_Train <- read.csv("diamonds.csv")
Diamonds_Test <- read.csv("new-diamonds.csv")
str(Diamond_Train)

numFolds <- trainControl(method = "cv", num = 10)
cpGrid <- expand.grid(cp = seq(0.01,0.5,0.01))
train(price ~ carat + cut + clarity, data = Diamond_Train, method = "rpart",trControl = numFolds, tuneGrid = cpGrid)
DiamondsTree <- randomForest(price ~ carat + cut + clarity, data = Diamond_Train)
predictTr <- predict(DiamondsTree, newdata = Diamond_Train)
predictTr
summary(DiamondsTree)
Rsquare <- 1-((sum((predictTr - Diamond_Train$price)^2))/(sum((predictTr - mean(Diamond_Train$price))^2)))
Rsquare

predictTest <- predict(DiamondsTree, newdata = Diamonds_Test)
summary(predictTest)
0.7*(sum(predictTest))
