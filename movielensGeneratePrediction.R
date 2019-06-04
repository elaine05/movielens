library(tidyverse)
# For regression
dflin <- read.csv('regPred.csv')
RMSE(dflin$pred,dflin$act)

dflin %>% head(50)


# for SGD
scores_real <- read.table("validset.txt", header = FALSE, sep = " ")$V3
scores_pred <- scan('sgPred')

rmseVal <- RMSE(scores_real,scores_pred)
rmseVal
 
dfsg <- cbind(scores_pred, scores_real) %>% as_tibble() 
colnames(dfsg) <- c('pred', 'act')
dfsg %>% head(50)